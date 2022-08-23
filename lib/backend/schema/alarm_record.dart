import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'alarm_record.g.dart';

abstract class AlarmRecord implements Built<AlarmRecord, AlarmRecordBuilder> {
  static Serializer<AlarmRecord> get serializer => _$alarmRecordSerializer;

  int? get hour;

  int? get min;

  String? get tag;

  bool? get isOn;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AlarmRecordBuilder builder) => builder
    ..hour = 0
    ..min = 0
    ..tag = ''
    ..isOn = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Alarm');

  static Stream<AlarmRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AlarmRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AlarmRecord._();
  factory AlarmRecord([void Function(AlarmRecordBuilder) updates]) =
      _$AlarmRecord;

  static AlarmRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAlarmRecordData({
  int? hour,
  int? min,
  String? tag,
  bool? isOn,
}) {
  final firestoreData = serializers.toFirestore(
    AlarmRecord.serializer,
    AlarmRecord(
      (a) => a
        ..hour = hour
        ..min = min
        ..tag = tag
        ..isOn = isOn,
    ),
  );

  return firestoreData;
}
