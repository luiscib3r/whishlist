// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateTaskEventTearOff {
  const _$CreateTaskEventTearOff();

  _TitleChanged titleChanged(String value) {
    return _TitleChanged(
      value,
    );
  }

  _DescriptionChanged descriptionChanged(String value) {
    return _DescriptionChanged(
      value,
    );
  }

  _TypeChanged typeChanged(String value) {
    return _TypeChanged(
      value,
    );
  }

  _ResolverChanged resolverChanged(String value) {
    return _ResolverChanged(
      value,
    );
  }

  _DueDateChanged dueDateChanged(DateTime value) {
    return _DueDateChanged(
      value,
    );
  }

  _Submit submit() {
    return const _Submit();
  }
}

/// @nodoc
const $CreateTaskEvent = _$CreateTaskEventTearOff();

/// @nodoc
mixin _$CreateTaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) titleChanged,
    required TResult Function(String value) descriptionChanged,
    required TResult Function(String value) typeChanged,
    required TResult Function(String value) resolverChanged,
    required TResult Function(DateTime value) dueDateChanged,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(String value)? typeChanged,
    TResult Function(String value)? resolverChanged,
    TResult Function(DateTime value)? dueDateChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_ResolverChanged value) resolverChanged,
    required TResult Function(_DueDateChanged value) dueDateChanged,
    required TResult Function(_Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_ResolverChanged value)? resolverChanged,
    TResult Function(_DueDateChanged value)? dueDateChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTaskEventCopyWith<$Res> {
  factory $CreateTaskEventCopyWith(
          CreateTaskEvent value, $Res Function(CreateTaskEvent) then) =
      _$CreateTaskEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateTaskEventCopyWithImpl<$Res>
    implements $CreateTaskEventCopyWith<$Res> {
  _$CreateTaskEventCopyWithImpl(this._value, this._then);

  final CreateTaskEvent _value;
  // ignore: unused_field
  final $Res Function(CreateTaskEvent) _then;
}

/// @nodoc
abstract class _$TitleChangedCopyWith<$Res> {
  factory _$TitleChangedCopyWith(
          _TitleChanged value, $Res Function(_TitleChanged) then) =
      __$TitleChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$TitleChangedCopyWithImpl<$Res>
    extends _$CreateTaskEventCopyWithImpl<$Res>
    implements _$TitleChangedCopyWith<$Res> {
  __$TitleChangedCopyWithImpl(
      _TitleChanged _value, $Res Function(_TitleChanged) _then)
      : super(_value, (v) => _then(v as _TitleChanged));

  @override
  _TitleChanged get _value => super._value as _TitleChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_TitleChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TitleChanged implements _TitleChanged {
  const _$_TitleChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'CreateTaskEvent.titleChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TitleChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
      __$TitleChangedCopyWithImpl<_TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) titleChanged,
    required TResult Function(String value) descriptionChanged,
    required TResult Function(String value) typeChanged,
    required TResult Function(String value) resolverChanged,
    required TResult Function(DateTime value) dueDateChanged,
    required TResult Function() submit,
  }) {
    return titleChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(String value)? typeChanged,
    TResult Function(String value)? resolverChanged,
    TResult Function(DateTime value)? dueDateChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_ResolverChanged value) resolverChanged,
    required TResult Function(_DueDateChanged value) dueDateChanged,
    required TResult Function(_Submit value) submit,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_ResolverChanged value)? resolverChanged,
    TResult Function(_DueDateChanged value)? dueDateChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements CreateTaskEvent {
  const factory _TitleChanged(String value) = _$_TitleChanged;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DescriptionChangedCopyWith<$Res> {
  factory _$DescriptionChangedCopyWith(
          _DescriptionChanged value, $Res Function(_DescriptionChanged) then) =
      __$DescriptionChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$DescriptionChangedCopyWithImpl<$Res>
    extends _$CreateTaskEventCopyWithImpl<$Res>
    implements _$DescriptionChangedCopyWith<$Res> {
  __$DescriptionChangedCopyWithImpl(
      _DescriptionChanged _value, $Res Function(_DescriptionChanged) _then)
      : super(_value, (v) => _then(v as _DescriptionChanged));

  @override
  _DescriptionChanged get _value => super._value as _DescriptionChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_DescriptionChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DescriptionChanged implements _DescriptionChanged {
  const _$_DescriptionChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'CreateTaskEvent.descriptionChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DescriptionChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
      __$DescriptionChangedCopyWithImpl<_DescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) titleChanged,
    required TResult Function(String value) descriptionChanged,
    required TResult Function(String value) typeChanged,
    required TResult Function(String value) resolverChanged,
    required TResult Function(DateTime value) dueDateChanged,
    required TResult Function() submit,
  }) {
    return descriptionChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(String value)? typeChanged,
    TResult Function(String value)? resolverChanged,
    TResult Function(DateTime value)? dueDateChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_ResolverChanged value) resolverChanged,
    required TResult Function(_DueDateChanged value) dueDateChanged,
    required TResult Function(_Submit value) submit,
  }) {
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_ResolverChanged value)? resolverChanged,
    TResult Function(_DueDateChanged value)? dueDateChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements CreateTaskEvent {
  const factory _DescriptionChanged(String value) = _$_DescriptionChanged;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TypeChangedCopyWith<$Res> {
  factory _$TypeChangedCopyWith(
          _TypeChanged value, $Res Function(_TypeChanged) then) =
      __$TypeChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$TypeChangedCopyWithImpl<$Res>
    extends _$CreateTaskEventCopyWithImpl<$Res>
    implements _$TypeChangedCopyWith<$Res> {
  __$TypeChangedCopyWithImpl(
      _TypeChanged _value, $Res Function(_TypeChanged) _then)
      : super(_value, (v) => _then(v as _TypeChanged));

  @override
  _TypeChanged get _value => super._value as _TypeChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_TypeChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TypeChanged implements _TypeChanged {
  const _$_TypeChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'CreateTaskEvent.typeChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TypeChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$TypeChangedCopyWith<_TypeChanged> get copyWith =>
      __$TypeChangedCopyWithImpl<_TypeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) titleChanged,
    required TResult Function(String value) descriptionChanged,
    required TResult Function(String value) typeChanged,
    required TResult Function(String value) resolverChanged,
    required TResult Function(DateTime value) dueDateChanged,
    required TResult Function() submit,
  }) {
    return typeChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(String value)? typeChanged,
    TResult Function(String value)? resolverChanged,
    TResult Function(DateTime value)? dueDateChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (typeChanged != null) {
      return typeChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_ResolverChanged value) resolverChanged,
    required TResult Function(_DueDateChanged value) dueDateChanged,
    required TResult Function(_Submit value) submit,
  }) {
    return typeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_ResolverChanged value)? resolverChanged,
    TResult Function(_DueDateChanged value)? dueDateChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (typeChanged != null) {
      return typeChanged(this);
    }
    return orElse();
  }
}

abstract class _TypeChanged implements CreateTaskEvent {
  const factory _TypeChanged(String value) = _$_TypeChanged;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TypeChangedCopyWith<_TypeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResolverChangedCopyWith<$Res> {
  factory _$ResolverChangedCopyWith(
          _ResolverChanged value, $Res Function(_ResolverChanged) then) =
      __$ResolverChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$ResolverChangedCopyWithImpl<$Res>
    extends _$CreateTaskEventCopyWithImpl<$Res>
    implements _$ResolverChangedCopyWith<$Res> {
  __$ResolverChangedCopyWithImpl(
      _ResolverChanged _value, $Res Function(_ResolverChanged) _then)
      : super(_value, (v) => _then(v as _ResolverChanged));

  @override
  _ResolverChanged get _value => super._value as _ResolverChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ResolverChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ResolverChanged implements _ResolverChanged {
  const _$_ResolverChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'CreateTaskEvent.resolverChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResolverChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$ResolverChangedCopyWith<_ResolverChanged> get copyWith =>
      __$ResolverChangedCopyWithImpl<_ResolverChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) titleChanged,
    required TResult Function(String value) descriptionChanged,
    required TResult Function(String value) typeChanged,
    required TResult Function(String value) resolverChanged,
    required TResult Function(DateTime value) dueDateChanged,
    required TResult Function() submit,
  }) {
    return resolverChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(String value)? typeChanged,
    TResult Function(String value)? resolverChanged,
    TResult Function(DateTime value)? dueDateChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (resolverChanged != null) {
      return resolverChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_ResolverChanged value) resolverChanged,
    required TResult Function(_DueDateChanged value) dueDateChanged,
    required TResult Function(_Submit value) submit,
  }) {
    return resolverChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_ResolverChanged value)? resolverChanged,
    TResult Function(_DueDateChanged value)? dueDateChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (resolverChanged != null) {
      return resolverChanged(this);
    }
    return orElse();
  }
}

abstract class _ResolverChanged implements CreateTaskEvent {
  const factory _ResolverChanged(String value) = _$_ResolverChanged;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ResolverChangedCopyWith<_ResolverChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DueDateChangedCopyWith<$Res> {
  factory _$DueDateChangedCopyWith(
          _DueDateChanged value, $Res Function(_DueDateChanged) then) =
      __$DueDateChangedCopyWithImpl<$Res>;
  $Res call({DateTime value});
}

/// @nodoc
class __$DueDateChangedCopyWithImpl<$Res>
    extends _$CreateTaskEventCopyWithImpl<$Res>
    implements _$DueDateChangedCopyWith<$Res> {
  __$DueDateChangedCopyWithImpl(
      _DueDateChanged _value, $Res Function(_DueDateChanged) _then)
      : super(_value, (v) => _then(v as _DueDateChanged));

  @override
  _DueDateChanged get _value => super._value as _DueDateChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_DueDateChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_DueDateChanged implements _DueDateChanged {
  const _$_DueDateChanged(this.value);

  @override
  final DateTime value;

  @override
  String toString() {
    return 'CreateTaskEvent.dueDateChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DueDateChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$DueDateChangedCopyWith<_DueDateChanged> get copyWith =>
      __$DueDateChangedCopyWithImpl<_DueDateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) titleChanged,
    required TResult Function(String value) descriptionChanged,
    required TResult Function(String value) typeChanged,
    required TResult Function(String value) resolverChanged,
    required TResult Function(DateTime value) dueDateChanged,
    required TResult Function() submit,
  }) {
    return dueDateChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(String value)? typeChanged,
    TResult Function(String value)? resolverChanged,
    TResult Function(DateTime value)? dueDateChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (dueDateChanged != null) {
      return dueDateChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_ResolverChanged value) resolverChanged,
    required TResult Function(_DueDateChanged value) dueDateChanged,
    required TResult Function(_Submit value) submit,
  }) {
    return dueDateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_ResolverChanged value)? resolverChanged,
    TResult Function(_DueDateChanged value)? dueDateChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (dueDateChanged != null) {
      return dueDateChanged(this);
    }
    return orElse();
  }
}

abstract class _DueDateChanged implements CreateTaskEvent {
  const factory _DueDateChanged(DateTime value) = _$_DueDateChanged;

  DateTime get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DueDateChangedCopyWith<_DueDateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubmitCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) then) =
      __$SubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmitCopyWithImpl<$Res> extends _$CreateTaskEventCopyWithImpl<$Res>
    implements _$SubmitCopyWith<$Res> {
  __$SubmitCopyWithImpl(_Submit _value, $Res Function(_Submit) _then)
      : super(_value, (v) => _then(v as _Submit));

  @override
  _Submit get _value => super._value as _Submit;
}

/// @nodoc

class _$_Submit implements _Submit {
  const _$_Submit();

  @override
  String toString() {
    return 'CreateTaskEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Submit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) titleChanged,
    required TResult Function(String value) descriptionChanged,
    required TResult Function(String value) typeChanged,
    required TResult Function(String value) resolverChanged,
    required TResult Function(DateTime value) dueDateChanged,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(String value)? typeChanged,
    TResult Function(String value)? resolverChanged,
    TResult Function(DateTime value)? dueDateChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_ResolverChanged value) resolverChanged,
    required TResult Function(_DueDateChanged value) dueDateChanged,
    required TResult Function(_Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_ResolverChanged value)? resolverChanged,
    TResult Function(_DueDateChanged value)? dueDateChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements CreateTaskEvent {
  const factory _Submit() = _$_Submit;
}

/// @nodoc
class _$CreateTaskStateTearOff {
  const _$CreateTaskStateTearOff();

  _CreateTaskState call(
      {required String title,
      required String description,
      required int type,
      required String resolver,
      required DateTime dueDate,
      required bool isValid,
      required bool isDone}) {
    return _CreateTaskState(
      title: title,
      description: description,
      type: type,
      resolver: resolver,
      dueDate: dueDate,
      isValid: isValid,
      isDone: isDone,
    );
  }
}

/// @nodoc
const $CreateTaskState = _$CreateTaskStateTearOff();

/// @nodoc
mixin _$CreateTaskState {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  String get resolver => throw _privateConstructorUsedError;
  DateTime get dueDate => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateTaskStateCopyWith<CreateTaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTaskStateCopyWith<$Res> {
  factory $CreateTaskStateCopyWith(
          CreateTaskState value, $Res Function(CreateTaskState) then) =
      _$CreateTaskStateCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String description,
      int type,
      String resolver,
      DateTime dueDate,
      bool isValid,
      bool isDone});
}

/// @nodoc
class _$CreateTaskStateCopyWithImpl<$Res>
    implements $CreateTaskStateCopyWith<$Res> {
  _$CreateTaskStateCopyWithImpl(this._value, this._then);

  final CreateTaskState _value;
  // ignore: unused_field
  final $Res Function(CreateTaskState) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? resolver = freezed,
    Object? dueDate = freezed,
    Object? isValid = freezed,
    Object? isDone = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      resolver: resolver == freezed
          ? _value.resolver
          : resolver // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: dueDate == freezed
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isValid: isValid == freezed
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$CreateTaskStateCopyWith<$Res>
    implements $CreateTaskStateCopyWith<$Res> {
  factory _$CreateTaskStateCopyWith(
          _CreateTaskState value, $Res Function(_CreateTaskState) then) =
      __$CreateTaskStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String description,
      int type,
      String resolver,
      DateTime dueDate,
      bool isValid,
      bool isDone});
}

/// @nodoc
class __$CreateTaskStateCopyWithImpl<$Res>
    extends _$CreateTaskStateCopyWithImpl<$Res>
    implements _$CreateTaskStateCopyWith<$Res> {
  __$CreateTaskStateCopyWithImpl(
      _CreateTaskState _value, $Res Function(_CreateTaskState) _then)
      : super(_value, (v) => _then(v as _CreateTaskState));

  @override
  _CreateTaskState get _value => super._value as _CreateTaskState;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? resolver = freezed,
    Object? dueDate = freezed,
    Object? isValid = freezed,
    Object? isDone = freezed,
  }) {
    return _then(_CreateTaskState(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      resolver: resolver == freezed
          ? _value.resolver
          : resolver // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: dueDate == freezed
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isValid: isValid == freezed
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CreateTaskState implements _CreateTaskState {
  const _$_CreateTaskState(
      {required this.title,
      required this.description,
      required this.type,
      required this.resolver,
      required this.dueDate,
      required this.isValid,
      required this.isDone});

  @override
  final String title;
  @override
  final String description;
  @override
  final int type;
  @override
  final String resolver;
  @override
  final DateTime dueDate;
  @override
  final bool isValid;
  @override
  final bool isDone;

  @override
  String toString() {
    return 'CreateTaskState(title: $title, description: $description, type: $type, resolver: $resolver, dueDate: $dueDate, isValid: $isValid, isDone: $isDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateTaskState &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.resolver, resolver) ||
                const DeepCollectionEquality()
                    .equals(other.resolver, resolver)) &&
            (identical(other.dueDate, dueDate) ||
                const DeepCollectionEquality()
                    .equals(other.dueDate, dueDate)) &&
            (identical(other.isValid, isValid) ||
                const DeepCollectionEquality()
                    .equals(other.isValid, isValid)) &&
            (identical(other.isDone, isDone) ||
                const DeepCollectionEquality().equals(other.isDone, isDone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(resolver) ^
      const DeepCollectionEquality().hash(dueDate) ^
      const DeepCollectionEquality().hash(isValid) ^
      const DeepCollectionEquality().hash(isDone);

  @JsonKey(ignore: true)
  @override
  _$CreateTaskStateCopyWith<_CreateTaskState> get copyWith =>
      __$CreateTaskStateCopyWithImpl<_CreateTaskState>(this, _$identity);
}

abstract class _CreateTaskState implements CreateTaskState {
  const factory _CreateTaskState(
      {required String title,
      required String description,
      required int type,
      required String resolver,
      required DateTime dueDate,
      required bool isValid,
      required bool isDone}) = _$_CreateTaskState;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  int get type => throw _privateConstructorUsedError;
  @override
  String get resolver => throw _privateConstructorUsedError;
  @override
  DateTime get dueDate => throw _privateConstructorUsedError;
  @override
  bool get isValid => throw _privateConstructorUsedError;
  @override
  bool get isDone => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateTaskStateCopyWith<_CreateTaskState> get copyWith =>
      throw _privateConstructorUsedError;
}
