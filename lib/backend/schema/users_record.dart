import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'prayTitle_today')
  String? get prayTitleToday;

  bool? get isCompletedToday;

  int? get prayTimeToday;

  int? get age;

  @BuiltValueField(wireName: 'get_bible')
  bool? get getBible;

  @BuiltValueField(wireName: 'prayTitle_got')
  String? get prayTitleGot;

  @BuiltValueField(wireName: 'Prayer_group')
  String? get prayerGroup;

  int? get prayerStack;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..prayTitleToday = ''
    ..isCompletedToday = false
    ..prayTimeToday = 0
    ..age = 0
    ..getBible = false
    ..prayTitleGot = ''
    ..prayerGroup = ''
    ..prayerStack = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? prayTitleToday,
  bool? isCompletedToday,
  int? prayTimeToday,
  int? age,
  bool? getBible,
  String? prayTitleGot,
  String? prayerGroup,
  int? prayerStack,
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..prayTitleToday = prayTitleToday
        ..isCompletedToday = isCompletedToday
        ..prayTimeToday = prayTimeToday
        ..age = age
        ..getBible = getBible
        ..prayTitleGot = prayTitleGot
        ..prayerGroup = prayerGroup
        ..prayerStack = prayerStack,
    ),
  );

  return firestoreData;
}
