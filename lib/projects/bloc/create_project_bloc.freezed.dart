// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_project_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateProjectEventTearOff {
  const _$CreateProjectEventTearOff();

  _NameChanged nameChanged(String value) {
    return _NameChanged(
      value,
    );
  }

  _DescriptionChanged descriptionChanged(String value) {
    return _DescriptionChanged(
      value,
    );
  }

  _Submit submit() {
    return const _Submit();
  }
}

/// @nodoc
const $CreateProjectEvent = _$CreateProjectEventTearOff();

/// @nodoc
mixin _$CreateProjectEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) nameChanged,
    required TResult Function(String value) descriptionChanged,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? nameChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProjectEventCopyWith<$Res> {
  factory $CreateProjectEventCopyWith(
          CreateProjectEvent value, $Res Function(CreateProjectEvent) then) =
      _$CreateProjectEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateProjectEventCopyWithImpl<$Res>
    implements $CreateProjectEventCopyWith<$Res> {
  _$CreateProjectEventCopyWithImpl(this._value, this._then);

  final CreateProjectEvent _value;
  // ignore: unused_field
  final $Res Function(CreateProjectEvent) _then;
}

/// @nodoc
abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$NameChangedCopyWithImpl<$Res>
    extends _$CreateProjectEventCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(
      _NameChanged _value, $Res Function(_NameChanged) _then)
      : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_NameChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameChanged with DiagnosticableTreeMixin implements _NameChanged {
  const _$_NameChanged(this.value);

  @override
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateProjectEvent.nameChanged(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateProjectEvent.nameChanged'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NameChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) nameChanged,
    required TResult Function(String value) descriptionChanged,
    required TResult Function() submit,
  }) {
    return nameChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? nameChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_Submit value) submit,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements CreateProjectEvent {
  const factory _NameChanged(String value) = _$_NameChanged;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
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
    extends _$CreateProjectEventCopyWithImpl<$Res>
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

class _$_DescriptionChanged
    with DiagnosticableTreeMixin
    implements _DescriptionChanged {
  const _$_DescriptionChanged(this.value);

  @override
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateProjectEvent.descriptionChanged(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'CreateProjectEvent.descriptionChanged'))
      ..add(DiagnosticsProperty('value', value));
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
    required TResult Function(String value) nameChanged,
    required TResult Function(String value) descriptionChanged,
    required TResult Function() submit,
  }) {
    return descriptionChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? nameChanged,
    TResult Function(String value)? descriptionChanged,
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
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_Submit value) submit,
  }) {
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements CreateProjectEvent {
  const factory _DescriptionChanged(String value) = _$_DescriptionChanged;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubmitCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) then) =
      __$SubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmitCopyWithImpl<$Res> extends _$CreateProjectEventCopyWithImpl<$Res>
    implements _$SubmitCopyWith<$Res> {
  __$SubmitCopyWithImpl(_Submit _value, $Res Function(_Submit) _then)
      : super(_value, (v) => _then(v as _Submit));

  @override
  _Submit get _value => super._value as _Submit;
}

/// @nodoc

class _$_Submit with DiagnosticableTreeMixin implements _Submit {
  const _$_Submit();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateProjectEvent.submit()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CreateProjectEvent.submit'));
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
    required TResult Function(String value) nameChanged,
    required TResult Function(String value) descriptionChanged,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? nameChanged,
    TResult Function(String value)? descriptionChanged,
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
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements CreateProjectEvent {
  const factory _Submit() = _$_Submit;
}

/// @nodoc
class _$CreateProjectStateTearOff {
  const _$CreateProjectStateTearOff();

  _CreateProjectState call(
      {required String name,
      required String description,
      required bool isValid,
      required bool isDone}) {
    return _CreateProjectState(
      name: name,
      description: description,
      isValid: isValid,
      isDone: isDone,
    );
  }
}

/// @nodoc
const $CreateProjectState = _$CreateProjectStateTearOff();

/// @nodoc
mixin _$CreateProjectState {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateProjectStateCopyWith<CreateProjectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProjectStateCopyWith<$Res> {
  factory $CreateProjectStateCopyWith(
          CreateProjectState value, $Res Function(CreateProjectState) then) =
      _$CreateProjectStateCopyWithImpl<$Res>;
  $Res call({String name, String description, bool isValid, bool isDone});
}

/// @nodoc
class _$CreateProjectStateCopyWithImpl<$Res>
    implements $CreateProjectStateCopyWith<$Res> {
  _$CreateProjectStateCopyWithImpl(this._value, this._then);

  final CreateProjectState _value;
  // ignore: unused_field
  final $Res Function(CreateProjectState) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? isValid = freezed,
    Object? isDone = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$CreateProjectStateCopyWith<$Res>
    implements $CreateProjectStateCopyWith<$Res> {
  factory _$CreateProjectStateCopyWith(
          _CreateProjectState value, $Res Function(_CreateProjectState) then) =
      __$CreateProjectStateCopyWithImpl<$Res>;
  @override
  $Res call({String name, String description, bool isValid, bool isDone});
}

/// @nodoc
class __$CreateProjectStateCopyWithImpl<$Res>
    extends _$CreateProjectStateCopyWithImpl<$Res>
    implements _$CreateProjectStateCopyWith<$Res> {
  __$CreateProjectStateCopyWithImpl(
      _CreateProjectState _value, $Res Function(_CreateProjectState) _then)
      : super(_value, (v) => _then(v as _CreateProjectState));

  @override
  _CreateProjectState get _value => super._value as _CreateProjectState;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? isValid = freezed,
    Object? isDone = freezed,
  }) {
    return _then(_CreateProjectState(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$_CreateProjectState
    with DiagnosticableTreeMixin
    implements _CreateProjectState {
  const _$_CreateProjectState(
      {required this.name,
      required this.description,
      required this.isValid,
      required this.isDone});

  @override
  final String name;
  @override
  final String description;
  @override
  final bool isValid;
  @override
  final bool isDone;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateProjectState(name: $name, description: $description, isValid: $isValid, isDone: $isDone)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateProjectState'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('isValid', isValid))
      ..add(DiagnosticsProperty('isDone', isDone));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateProjectState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.isValid, isValid) ||
                const DeepCollectionEquality()
                    .equals(other.isValid, isValid)) &&
            (identical(other.isDone, isDone) ||
                const DeepCollectionEquality().equals(other.isDone, isDone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(isValid) ^
      const DeepCollectionEquality().hash(isDone);

  @JsonKey(ignore: true)
  @override
  _$CreateProjectStateCopyWith<_CreateProjectState> get copyWith =>
      __$CreateProjectStateCopyWithImpl<_CreateProjectState>(this, _$identity);
}

abstract class _CreateProjectState implements CreateProjectState {
  const factory _CreateProjectState(
      {required String name,
      required String description,
      required bool isValid,
      required bool isDone}) = _$_CreateProjectState;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  bool get isValid => throw _privateConstructorUsedError;
  @override
  bool get isDone => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateProjectStateCopyWith<_CreateProjectState> get copyWith =>
      throw _privateConstructorUsedError;
}
