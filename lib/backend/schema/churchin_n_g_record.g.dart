// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'churchin_n_g_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChurchinNGRecord> _$churchinNGRecordSerializer =
new _$ChurchinNGRecordSerializer();

class _$ChurchinNGRecordSerializer
    implements StructuredSerializer<ChurchinNGRecord> {
  @override
  final Iterable<Type> types = const [ChurchinNGRecord, _$ChurchinNGRecord];
  @override
  final String wireName = 'ChurchinNGRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ChurchinNGRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phone;
    if (value != null) {
      result
        ..add('Phone')
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
  ChurchinNGRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChurchinNGRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Phone':
          result.phone = serializers.deserialize(value,
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

class _$ChurchinNGRecord extends ChurchinNGRecord {
  @override
  final String? name;
  @override
  final LatLng? location;
  @override
  final String? address;
  @override
  final String? phone;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ChurchinNGRecord(
      [void Function(ChurchinNGRecordBuilder)? updates]) =>
      (new ChurchinNGRecordBuilder()..update(updates))._build();

  _$ChurchinNGRecord._(
      {this.name, this.location, this.address, this.phone, this.ffRef})
      : super._();

  @override
  ChurchinNGRecord rebuild(void Function(ChurchinNGRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChurchinNGRecordBuilder toBuilder() =>
      new ChurchinNGRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChurchinNGRecord &&
        name == other.name &&
        location == other.location &&
        address == other.address &&
        phone == other.phone &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, name.hashCode), location.hashCode),
                address.hashCode),
            phone.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChurchinNGRecord')
      ..add('name', name)
      ..add('location', location)
      ..add('address', address)
      ..add('phone', phone)
      ..add('ffRef', ffRef))
        .toString();
  }
}

class ChurchinNGRecordBuilder
    implements Builder<ChurchinNGRecord, ChurchinNGRecordBuilder> {
  _$ChurchinNGRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ChurchinNGRecordBuilder() {
    ChurchinNGRecord._initializeBuilder(this);
  }

  ChurchinNGRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _location = $v.location;
      _address = $v.address;
      _phone = $v.phone;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChurchinNGRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChurchinNGRecord;
  }

  @override
  void update(void Function(ChurchinNGRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChurchinNGRecord build() => _build();

  _$ChurchinNGRecord _build() {
    final _$result = _$v ??
        new _$ChurchinNGRecord._(
            name: name,
            location: location,
            address: address,
            phone: phone,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
