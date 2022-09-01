// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userin_p_g_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserinPGRecord> _$userinPGRecordSerializer =
    new _$UserinPGRecordSerializer();

class _$UserinPGRecordSerializer
    implements StructuredSerializer<UserinPGRecord> {
  @override
  final Iterable<Type> types = const [UserinPGRecord, _$UserinPGRecord];
  @override
  final String wireName = 'UserinPGRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserinPGRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.users;
    if (value != null) {
      result
        ..add('users')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prayerTime;
    if (value != null) {
      result
        ..add('prayerTime')
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
  UserinPGRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserinPGRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'users':
          result.users = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'prayerTime':
          result.prayerTime = serializers.deserialize(value,
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

class _$UserinPGRecord extends UserinPGRecord {
  @override
  final String? users;
  @override
  final String? prayerTime;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UserinPGRecord([void Function(UserinPGRecordBuilder)? updates]) =>
      (new UserinPGRecordBuilder()..update(updates))._build();

  _$UserinPGRecord._({this.users, this.prayerTime, this.ffRef}) : super._();

  @override
  UserinPGRecord rebuild(void Function(UserinPGRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserinPGRecordBuilder toBuilder() =>
      new UserinPGRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserinPGRecord &&
        users == other.users &&
        prayerTime == other.prayerTime &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, users.hashCode), prayerTime.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserinPGRecord')
          ..add('users', users)
          ..add('prayerTime', prayerTime)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UserinPGRecordBuilder
    implements Builder<UserinPGRecord, UserinPGRecordBuilder> {
  _$UserinPGRecord? _$v;

  String? _users;
  String? get users => _$this._users;
  set users(String? users) => _$this._users = users;

  String? _prayerTime;
  String? get prayerTime => _$this._prayerTime;
  set prayerTime(String? prayerTime) => _$this._prayerTime = prayerTime;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UserinPGRecordBuilder() {
    UserinPGRecord._initializeBuilder(this);
  }

  UserinPGRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _users = $v.users;
      _prayerTime = $v.prayerTime;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserinPGRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserinPGRecord;
  }

  @override
  void update(void Function(UserinPGRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserinPGRecord build() => _build();

  _$UserinPGRecord _build() {
    final _$result = _$v ??
        new _$UserinPGRecord._(
            users: users, prayerTime: prayerTime, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
