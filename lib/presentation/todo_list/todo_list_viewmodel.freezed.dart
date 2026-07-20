// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_list_viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TodoListData {
  int get activeCount => throw _privateConstructorUsedError;
  List<TaskModel> get todayTasks => throw _privateConstructorUsedError;
  List<TaskModel> get tomorrowTasks => throw _privateConstructorUsedError;
  List<TaskModel> get upcomingTasks => throw _privateConstructorUsedError;
  List<CategoryModel> get categories => throw _privateConstructorUsedError;
  Map<String, int> get openCountByCategory =>
      throw _privateConstructorUsedError;
  String? get filterCategory => throw _privateConstructorUsedError;

  /// Create a copy of TodoListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoListDataCopyWith<TodoListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoListDataCopyWith<$Res> {
  factory $TodoListDataCopyWith(
    TodoListData value,
    $Res Function(TodoListData) then,
  ) = _$TodoListDataCopyWithImpl<$Res, TodoListData>;
  @useResult
  $Res call({
    int activeCount,
    List<TaskModel> todayTasks,
    List<TaskModel> tomorrowTasks,
    List<TaskModel> upcomingTasks,
    List<CategoryModel> categories,
    Map<String, int> openCountByCategory,
    String? filterCategory,
  });
}

/// @nodoc
class _$TodoListDataCopyWithImpl<$Res, $Val extends TodoListData>
    implements $TodoListDataCopyWith<$Res> {
  _$TodoListDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeCount = null,
    Object? todayTasks = null,
    Object? tomorrowTasks = null,
    Object? upcomingTasks = null,
    Object? categories = null,
    Object? openCountByCategory = null,
    Object? filterCategory = freezed,
  }) {
    return _then(
      _value.copyWith(
            activeCount: null == activeCount
                ? _value.activeCount
                : activeCount // ignore: cast_nullable_to_non_nullable
                      as int,
            todayTasks: null == todayTasks
                ? _value.todayTasks
                : todayTasks // ignore: cast_nullable_to_non_nullable
                      as List<TaskModel>,
            tomorrowTasks: null == tomorrowTasks
                ? _value.tomorrowTasks
                : tomorrowTasks // ignore: cast_nullable_to_non_nullable
                      as List<TaskModel>,
            upcomingTasks: null == upcomingTasks
                ? _value.upcomingTasks
                : upcomingTasks // ignore: cast_nullable_to_non_nullable
                      as List<TaskModel>,
            categories: null == categories
                ? _value.categories
                : categories // ignore: cast_nullable_to_non_nullable
                      as List<CategoryModel>,
            openCountByCategory: null == openCountByCategory
                ? _value.openCountByCategory
                : openCountByCategory // ignore: cast_nullable_to_non_nullable
                      as Map<String, int>,
            filterCategory: freezed == filterCategory
                ? _value.filterCategory
                : filterCategory // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TodoListDataImplCopyWith<$Res>
    implements $TodoListDataCopyWith<$Res> {
  factory _$$TodoListDataImplCopyWith(
    _$TodoListDataImpl value,
    $Res Function(_$TodoListDataImpl) then,
  ) = __$$TodoListDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int activeCount,
    List<TaskModel> todayTasks,
    List<TaskModel> tomorrowTasks,
    List<TaskModel> upcomingTasks,
    List<CategoryModel> categories,
    Map<String, int> openCountByCategory,
    String? filterCategory,
  });
}

/// @nodoc
class __$$TodoListDataImplCopyWithImpl<$Res>
    extends _$TodoListDataCopyWithImpl<$Res, _$TodoListDataImpl>
    implements _$$TodoListDataImplCopyWith<$Res> {
  __$$TodoListDataImplCopyWithImpl(
    _$TodoListDataImpl _value,
    $Res Function(_$TodoListDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TodoListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeCount = null,
    Object? todayTasks = null,
    Object? tomorrowTasks = null,
    Object? upcomingTasks = null,
    Object? categories = null,
    Object? openCountByCategory = null,
    Object? filterCategory = freezed,
  }) {
    return _then(
      _$TodoListDataImpl(
        activeCount: null == activeCount
            ? _value.activeCount
            : activeCount // ignore: cast_nullable_to_non_nullable
                  as int,
        todayTasks: null == todayTasks
            ? _value._todayTasks
            : todayTasks // ignore: cast_nullable_to_non_nullable
                  as List<TaskModel>,
        tomorrowTasks: null == tomorrowTasks
            ? _value._tomorrowTasks
            : tomorrowTasks // ignore: cast_nullable_to_non_nullable
                  as List<TaskModel>,
        upcomingTasks: null == upcomingTasks
            ? _value._upcomingTasks
            : upcomingTasks // ignore: cast_nullable_to_non_nullable
                  as List<TaskModel>,
        categories: null == categories
            ? _value._categories
            : categories // ignore: cast_nullable_to_non_nullable
                  as List<CategoryModel>,
        openCountByCategory: null == openCountByCategory
            ? _value._openCountByCategory
            : openCountByCategory // ignore: cast_nullable_to_non_nullable
                  as Map<String, int>,
        filterCategory: freezed == filterCategory
            ? _value.filterCategory
            : filterCategory // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$TodoListDataImpl extends _TodoListData {
  const _$TodoListDataImpl({
    required this.activeCount,
    required final List<TaskModel> todayTasks,
    required final List<TaskModel> tomorrowTasks,
    required final List<TaskModel> upcomingTasks,
    required final List<CategoryModel> categories,
    required final Map<String, int> openCountByCategory,
    required this.filterCategory,
  }) : _todayTasks = todayTasks,
       _tomorrowTasks = tomorrowTasks,
       _upcomingTasks = upcomingTasks,
       _categories = categories,
       _openCountByCategory = openCountByCategory,
       super._();

  @override
  final int activeCount;
  final List<TaskModel> _todayTasks;
  @override
  List<TaskModel> get todayTasks {
    if (_todayTasks is EqualUnmodifiableListView) return _todayTasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todayTasks);
  }

  final List<TaskModel> _tomorrowTasks;
  @override
  List<TaskModel> get tomorrowTasks {
    if (_tomorrowTasks is EqualUnmodifiableListView) return _tomorrowTasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tomorrowTasks);
  }

  final List<TaskModel> _upcomingTasks;
  @override
  List<TaskModel> get upcomingTasks {
    if (_upcomingTasks is EqualUnmodifiableListView) return _upcomingTasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_upcomingTasks);
  }

  final List<CategoryModel> _categories;
  @override
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final Map<String, int> _openCountByCategory;
  @override
  Map<String, int> get openCountByCategory {
    if (_openCountByCategory is EqualUnmodifiableMapView)
      return _openCountByCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_openCountByCategory);
  }

  @override
  final String? filterCategory;

  @override
  String toString() {
    return 'TodoListData(activeCount: $activeCount, todayTasks: $todayTasks, tomorrowTasks: $tomorrowTasks, upcomingTasks: $upcomingTasks, categories: $categories, openCountByCategory: $openCountByCategory, filterCategory: $filterCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoListDataImpl &&
            (identical(other.activeCount, activeCount) ||
                other.activeCount == activeCount) &&
            const DeepCollectionEquality().equals(
              other._todayTasks,
              _todayTasks,
            ) &&
            const DeepCollectionEquality().equals(
              other._tomorrowTasks,
              _tomorrowTasks,
            ) &&
            const DeepCollectionEquality().equals(
              other._upcomingTasks,
              _upcomingTasks,
            ) &&
            const DeepCollectionEquality().equals(
              other._categories,
              _categories,
            ) &&
            const DeepCollectionEquality().equals(
              other._openCountByCategory,
              _openCountByCategory,
            ) &&
            (identical(other.filterCategory, filterCategory) ||
                other.filterCategory == filterCategory));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    activeCount,
    const DeepCollectionEquality().hash(_todayTasks),
    const DeepCollectionEquality().hash(_tomorrowTasks),
    const DeepCollectionEquality().hash(_upcomingTasks),
    const DeepCollectionEquality().hash(_categories),
    const DeepCollectionEquality().hash(_openCountByCategory),
    filterCategory,
  );

  /// Create a copy of TodoListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoListDataImplCopyWith<_$TodoListDataImpl> get copyWith =>
      __$$TodoListDataImplCopyWithImpl<_$TodoListDataImpl>(this, _$identity);
}

abstract class _TodoListData extends TodoListData {
  const factory _TodoListData({
    required final int activeCount,
    required final List<TaskModel> todayTasks,
    required final List<TaskModel> tomorrowTasks,
    required final List<TaskModel> upcomingTasks,
    required final List<CategoryModel> categories,
    required final Map<String, int> openCountByCategory,
    required final String? filterCategory,
  }) = _$TodoListDataImpl;
  const _TodoListData._() : super._();

  @override
  int get activeCount;
  @override
  List<TaskModel> get todayTasks;
  @override
  List<TaskModel> get tomorrowTasks;
  @override
  List<TaskModel> get upcomingTasks;
  @override
  List<CategoryModel> get categories;
  @override
  Map<String, int> get openCountByCategory;
  @override
  String? get filterCategory;

  /// Create a copy of TodoListData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoListDataImplCopyWith<_$TodoListDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
