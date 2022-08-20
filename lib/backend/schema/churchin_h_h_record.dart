import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'churchin_h_h_record.g.dart';

abstract class ChurchinHHRecord
    implements Built<ChurchinHHRecord, ChurchinHHRecordBuilder> {
  static Serializer<ChurchinHHRecord> get serializer =>
      _$churchinHHRecordSerializer;

  String? get name;

  LatLng? get location;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ChurchinHHRecordBuilder builder) =>
      builder..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ChurchinHH');

  static Stream<ChurchinHHRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ChurchinHHRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ChurchinHHRecord._();
  factory ChurchinHHRecord([void Function(ChurchinHHRecordBuilder) updates]) =
      _$ChurchinHHRecord;

  static ChurchinHHRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createChurchinHHRecordData({
  String? name,
  LatLng? location,
}) {
  final firestoreData = serializers.toFirestore(
    ChurchinHHRecord.serializer,
    ChurchinHHRecord(
      (c) => c
        ..name = name
        ..location = location,
    ),
  );

  return firestoreData;
}
