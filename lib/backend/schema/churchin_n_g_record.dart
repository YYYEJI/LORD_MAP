import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'churchin_n_g_record.g.dart';

abstract class ChurchinNGRecord
    implements Built<ChurchinNGRecord, ChurchinNGRecordBuilder> {
  static Serializer<ChurchinNGRecord> get serializer =>
      _$churchinNGRecordSerializer;

  String? get name;

  LatLng? get location;

  String? get address;

  @BuiltValueField(wireName: 'Phone')
  String? get phone;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ChurchinNGRecordBuilder builder) => builder
    ..name = ''
    ..address = ''
    ..phone = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ChurchinNG');

  static Stream<ChurchinNGRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ChurchinNGRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ChurchinNGRecord._();
  factory ChurchinNGRecord([void Function(ChurchinNGRecordBuilder) updates]) =
  _$ChurchinNGRecord;

  static ChurchinNGRecord getDocumentFromData(
      Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createChurchinNGRecordData({
  String? name,
  LatLng? location,
  String? address,
  String? phone,
}) {
  final firestoreData = serializers.toFirestore(
    ChurchinNGRecord.serializer,
    ChurchinNGRecord(
          (c) => c
        ..name = name
        ..location = location
        ..address = address
        ..phone = phone,
    ),
  );

  return firestoreData;
}
