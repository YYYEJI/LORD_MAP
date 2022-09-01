import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'col_p_t_today_record.g.dart';

abstract class ColPTTodayRecord
    implements Built<ColPTTodayRecord, ColPTTodayRecordBuilder> {
  static Serializer<ColPTTodayRecord> get serializer =>
      _$colPTTodayRecordSerializer;

  @BuiltValueField(wireName: 'col_pt')
  String? get colPt;

  BuiltList<String>? get praytitle;

  BuiltList<DocumentReference>? get testtest;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ColPTTodayRecordBuilder builder) => builder
    ..colPt = ''
    ..praytitle = ListBuilder()
    ..testtest = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('col_PT_Today');

  static Stream<ColPTTodayRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ColPTTodayRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ColPTTodayRecord._();
  factory ColPTTodayRecord([void Function(ColPTTodayRecordBuilder) updates]) =
      _$ColPTTodayRecord;

  static ColPTTodayRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createColPTTodayRecordData({
  String? colPt,
}) {
  final firestoreData = serializers.toFirestore(
    ColPTTodayRecord.serializer,
    ColPTTodayRecord(
      (c) => c
        ..colPt = colPt
        ..praytitle = null
        ..testtest = null,
    ),
  );

  return firestoreData;
}
