import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'userin_p_g_record.g.dart';

abstract class UserinPGRecord
    implements Built<UserinPGRecord, UserinPGRecordBuilder> {
  static Serializer<UserinPGRecord> get serializer =>
      _$userinPGRecordSerializer;

  String? get users;

  String? get prayerTime;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(UserinPGRecordBuilder builder) => builder
    ..users = ''
    ..prayerTime = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('userinPG')
          : FirebaseFirestore.instance.collectionGroup('userinPG');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('userinPG').doc();

  static Stream<UserinPGRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UserinPGRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UserinPGRecord._();
  factory UserinPGRecord([void Function(UserinPGRecordBuilder) updates]) =
      _$UserinPGRecord;

  static UserinPGRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUserinPGRecordData({
  String? users,
  String? prayerTime,
}) {
  final firestoreData = serializers.toFirestore(
    UserinPGRecord.serializer,
    UserinPGRecord(
      (u) => u
        ..users = users
        ..prayerTime = prayerTime,
    ),
  );

  return firestoreData;
}
