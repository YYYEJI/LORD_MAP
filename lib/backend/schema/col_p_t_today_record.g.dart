// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'col_p_t_today_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ColPTTodayRecord> _$colPTTodayRecordSerializer =
    new _$ColPTTodayRecordSerializer();

class _$ColPTTodayRecordSerializer
    implements StructuredSerializer<ColPTTodayRecord> {
  @override
  final Iterable<Type> types = const [ColPTTodayRecord, _$ColPTTodayRecord];
  @override
  final String wireName = 'ColPTTodayRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ColPTTodayRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.colPt;
    if (value != null) {
      result
        ..add('col_pt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.praytitle;
    if (value != null) {
      result
        ..add('praytitle')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.testtest;
    if (value != null) {
      result
        ..add('testtest')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
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
  ColPTTodayRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ColPTTodayRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'col_pt':
          result.colPt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'praytitle':
          result.praytitle.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'testtest':
          result.testtest.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
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

class _$ColPTTodayRecord extends ColPTTodayRecord {
  @override
  final String? colPt;
  @override
  final BuiltList<String>? praytitle;
  @override
  final BuiltList<DocumentReference<Object?>>? testtest;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ColPTTodayRecord(
          [void Function(ColPTTodayRecordBuilder)? updates]) =>
      (new ColPTTodayRecordBuilder()..update(updates))._build();

  _$ColPTTodayRecord._({this.colPt, this.praytitle, this.testtest, this.ffRef})
      : super._();

  @override
  ColPTTodayRecord rebuild(void Function(ColPTTodayRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ColPTTodayRecordBuilder toBuilder() =>
      new ColPTTodayRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ColPTTodayRecord &&
        colPt == other.colPt &&
        praytitle == other.praytitle &&
        testtest == other.testtest &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, colPt.hashCode), praytitle.hashCode), testtest.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ColPTTodayRecord')
          ..add('colPt', colPt)
          ..add('praytitle', praytitle)
          ..add('testtest', testtest)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ColPTTodayRecordBuilder
    implements Builder<ColPTTodayRecord, ColPTTodayRecordBuilder> {
  _$ColPTTodayRecord? _$v;

  String? _colPt;
  String? get colPt => _$this._colPt;
  set colPt(String? colPt) => _$this._colPt = colPt;

  ListBuilder<String>? _praytitle;
  ListBuilder<String> get praytitle =>
      _$this._praytitle ??= new ListBuilder<String>();
  set praytitle(ListBuilder<String>? praytitle) =>
      _$this._praytitle = praytitle;

  ListBuilder<DocumentReference<Object?>>? _testtest;
  ListBuilder<DocumentReference<Object?>> get testtest =>
      _$this._testtest ??= new ListBuilder<DocumentReference<Object?>>();
  set testtest(ListBuilder<DocumentReference<Object?>>? testtest) =>
      _$this._testtest = testtest;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ColPTTodayRecordBuilder() {
    ColPTTodayRecord._initializeBuilder(this);
  }

  ColPTTodayRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _colPt = $v.colPt;
      _praytitle = $v.praytitle?.toBuilder();
      _testtest = $v.testtest?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ColPTTodayRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ColPTTodayRecord;
  }

  @override
  void update(void Function(ColPTTodayRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ColPTTodayRecord build() => _build();

  _$ColPTTodayRecord _build() {
    _$ColPTTodayRecord _$result;
    try {
      _$result = _$v ??
          new _$ColPTTodayRecord._(
              colPt: colPt,
              praytitle: _praytitle?.build(),
              testtest: _testtest?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'praytitle';
        _praytitle?.build();
        _$failedField = 'testtest';
        _testtest?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ColPTTodayRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
