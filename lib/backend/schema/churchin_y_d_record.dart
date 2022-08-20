import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'churchin_y_d_record.g.dart';

abstract class ChurchinYDRecord
    implements Built<ChurchinYDRecord, ChurchinYDRecordBuilder> {
  static Serializer<ChurchinYDRecord> get serializer =>
      _$churchinYDRecordSerializer;

  String? get name;

  LatLng? get location;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ChurchinYDRecordBuilder builder) =>
      builder..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ChurchinYD');

  static Stream<ChurchinYDRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ChurchinYDRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ChurchinYDRecord._();
  factory ChurchinYDRecord([void Function(ChurchinYDRecordBuilder) updates]) =
      _$ChurchinYDRecord;

  static ChurchinYDRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createChurchinYDRecordData({
  String? name,
  LatLng? location,
}) {
  final firestoreData = serializers.toFirestore(
    ChurchinYDRecord.serializer,
    ChurchinYDRecord(
      (c) => c
        ..name = name
        ..location = location,
    ),
  );

  return firestoreData;
}
