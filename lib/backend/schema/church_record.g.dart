// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'church_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChurchRecord> _$churchRecordSerializer =
    new _$ChurchRecordSerializer();

class _$ChurchRecordSerializer implements StructuredSerializer<ChurchRecord> {
  @override
  final Iterable<Type> types = const [ChurchRecord, _$ChurchRecord];
  @override
  final String wireName = 'ChurchRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ChurchRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  ChurchRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChurchRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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

class _$ChurchRecord extends ChurchRecord {
  @override
  final BuiltList<String>? name;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ChurchRecord([void Function(ChurchRecordBuilder)? updates]) =>
      (new ChurchRecordBuilder()..update(updates))._build();

  _$ChurchRecord._({this.name, this.ffRef}) : super._();

  @override
  ChurchRecord rebuild(void Function(ChurchRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChurchRecordBuilder toBuilder() => new ChurchRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChurchRecord && name == other.name && ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChurchRecord')
          ..add('name', name)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ChurchRecordBuilder
    implements Builder<ChurchRecord, ChurchRecordBuilder> {
  _$ChurchRecord? _$v;

  ListBuilder<String>? _name;
  ListBuilder<String> get name => _$this._name ??= new ListBuilder<String>();
  set name(ListBuilder<String>? name) => _$this._name = name;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ChurchRecordBuilder() {
    ChurchRecord._initializeBuilder(this);
  }

  ChurchRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChurchRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChurchRecord;
  }

  @override
  void update(void Function(ChurchRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChurchRecord build() => _build();

  _$ChurchRecord _build() {
    _$ChurchRecord _$result;
    try {
      _$result =
          _$v ?? new _$ChurchRecord._(name: _name?.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'name';
        _name?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ChurchRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
