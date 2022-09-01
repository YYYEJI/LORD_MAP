// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'churchin_b_g_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChurchinBGRecord> _$churchinBGRecordSerializer =
    new _$ChurchinBGRecordSerializer();

class _$ChurchinBGRecordSerializer
    implements StructuredSerializer<ChurchinBGRecord> {
  @override
  final Iterable<Type> types = const [ChurchinBGRecord, _$ChurchinBGRecord];
  @override
  final String wireName = 'ChurchinBGRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ChurchinBGRecord object,
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
    value = object.churchImage;
    if (value != null) {
      result
        ..add('Church_Image')
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
  ChurchinBGRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChurchinBGRecordBuilder();

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
        case 'Church_Image':
          result.churchImage = serializers.deserialize(value,
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

class _$ChurchinBGRecord extends ChurchinBGRecord {
  @override
  final String? name;
  @override
  final LatLng? location;
  @override
  final String? address;
  @override
  final String? churchImage;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ChurchinBGRecord(
          [void Function(ChurchinBGRecordBuilder)? updates]) =>
      (new ChurchinBGRecordBuilder()..update(updates))._build();

  _$ChurchinBGRecord._(
      {this.name, this.location, this.address, this.churchImage, this.ffRef})
      : super._();

  @override
  ChurchinBGRecord rebuild(void Function(ChurchinBGRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChurchinBGRecordBuilder toBuilder() =>
      new ChurchinBGRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChurchinBGRecord &&
        name == other.name &&
        location == other.location &&
        address == other.address &&
        churchImage == other.churchImage &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, name.hashCode), location.hashCode),
                address.hashCode),
            churchImage.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChurchinBGRecord')
          ..add('name', name)
          ..add('location', location)
          ..add('address', address)
          ..add('churchImage', churchImage)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ChurchinBGRecordBuilder
    implements Builder<ChurchinBGRecord, ChurchinBGRecordBuilder> {
  _$ChurchinBGRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _churchImage;
  String? get churchImage => _$this._churchImage;
  set churchImage(String? churchImage) => _$this._churchImage = churchImage;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ChurchinBGRecordBuilder() {
    ChurchinBGRecord._initializeBuilder(this);
  }

  ChurchinBGRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _location = $v.location;
      _address = $v.address;
      _churchImage = $v.churchImage;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChurchinBGRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChurchinBGRecord;
  }

  @override
  void update(void Function(ChurchinBGRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChurchinBGRecord build() => _build();

  _$ChurchinBGRecord _build() {
    final _$result = _$v ??
        new _$ChurchinBGRecord._(
            name: name,
            location: location,
            address: address,
            churchImage: churchImage,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
