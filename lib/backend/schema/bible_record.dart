import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'bible_record.g.dart';

abstract class BibleRecord implements Built<BibleRecord, BibleRecordBuilder> {
  static Serializer<BibleRecord> get serializer => _$bibleRecordSerializer;

  String? get text;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BibleRecordBuilder builder) =>
      builder..text = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Bible');

  static Stream<BibleRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BibleRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BibleRecord._();
  factory BibleRecord([void Function(BibleRecordBuilder) updates]) =
      _$BibleRecord;

  static BibleRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBibleRecordData({
  String? text,
}) {
  final firestoreData = serializers.toFirestore(
    BibleRecord.serializer,
    BibleRecord(
      (b) => b..text = text,
    ),
  );

  return firestoreData;
}
