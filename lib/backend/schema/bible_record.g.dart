// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bible_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BibleRecord> _$bibleRecordSerializer = new _$BibleRecordSerializer();

class _$BibleRecordSerializer implements StructuredSerializer<BibleRecord> {
  @override
  final Iterable<Type> types = const [BibleRecord, _$BibleRecord];
  @override
  final String wireName = 'BibleRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BibleRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.text;
    if (value != null) {
      result
        ..add('text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  BibleRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BibleRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$BibleRecord extends BibleRecord {
  @override
  final String? text;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BibleRecord([void Function(BibleRecordBuilder)? updates]) =>
      (new BibleRecordBuilder()..update(updates))._build();

  _$BibleRecord._({this.text, this.ffRef}) : super._();

  @override
  BibleRecord rebuild(void Function(BibleRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BibleRecordBuilder toBuilder() => new BibleRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BibleRecord && text == other.text && ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, text.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BibleRecord')
          ..add('text', text)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BibleRecordBuilder implements Builder<BibleRecord, BibleRecordBuilder> {
  _$BibleRecord? _$v;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BibleRecordBuilder() {
    BibleRecord._initializeBuilder(this);
  }

  BibleRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BibleRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BibleRecord;
  }

  @override
  void update(void Function(BibleRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BibleRecord build() => _build();

  _$BibleRecord _build() {
    final _$result = _$v ?? new _$BibleRecord._(text: text, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
