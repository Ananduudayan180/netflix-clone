// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_fialure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MainFailure implements DiagnosticableTreeMixin {

 String get message;
/// Create a copy of MainFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainFailureCopyWith<MainFailure> get copyWith => _$MainFailureCopyWithImpl<MainFailure>(this as MainFailure, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MainFailure'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MainFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class $MainFailureCopyWith<$Res>  {
  factory $MainFailureCopyWith(MainFailure value, $Res Function(MainFailure) _then) = _$MainFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$MainFailureCopyWithImpl<$Res>
    implements $MainFailureCopyWith<$Res> {
  _$MainFailureCopyWithImpl(this._self, this._then);

  final MainFailure _self;
  final $Res Function(MainFailure) _then;

/// Create a copy of MainFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MainFailure].
extension MainFailurePatterns on MainFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ServerFailure value)?  serverFailure,TResult Function( ClientFailure value)?  clientFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ServerFailure() when serverFailure != null:
return serverFailure(_that);case ClientFailure() when clientFailure != null:
return clientFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ServerFailure value)  serverFailure,required TResult Function( ClientFailure value)  clientFailure,}){
final _that = this;
switch (_that) {
case ServerFailure():
return serverFailure(_that);case ClientFailure():
return clientFailure(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ServerFailure value)?  serverFailure,TResult? Function( ClientFailure value)?  clientFailure,}){
final _that = this;
switch (_that) {
case ServerFailure() when serverFailure != null:
return serverFailure(_that);case ClientFailure() when clientFailure != null:
return clientFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  serverFailure,TResult Function( String message)?  clientFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ServerFailure() when serverFailure != null:
return serverFailure(_that.message);case ClientFailure() when clientFailure != null:
return clientFailure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  serverFailure,required TResult Function( String message)  clientFailure,}) {final _that = this;
switch (_that) {
case ServerFailure():
return serverFailure(_that.message);case ClientFailure():
return clientFailure(_that.message);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  serverFailure,TResult? Function( String message)?  clientFailure,}) {final _that = this;
switch (_that) {
case ServerFailure() when serverFailure != null:
return serverFailure(_that.message);case ClientFailure() when clientFailure != null:
return clientFailure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ServerFailure with DiagnosticableTreeMixin implements MainFailure {
  const ServerFailure({required this.message});
  

@override final  String message;

/// Create a copy of MainFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerFailureCopyWith<ServerFailure> get copyWith => _$ServerFailureCopyWithImpl<ServerFailure>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MainFailure.serverFailure'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MainFailure.serverFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class $ServerFailureCopyWith<$Res> implements $MainFailureCopyWith<$Res> {
  factory $ServerFailureCopyWith(ServerFailure value, $Res Function(ServerFailure) _then) = _$ServerFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ServerFailureCopyWithImpl<$Res>
    implements $ServerFailureCopyWith<$Res> {
  _$ServerFailureCopyWithImpl(this._self, this._then);

  final ServerFailure _self;
  final $Res Function(ServerFailure) _then;

/// Create a copy of MainFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ServerFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ClientFailure with DiagnosticableTreeMixin implements MainFailure {
  const ClientFailure({required this.message});
  

@override final  String message;

/// Create a copy of MainFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClientFailureCopyWith<ClientFailure> get copyWith => _$ClientFailureCopyWithImpl<ClientFailure>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MainFailure.clientFailure'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClientFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MainFailure.clientFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class $ClientFailureCopyWith<$Res> implements $MainFailureCopyWith<$Res> {
  factory $ClientFailureCopyWith(ClientFailure value, $Res Function(ClientFailure) _then) = _$ClientFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ClientFailureCopyWithImpl<$Res>
    implements $ClientFailureCopyWith<$Res> {
  _$ClientFailureCopyWithImpl(this._self, this._then);

  final ClientFailure _self;
  final $Res Function(ClientFailure) _then;

/// Create a copy of MainFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ClientFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
