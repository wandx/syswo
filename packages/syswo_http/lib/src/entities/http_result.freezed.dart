// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HttpResult {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HttpResult);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HttpResult()';
}


}

/// @nodoc
class $HttpResultCopyWith<$Res>  {
$HttpResultCopyWith(HttpResult _, $Res Function(HttpResult) __);
}


/// Adds pattern-matching-related methods to [HttpResult].
extension HttpResultPatterns on HttpResult {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _HttpResultData value)?  data,TResult Function( _HttpResultError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HttpResultData() when data != null:
return data(_that);case _HttpResultError() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _HttpResultData value)  data,required TResult Function( _HttpResultError value)  error,}){
final _that = this;
switch (_that) {
case _HttpResultData():
return data(_that);case _HttpResultError():
return error(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _HttpResultData value)?  data,TResult? Function( _HttpResultError value)?  error,}){
final _that = this;
switch (_that) {
case _HttpResultData() when data != null:
return data(_that);case _HttpResultError() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? bodyString,  Uint8List? bodyBytes)?  data,TResult Function( ResponseException error,  StackTrace? stackTrace)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HttpResultData() when data != null:
return data(_that.bodyString,_that.bodyBytes);case _HttpResultError() when error != null:
return error(_that.error,_that.stackTrace);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? bodyString,  Uint8List? bodyBytes)  data,required TResult Function( ResponseException error,  StackTrace? stackTrace)  error,}) {final _that = this;
switch (_that) {
case _HttpResultData():
return data(_that.bodyString,_that.bodyBytes);case _HttpResultError():
return error(_that.error,_that.stackTrace);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? bodyString,  Uint8List? bodyBytes)?  data,TResult? Function( ResponseException error,  StackTrace? stackTrace)?  error,}) {final _that = this;
switch (_that) {
case _HttpResultData() when data != null:
return data(_that.bodyString,_that.bodyBytes);case _HttpResultError() when error != null:
return error(_that.error,_that.stackTrace);case _:
  return null;

}
}

}

/// @nodoc


class _HttpResultData implements HttpResult {
  const _HttpResultData({this.bodyString, this.bodyBytes});
  

 final  String? bodyString;
 final  Uint8List? bodyBytes;

/// Create a copy of HttpResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HttpResultDataCopyWith<_HttpResultData> get copyWith => __$HttpResultDataCopyWithImpl<_HttpResultData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HttpResultData&&(identical(other.bodyString, bodyString) || other.bodyString == bodyString)&&const DeepCollectionEquality().equals(other.bodyBytes, bodyBytes));
}


@override
int get hashCode => Object.hash(runtimeType,bodyString,const DeepCollectionEquality().hash(bodyBytes));

@override
String toString() {
  return 'HttpResult.data(bodyString: $bodyString, bodyBytes: $bodyBytes)';
}


}

/// @nodoc
abstract mixin class _$HttpResultDataCopyWith<$Res> implements $HttpResultCopyWith<$Res> {
  factory _$HttpResultDataCopyWith(_HttpResultData value, $Res Function(_HttpResultData) _then) = __$HttpResultDataCopyWithImpl;
@useResult
$Res call({
 String? bodyString, Uint8List? bodyBytes
});




}
/// @nodoc
class __$HttpResultDataCopyWithImpl<$Res>
    implements _$HttpResultDataCopyWith<$Res> {
  __$HttpResultDataCopyWithImpl(this._self, this._then);

  final _HttpResultData _self;
  final $Res Function(_HttpResultData) _then;

/// Create a copy of HttpResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bodyString = freezed,Object? bodyBytes = freezed,}) {
  return _then(_HttpResultData(
bodyString: freezed == bodyString ? _self.bodyString : bodyString // ignore: cast_nullable_to_non_nullable
as String?,bodyBytes: freezed == bodyBytes ? _self.bodyBytes : bodyBytes // ignore: cast_nullable_to_non_nullable
as Uint8List?,
  ));
}


}

/// @nodoc


class _HttpResultError implements HttpResult {
  const _HttpResultError({required this.error, this.stackTrace});
  

 final  ResponseException error;
 final  StackTrace? stackTrace;

/// Create a copy of HttpResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HttpResultErrorCopyWith<_HttpResultError> get copyWith => __$HttpResultErrorCopyWithImpl<_HttpResultError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HttpResultError&&(identical(other.error, error) || other.error == error)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,error,stackTrace);

@override
String toString() {
  return 'HttpResult.error(error: $error, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class _$HttpResultErrorCopyWith<$Res> implements $HttpResultCopyWith<$Res> {
  factory _$HttpResultErrorCopyWith(_HttpResultError value, $Res Function(_HttpResultError) _then) = __$HttpResultErrorCopyWithImpl;
@useResult
$Res call({
 ResponseException error, StackTrace? stackTrace
});




}
/// @nodoc
class __$HttpResultErrorCopyWithImpl<$Res>
    implements _$HttpResultErrorCopyWith<$Res> {
  __$HttpResultErrorCopyWithImpl(this._self, this._then);

  final _HttpResultError _self;
  final $Res Function(_HttpResultError) _then;

/// Create a copy of HttpResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,Object? stackTrace = freezed,}) {
  return _then(_HttpResultError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ResponseException,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

// dart format on
