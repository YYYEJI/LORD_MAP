// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prayer_group_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PrayerGroupRecord> _$prayerGroupRecordSerializer =
    new _$PrayerGroupRecordSerializer();

class _$PrayerGroupRecordSerializer
    implements StructuredSerializer<PrayerGroupRecord> {
  @override
  final Iterable<Type> types = const [PrayerGroupRecord, _$PrayerGroupRecord];
  @override
  final String wireName = 'PrayerGroupRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PrayerGroupRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.groupName;
    if (value != null) {
      result
        ..add('group_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.users;
    if (value != null) {
      result
        ..add('users')
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
  PrayerGroupRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PrayerGroupRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'group_name':
          result.groupName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'users':
          result.users.replace(serializers.deserialize(value,
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

class _$PrayerGroupRecord extends PrayerGroupRecord {
  @override
  final String? groupName;
  @override
  final BuiltList<String>? users;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PrayerGroupRecord(
          [void Function(PrayerGroupRecordBuilder)? updates]) =>
      (new PrayerGroupRecordBuilder()..update(updates))._build();

  _$PrayerGroupRecord._({this.groupName, this.users, this.ffRef}) : super._();

  @override
  PrayerGroupRecord rebuild(void Function(PrayerGroupRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrayerGroupRecordBuilder toBuilder() =>
      new PrayerGroupRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrayerGroupRecord &&
        groupName == other.groupName &&
        users == other.users &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, groupName.hashCode), users.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrayerGroupRecord')
          ..add('groupName', groupName)
          ..add('users', users)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PrayerGroupRecordBuilder
    implements Builder<PrayerGroupRecord, PrayerGroupRecordBuilder> {
  _$PrayerGroupRecord? _$v;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  ListBuilder<String>? _users;
  ListBuilder<String> get users => _$this._users ??= new ListBuilder<String>();
  set users(ListBuilder<String>? users) => _$this._users = users;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PrayerGroupRecordBuilder() {
    PrayerGroupRecord._initializeBuilder(this);
  }

  PrayerGroupRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupName = $v.groupName;
      _users = $v.users?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrayerGroupRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PrayerGroupRecord;
  }

  @override
  void update(void Function(PrayerGroupRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrayerGroupRecord build() => _build();

  _$PrayerGroupRecord _build() {
    _$PrayerGroupRecord _$result;
    try {
      _$result = _$v ??
          new _$PrayerGroupRecord._(
              groupName: groupName, users: _users?.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'users';
        _users?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PrayerGroupRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
