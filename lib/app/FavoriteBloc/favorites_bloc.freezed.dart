// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoritesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DrinkModal item) addItem,
    required TResult Function(String id) removeItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DrinkModal item)? addItem,
    TResult? Function(String id)? removeItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DrinkModal item)? addItem,
    TResult Function(String id)? removeItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoritesEventStarted value) started,
    required TResult Function(_FavoritesEventAddItem value) addItem,
    required TResult Function(_FavoritesEventRemoveItem value) removeItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoritesEventStarted value)? started,
    TResult? Function(_FavoritesEventAddItem value)? addItem,
    TResult? Function(_FavoritesEventRemoveItem value)? removeItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoritesEventStarted value)? started,
    TResult Function(_FavoritesEventAddItem value)? addItem,
    TResult Function(_FavoritesEventRemoveItem value)? removeItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesEventCopyWith<$Res> {
  factory $FavoritesEventCopyWith(
          FavoritesEvent value, $Res Function(FavoritesEvent) then) =
      _$FavoritesEventCopyWithImpl<$Res, FavoritesEvent>;
}

/// @nodoc
class _$FavoritesEventCopyWithImpl<$Res, $Val extends FavoritesEvent>
    implements $FavoritesEventCopyWith<$Res> {
  _$FavoritesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FavoritesEventStartedCopyWith<$Res> {
  factory _$$_FavoritesEventStartedCopyWith(_$_FavoritesEventStarted value,
          $Res Function(_$_FavoritesEventStarted) then) =
      __$$_FavoritesEventStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FavoritesEventStartedCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$_FavoritesEventStarted>
    implements _$$_FavoritesEventStartedCopyWith<$Res> {
  __$$_FavoritesEventStartedCopyWithImpl(_$_FavoritesEventStarted _value,
      $Res Function(_$_FavoritesEventStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FavoritesEventStarted implements _FavoritesEventStarted {
  const _$_FavoritesEventStarted();

  @override
  String toString() {
    return 'FavoritesEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FavoritesEventStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DrinkModal item) addItem,
    required TResult Function(String id) removeItem,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DrinkModal item)? addItem,
    TResult? Function(String id)? removeItem,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DrinkModal item)? addItem,
    TResult Function(String id)? removeItem,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoritesEventStarted value) started,
    required TResult Function(_FavoritesEventAddItem value) addItem,
    required TResult Function(_FavoritesEventRemoveItem value) removeItem,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoritesEventStarted value)? started,
    TResult? Function(_FavoritesEventAddItem value)? addItem,
    TResult? Function(_FavoritesEventRemoveItem value)? removeItem,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoritesEventStarted value)? started,
    TResult Function(_FavoritesEventAddItem value)? addItem,
    TResult Function(_FavoritesEventRemoveItem value)? removeItem,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _FavoritesEventStarted implements FavoritesEvent {
  const factory _FavoritesEventStarted() = _$_FavoritesEventStarted;
}

/// @nodoc
abstract class _$$_FavoritesEventAddItemCopyWith<$Res> {
  factory _$$_FavoritesEventAddItemCopyWith(_$_FavoritesEventAddItem value,
          $Res Function(_$_FavoritesEventAddItem) then) =
      __$$_FavoritesEventAddItemCopyWithImpl<$Res>;
  @useResult
  $Res call({DrinkModal item});
}

/// @nodoc
class __$$_FavoritesEventAddItemCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$_FavoritesEventAddItem>
    implements _$$_FavoritesEventAddItemCopyWith<$Res> {
  __$$_FavoritesEventAddItemCopyWithImpl(_$_FavoritesEventAddItem _value,
      $Res Function(_$_FavoritesEventAddItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$_FavoritesEventAddItem(
      null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as DrinkModal,
    ));
  }
}

/// @nodoc

class _$_FavoritesEventAddItem implements _FavoritesEventAddItem {
  const _$_FavoritesEventAddItem(this.item);

  @override
  final DrinkModal item;

  @override
  String toString() {
    return 'FavoritesEvent.addItem(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoritesEventAddItem &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoritesEventAddItemCopyWith<_$_FavoritesEventAddItem> get copyWith =>
      __$$_FavoritesEventAddItemCopyWithImpl<_$_FavoritesEventAddItem>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DrinkModal item) addItem,
    required TResult Function(String id) removeItem,
  }) {
    return addItem(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DrinkModal item)? addItem,
    TResult? Function(String id)? removeItem,
  }) {
    return addItem?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DrinkModal item)? addItem,
    TResult Function(String id)? removeItem,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoritesEventStarted value) started,
    required TResult Function(_FavoritesEventAddItem value) addItem,
    required TResult Function(_FavoritesEventRemoveItem value) removeItem,
  }) {
    return addItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoritesEventStarted value)? started,
    TResult? Function(_FavoritesEventAddItem value)? addItem,
    TResult? Function(_FavoritesEventRemoveItem value)? removeItem,
  }) {
    return addItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoritesEventStarted value)? started,
    TResult Function(_FavoritesEventAddItem value)? addItem,
    TResult Function(_FavoritesEventRemoveItem value)? removeItem,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(this);
    }
    return orElse();
  }
}

abstract class _FavoritesEventAddItem implements FavoritesEvent {
  const factory _FavoritesEventAddItem(final DrinkModal item) =
      _$_FavoritesEventAddItem;

  DrinkModal get item;
  @JsonKey(ignore: true)
  _$$_FavoritesEventAddItemCopyWith<_$_FavoritesEventAddItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FavoritesEventRemoveItemCopyWith<$Res> {
  factory _$$_FavoritesEventRemoveItemCopyWith(
          _$_FavoritesEventRemoveItem value,
          $Res Function(_$_FavoritesEventRemoveItem) then) =
      __$$_FavoritesEventRemoveItemCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_FavoritesEventRemoveItemCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$_FavoritesEventRemoveItem>
    implements _$$_FavoritesEventRemoveItemCopyWith<$Res> {
  __$$_FavoritesEventRemoveItemCopyWithImpl(_$_FavoritesEventRemoveItem _value,
      $Res Function(_$_FavoritesEventRemoveItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_FavoritesEventRemoveItem(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FavoritesEventRemoveItem implements _FavoritesEventRemoveItem {
  const _$_FavoritesEventRemoveItem(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'FavoritesEvent.removeItem(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoritesEventRemoveItem &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoritesEventRemoveItemCopyWith<_$_FavoritesEventRemoveItem>
      get copyWith => __$$_FavoritesEventRemoveItemCopyWithImpl<
          _$_FavoritesEventRemoveItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DrinkModal item) addItem,
    required TResult Function(String id) removeItem,
  }) {
    return removeItem(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DrinkModal item)? addItem,
    TResult? Function(String id)? removeItem,
  }) {
    return removeItem?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DrinkModal item)? addItem,
    TResult Function(String id)? removeItem,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoritesEventStarted value) started,
    required TResult Function(_FavoritesEventAddItem value) addItem,
    required TResult Function(_FavoritesEventRemoveItem value) removeItem,
  }) {
    return removeItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoritesEventStarted value)? started,
    TResult? Function(_FavoritesEventAddItem value)? addItem,
    TResult? Function(_FavoritesEventRemoveItem value)? removeItem,
  }) {
    return removeItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoritesEventStarted value)? started,
    TResult Function(_FavoritesEventAddItem value)? addItem,
    TResult Function(_FavoritesEventRemoveItem value)? removeItem,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(this);
    }
    return orElse();
  }
}

abstract class _FavoritesEventRemoveItem implements FavoritesEvent {
  const factory _FavoritesEventRemoveItem(final String id) =
      _$_FavoritesEventRemoveItem;

  String get id;
  @JsonKey(ignore: true)
  _$$_FavoritesEventRemoveItemCopyWith<_$_FavoritesEventRemoveItem>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavoritesState {
  List<DrinkModal> get list => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DrinkModal> list, bool isLoading) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DrinkModal> list, bool isLoading)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DrinkModal> list, bool isLoading)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoritesStateCopyWith<FavoritesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateCopyWith(
          FavoritesState value, $Res Function(FavoritesState) then) =
      _$FavoritesStateCopyWithImpl<$Res, FavoritesState>;
  @useResult
  $Res call({List<DrinkModal> list, bool isLoading});
}

/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res, $Val extends FavoritesState>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<DrinkModal>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DrinkModal> list, bool isLoading});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? isLoading = null,
  }) {
    return _then(_$_Initial(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<DrinkModal>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required final List<DrinkModal> list, required this.isLoading})
      : _list = list;

  final List<DrinkModal> _list;
  @override
  List<DrinkModal> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'FavoritesState.initial(list: $list, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_list), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DrinkModal> list, bool isLoading) initial,
  }) {
    return initial(list, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DrinkModal> list, bool isLoading)? initial,
  }) {
    return initial?.call(list, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DrinkModal> list, bool isLoading)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(list, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FavoritesState {
  const factory _Initial(
      {required final List<DrinkModal> list,
      required final bool isLoading}) = _$_Initial;

  @override
  List<DrinkModal> get list;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
