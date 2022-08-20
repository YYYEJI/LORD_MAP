import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'church_record.g.dart';

abstract class ChurchRecord
    implements Built<ChurchRecord, ChurchRecordBuilder> {
  static Serializer<ChurchRecord> get serializer => _$churchRecordSerializer;

  String? get name;

  LatLng? get church;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ChurchRecordBuilder builder) =>
      builder..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('church');

  static Stream<ChurchRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ChurchRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ChurchRecord._();
  factory ChurchRecord([void Function(ChurchRecordBuilder) updates]) =
      _$ChurchRecord;

  static ChurchRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createChurchRecordData({
  String? name,
  LatLng? church,
}) {
  final firestoreData = serializers.toFirestore(
    ChurchRecord.serializer,
    ChurchRecord(
      (c) => c
        ..name = name
        ..church = church,
    ),
  );

  return firestoreData;
}
