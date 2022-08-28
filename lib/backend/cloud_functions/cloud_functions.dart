import 'package:cloud_functions/cloud_functions.dart';
import 'package:lord_map/backend/backend.dart';
import 'dart:math';

Future<Map<String, dynamic>> makeCloudCall(
    String callName, Map<String, dynamic> input) async {
  try {
    final response = await FirebaseFunctions.instance
        .httpsCallable(callName, options: HttpsCallableOptions())
        .call(input);
    return response.data is Map
        ? Map<String, dynamic>.from(response.data as Map)
        : {};
  } on FirebaseFunctionsException catch (e) {
    if (e is FirebaseFunctionsException) {
      print(
        'Cloud call error!\n'
        'Code: ${e.code}\n'
        'Details: ${e.details}\n'
        'Message: ${e.message}',
      );
    } else {
      print('Cloud call error: $e');
    }
    return {};
  }
}


class RandGetter{
  Random rand = Random();



  //데이터 삽입
  void createdata(String code, String txt){
    final usercol=FirebaseFirestore.instance.collection("Bible").doc("$code");
    usercol.set({
      "text" : "$txt",
    });
  }

  //데이터 읽기
  void readdata(String code){
    final usercol=FirebaseFirestore.instance.collection("Bible").doc("$code");
    usercol.get().then((value) => {
      print(value.data())
    });
  }

  //랜덤 데이터 반환
  String getRandom(){
    int ranNum = rand.nextInt(10);
    final usercol=FirebaseFirestore.instance.collection("Bible").doc(ranNum.toString());
    String randVar = "NULL";
    List <String> a;
    usercol.get().then((value) => {
      print(value.data())
      //a = value.data().values;
      //randVar = value.data()
    });
    return randVar;
  }

  //데이터 수정
  void updatedata(String code, String status){
    final usercol=FirebaseFirestore.instance.collection("players").doc("$code");
    usercol.update({
      "status" :"$status",
    });
  }

  //데이터 삭제
  void deletedata(String code){
    final usercol=FirebaseFirestore.instance.collection("players").doc("$code");
    usercol.delete();
  }









}



class RandomGetter{

  String? whatWeWant;
  DocumentReference? reference;
  Random rand = Random();

  //특정 필드 데려오는 기능이길 희망함
  String fromJson(dynamic json, DocumentReference reference){
    return json['text'];
  }

  /*
  //스냅샷 자료형을 받아올 때..?특정 자료를 받아올 떄? 사용한다는 친구
  RandomGetter.fromSnapShot(DocumentSnapshot<Map<String, dynamic>> snapshot)
  : fromJson(snapshot.data(), snapshot.reference);

  //컬렉션 내 특정 조건을 만족하는 데이터를 가지고 올 때 사용한다고 함
  RandomGetter.fromQuerySnapshot(
      QueryDocumentSnapshot<Map<String, dynamic>> snapshot)
      :this.fromJson(snapshot.data(), snapshot.reference);
*/



  late CollectionReference<Map<String, dynamic>> _bibleReference;
  late QuerySnapshot<Map<String, dynamic>> bibleQuery;


  init() async {
    //컬렉션 인스턴트 생성
    _bibleReference = FirebaseFirestore.instance.collection("Bible");
    //쿼리스냅샷들 가져오기
    bibleQuery = await _bibleReference.get();
  }

  //생성..자..?
  RandomGetter(){
    init();
  }




  //CollectionReference<Map<String, dynamic>> _bibleReference =
  //   FirebaseFirestore.instance.collection("Bible");
  //QuerySnapshot<Map<String, dynamic>> bibleQuery =
  //    await _bibleReference.get();





  //랜덤한 하나 얻는 메서드(로 작동하기 희망)
  String getBibleToday(){

    List<String> bibles = [];

    for(var one in bibleQuery.docs){
      String text = fromJson(one.data(), one.reference);
      bibles.add(text);
    }

    return bibles[rand.nextInt(bibles.length)];

  }

//근데 이거 어케 실행시켜보지..?




}

