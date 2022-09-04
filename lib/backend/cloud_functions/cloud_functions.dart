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


class RandGetter {

  Random rand = Random();


  //데이터 삽입 기본예제
  void createdata(String code, String txt) {
    final usercol = FirebaseFirestore.instance.collection("Bible").doc("$code");
    usercol.set({
      "text": "$txt",
    });
  }

  //데이터 삽입 - 기도제목용 커스텀, 1씩 증가하는 i를 id로 갖는 기도제목 데이터 생성.
  void createPrayerTitleData(String txt, int I) {
    final usercol = FirebaseFirestore.instance.collection("col_PT_Today").doc(
        I.toString());
    usercol.set({
      "col_pt": "$txt",
    });
  }

  //데이터 읽기 기본예제
  void readdata(String code) {
    final usercol = FirebaseFirestore.instance.collection("Bible").doc("$code");
    usercol.get().then((value) =>
    {
      print(value.data())
    });
  }


  //랜덤 데이터 반환 - 말씀편
  Future<String> getRandomBible() async {
    //일단 성경은 요걸로만 해보께요...
    int ranNum = rand.nextInt(20);
    if(ranNum >= 10) ranNum += 10;
    final usercol = FirebaseFirestore.instance.collection("Bible").doc(
        ranNum.toString());

    final foo = await usercol.get();
    final randVar = foo.data()!['text'];

    return randVar.toString();
  }

  // Create a new user with a first and last name
  final user = <String, dynamic>{
    "first": "Ada",
    "last": "Lovelace",
    "born": 1815
  };


  //랜덤 데이터 반환 - 기도제목편
  Future<String> getRandomPrayTitle() async {
    int varLen = await getDummyVar();
    int ranNum = rand.nextInt(varLen);
    final usercol = FirebaseFirestore.instance.collection("col_PT_Today").doc(
        ranNum.toString());

    //본인거 걸러내는거 어케하징 필드를 하나 추가해서 유저아이디같은거 넣어주면 그걸로 필터링할 수 있을 것 같은딩
    //final foo = await usercol.collection("col_PT_Today").where("UID", isEqualTo: false).get();
    final foo = await usercol.get();
    final prayerToday = foo.data()!['col_pt'];


    return prayerToday;
  }


  //i값 불러와서 +1한거 반환하고 업데이트까지 갈기는 메서드
  Future<int> updateDummy() async {
    //불러오기
    final usercol = FirebaseFirestore.instance.collection("Bible").doc("dummy");
    final foo = await usercol.get();
    int i = foo.data()!['i'] + 1;
    //+1하여 업데이트
    usercol.update({
      "i": i,
    });
    //반환
    return i;
  }

  //현재 i의 필드값 읽어오기
  Future<int> getDummyVar() async {
    //불러오기
    final usercol = FirebaseFirestore.instance.collection("Bible").doc("dummy");
    final foo = await usercol.get();
    int i = foo.data()!['i'] + 1;
    //반환
    return i;
  }

  //유저의 prayerTitl_got을 업뎃해주는 칭구
  //근데!! 유저 아이디를 어케알지.....???
  void updatePTitleGot(String pTitle) {
    final usercol = FirebaseFirestore.instance.collection("Users").doc(
        "uH4SLKSg1VfVdpJGOJIcDhVYo1J3");
    usercol.update({
      "prayTitl_got": "$pTitle",
    });
  }


  //데이터 수정 기본예제
  void updatedata(String code, String status) {
    final usercol = FirebaseFirestore.instance.collection("players").doc(
        "$code");
    usercol.update({
      "status": "$status",
    });
  }


  //데이터 삭제 기본예제
  void deletedata(String code) {
    final usercol = FirebaseFirestore.instance.collection("players").doc(
        "$code");
    usercol.delete();
  }


}

