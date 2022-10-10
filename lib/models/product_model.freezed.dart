// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String get nameProd => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  double get cashbackInt => throw _privateConstructorUsedError;
  String get productImg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {String nameProd, int price, double cashbackInt, String productImg});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object? nameProd = freezed,
    Object? price = freezed,
    Object? cashbackInt = freezed,
    Object? productImg = freezed,
  }) {
    return _then(_value.copyWith(
      nameProd: nameProd == freezed
          ? _value.nameProd
          : nameProd // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      cashbackInt: cashbackInt == freezed
          ? _value.cashbackInt
          : cashbackInt // ignore: cast_nullable_to_non_nullable
              as double,
      productImg: productImg == freezed
          ? _value.productImg
          : productImg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {String nameProd, int price, double cashbackInt, String productImg});
}

/// @nodoc
class __$$_ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$$_ProductCopyWith<$Res> {
  __$$_ProductCopyWithImpl(_$_Product _value, $Res Function(_$_Product) _then)
      : super(_value, (v) => _then(v as _$_Product));

  @override
  _$_Product get _value => super._value as _$_Product;

  @override
  $Res call({
    Object? nameProd = freezed,
    Object? price = freezed,
    Object? cashbackInt = freezed,
    Object? productImg = freezed,
  }) {
    return _then(_$_Product(
      nameProd: nameProd == freezed
          ? _value.nameProd
          : nameProd // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      cashbackInt: cashbackInt == freezed
          ? _value.cashbackInt
          : cashbackInt // ignore: cast_nullable_to_non_nullable
              as double,
      productImg: productImg == freezed
          ? _value.productImg
          : productImg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Product extends _Product with DiagnosticableTreeMixin {
  const _$_Product(
      {required this.nameProd,
      required this.price,
      this.cashbackInt = 10.0,
      required this.productImg})
      : super._();

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

  @override
  final String nameProd;
  @override
  final int price;
  @override
  @JsonKey()
  final double cashbackInt;
  @override
  final String productImg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Product(nameProd: $nameProd, price: $price, cashbackInt: $cashbackInt, productImg: $productImg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Product'))
      ..add(DiagnosticsProperty('nameProd', nameProd))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('cashbackInt', cashbackInt))
      ..add(DiagnosticsProperty('productImg', productImg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            const DeepCollectionEquality().equals(other.nameProd, nameProd) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.cashbackInt, cashbackInt) &&
            const DeepCollectionEquality()
                .equals(other.productImg, productImg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nameProd),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(cashbackInt),
      const DeepCollectionEquality().hash(productImg));

  @JsonKey(ignore: true)
  @override
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      __$$_ProductCopyWithImpl<_$_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductToJson(
      this,
    );
  }
}

abstract class _Product extends Product {
  const factory _Product(
      {required final String nameProd,
      required final int price,
      final double cashbackInt,
      required final String productImg}) = _$_Product;
  const _Product._() : super._();

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  String get nameProd;
  @override
  int get price;
  @override
  double get cashbackInt;
  @override
  String get productImg;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
