// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prayTitleToday;
    if (value != null) {
      result
        ..add('prayTitle_today')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isCompletedToday;
    if (value != null) {
      result
        ..add('isCompletedToday')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.prayTimeToday;
    if (value != null) {
      result
        ..add('prayTimeToday')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.age;
    if (value != null) {
      result
        ..add('age')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.getBible;
    if (value != null) {
      result
        ..add('get_bible')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.prayTitleGot;
    if (value != null) {
      result
        ..add('prayTitle_got')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prayerGroup;
    if (value != null) {
      result
        ..add('Prayer_group')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prayerStack;
    if (value != null) {
      result
        ..add('prayerStack')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  UsersRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'prayTitle_today':
          result.prayTitleToday = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isCompletedToday':
          result.isCompletedToday = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'prayTimeToday':
          result.prayTimeToday = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'age':
          result.age = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'get_bible':
          result.getBible = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'prayTitle_got':
          result.prayTitleGot = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Prayer_group':
          result.prayerGroup = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'prayerStack':
          result.prayerStack = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$UsersRecord extends UsersRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final String? prayTitleToday;
  @override
  final bool? isCompletedToday;
  @override
  final int? prayTimeToday;
  @override
  final int? age;
  @override
  final bool? getBible;
  @override
  final String? prayTitleGot;
  @override
  final String? prayerGroup;
  @override
  final int? prayerStack;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsersRecord([void Function(UsersRecordBuilder)? updates]) =>
      (new UsersRecordBuilder()..update(updates))._build();

  _$UsersRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.prayTitleToday,
      this.isCompletedToday,
      this.prayTimeToday,
      this.age,
      this.getBible,
      this.prayTitleGot,
      this.prayerGroup,
      this.prayerStack,
      this.ffRef})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        prayTitleToday == other.prayTitleToday &&
        isCompletedToday == other.isCompletedToday &&
        prayTimeToday == other.prayTimeToday &&
        age == other.age &&
        getBible == other.getBible &&
        prayTitleGot == other.prayTitleGot &&
        prayerGroup == other.prayerGroup &&
        prayerStack == other.prayerStack &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(0,
                                                                email.hashCode),
                                                            displayName
                                                                .hashCode),
                                                        photoUrl.hashCode),
                                                    uid.hashCode),
                                                createdTime.hashCode),
                                            phoneNumber.hashCode),
                                        prayTitleToday.hashCode),
                                    isCompletedToday.hashCode),
                                prayTimeToday.hashCode),
                            age.hashCode),
                        getBible.hashCode),
                    prayTitleGot.hashCode),
                prayerGroup.hashCode),
            prayerStack.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('prayTitleToday', prayTitleToday)
          ..add('isCompletedToday', isCompletedToday)
          ..add('prayTimeToday', prayTimeToday)
          ..add('age', age)
          ..add('getBible', getBible)
          ..add('prayTitleGot', prayTitleGot)
          ..add('prayerGroup', prayerGroup)
          ..add('prayerStack', prayerStack)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _prayTitleToday;
  String? get prayTitleToday => _$this._prayTitleToday;
  set prayTitleToday(String? prayTitleToday) =>
      _$this._prayTitleToday = prayTitleToday;

  bool? _isCompletedToday;
  bool? get isCompletedToday => _$this._isCompletedToday;
  set isCompletedToday(bool? isCompletedToday) =>
      _$this._isCompletedToday = isCompletedToday;

  int? _prayTimeToday;
  int? get prayTimeToday => _$this._prayTimeToday;
  set prayTimeToday(int? prayTimeToday) =>
      _$this._prayTimeToday = prayTimeToday;

  int? _age;
  int? get age => _$this._age;
  set age(int? age) => _$this._age = age;

  bool? _getBible;
  bool? get getBible => _$this._getBible;
  set getBible(bool? getBible) => _$this._getBible = getBible;

  String? _prayTitleGot;
  String? get prayTitleGot => _$this._prayTitleGot;
  set prayTitleGot(String? prayTitleGot) => _$this._prayTitleGot = prayTitleGot;

  String? _prayerGroup;
  String? get prayerGroup => _$this._prayerGroup;
  set prayerGroup(String? prayerGroup) => _$this._prayerGroup = prayerGroup;

  int? _prayerStack;
  int? get prayerStack => _$this._prayerStack;
  set prayerStack(int? prayerStack) => _$this._prayerStack = prayerStack;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _prayTitleToday = $v.prayTitleToday;
      _isCompletedToday = $v.isCompletedToday;
      _prayTimeToday = $v.prayTimeToday;
      _age = $v.age;
      _getBible = $v.getBible;
      _prayTitleGot = $v.prayTitleGot;
      _prayerGroup = $v.prayerGroup;
      _prayerStack = $v.prayerStack;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersRecord build() => _build();

  _$UsersRecord _build() {
    final _$result = _$v ??
        new _$UsersRecord._(
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            prayTitleToday: prayTitleToday,
            isCompletedToday: isCompletedToday,
            prayTimeToday: prayTimeToday,
            age: age,
            getBible: getBible,
            prayTitleGot: prayTitleGot,
            prayerGroup: prayerGroup,
            prayerStack: prayerStack,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
