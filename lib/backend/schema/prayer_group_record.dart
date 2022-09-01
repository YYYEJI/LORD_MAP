import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'prayer_group_record.g.dart';

abstract class PrayerGroupRecord
    implements Built<PrayerGroupRecord, PrayerGroupRecordBuilder> {
  static Serializer<PrayerGroupRecord> get serializer =>
      _$prayerGroupRecordSerializer;

  @BuiltValueField(wireName: 'group_name')
  String? get groupName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PrayerGroupRecordBuilder builder) =>
      builder..groupName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('prayer_group');

  static Stream<PrayerGroupRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PrayerGroupRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PrayerGroupRecord._();
  factory PrayerGroupRecord([void Function(PrayerGroupRecordBuilder) updates]) =
      _$PrayerGroupRecord;

  static PrayerGroupRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPrayerGroupRecordData({
  String? groupName,
}) {
  final firestoreData = serializers.toFirestore(
    PrayerGroupRecord.serializer,
    PrayerGroupRecord(
      (p) => p..groupName = groupName,
    ),
  );

  return firestoreData;
}
