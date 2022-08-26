// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AlarmRecord> _$alarmRecordSerializer = new _$AlarmRecordSerializer();

class _$AlarmRecordSerializer implements StructuredSerializer<AlarmRecord> {
  @override
  final Iterable<Type> types = const [AlarmRecord, _$AlarmRecord];
  @override
  final String wireName = 'AlarmRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AlarmRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.hour;
    if (value != null) {
      result
        ..add('hour')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.min;
    if (value != null) {
      result
        ..add('min')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.tag;
    if (value != null) {
      result
        ..add('tag')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isOn;
    if (value != null) {
      result
        ..add('isOn')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
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
  AlarmRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AlarmRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'hour':
          result.hour = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'min':
          result.min = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'tag':
          result.tag = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isOn':
          result.isOn = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
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

class _$AlarmRecord extends AlarmRecord {
  @override
  final int? hour;
  @override
  final int? min;
  @override
  final String? tag;
  @override
  final bool? isOn;
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
  final DocumentReference<Object?>? ffRef;

  factory _$AlarmRecord([void Function(AlarmRecordBuilder)? updates]) =>
      (new AlarmRecordBuilder()..update(updates))._build();

  _$AlarmRecord._(
      {this.hour,
      this.min,
      this.tag,
      this.isOn,
      this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.ffRef})
      : super._();

  @override
  AlarmRecord rebuild(void Function(AlarmRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlarmRecordBuilder toBuilder() => new AlarmRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlarmRecord &&
        hour == other.hour &&
        min == other.min &&
        tag == other.tag &&
        isOn == other.isOn &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
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
                                        $jc($jc(0, hour.hashCode),
                                            min.hashCode),
                                        tag.hashCode),
                                    isOn.hashCode),
                                email.hashCode),
                            displayName.hashCode),
                        photoUrl.hashCode),
                    uid.hashCode),
                createdTime.hashCode),
            phoneNumber.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlarmRecord')
          ..add('hour', hour)
          ..add('min', min)
          ..add('tag', tag)
          ..add('isOn', isOn)
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AlarmRecordBuilder implements Builder<AlarmRecord, AlarmRecordBuilder> {
  _$AlarmRecord? _$v;

  int? _hour;
  int? get hour => _$this._hour;
  set hour(int? hour) => _$this._hour = hour;

  int? _min;
  int? get min => _$this._min;
  set min(int? min) => _$this._min = min;

  String? _tag;
  String? get tag => _$this._tag;
  set tag(String? tag) => _$this._tag = tag;

  bool? _isOn;
  bool? get isOn => _$this._isOn;
  set isOn(bool? isOn) => _$this._isOn = isOn;

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

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AlarmRecordBuilder() {
    AlarmRecord._initializeBuilder(this);
  }

  AlarmRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hour = $v.hour;
      _min = $v.min;
      _tag = $v.tag;
      _isOn = $v.isOn;
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlarmRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AlarmRecord;
  }

  @override
  void update(void Function(AlarmRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlarmRecord build() => _build();

  _$AlarmRecord _build() {
    final _$result = _$v ??
        new _$AlarmRecord._(
            hour: hour,
            min: min,
            tag: tag,
            isOn: isOn,
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
