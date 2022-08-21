import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'churchin_b_g_record.g.dart';

abstract class ChurchinBGRecord
    implements Built<ChurchinBGRecord, ChurchinBGRecordBuilder> {
  static Serializer<ChurchinBGRecord> get serializer =>
      _$churchinBGRecordSerializer;

  String? get name;

  LatLng? get location;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ChurchinBGRecordBuilder builder) =>
      builder..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ChurchinBG');

  static Stream<ChurchinBGRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ChurchinBGRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ChurchinBGRecord._();
  factory ChurchinBGRecord([void Function(ChurchinBGRecordBuilder) updates]) =
      _$ChurchinBGRecord;

  static ChurchinBGRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createChurchinBGRecordData({
  String? name,
  LatLng? location,
}) {
  final firestoreData = serializers.toFirestore(
    ChurchinBGRecord.serializer,
    ChurchinBGRecord(
      (c) => c
        ..name = name
        ..location = location,
    ),
  );

  return firestoreData;
}
