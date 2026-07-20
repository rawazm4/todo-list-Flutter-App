// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CategoryModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  CategoryColor get color => throw _privateConstructorUsedError;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
    CategoryModel value,
    $Res Function(CategoryModel) then,
  ) = _$CategoryModelCopyWithImpl<$Res, CategoryModel>;
  @useResult
  $Res call({String id, String name, CategoryColor color});
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res, $Val extends CategoryModel>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? color = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            color: null == color
                ? _value.color
                : color // ignore: cast_nullable_to_non_nullable
                      as CategoryColor,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CategoryModelImplCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$$CategoryModelImplCopyWith(
    _$CategoryModelImpl value,
    $Res Function(_$CategoryModelImpl) then,
  ) = __$$CategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, CategoryColor color});
}

/// @nodoc
class __$$CategoryModelImplCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res, _$CategoryModelImpl>
    implements _$$CategoryModelImplCopyWith<$Res> {
  __$$CategoryModelImplCopyWithImpl(
    _$CategoryModelImpl _value,
    $Res Function(_$CategoryModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? color = null}) {
    return _then(
      _$CategoryModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        color: null == color
            ? _value.color
            : color // ignore: cast_nullable_to_non_nullable
                  as CategoryColor,
      ),
    );
  }
}

/// @nodoc

class _$CategoryModelImpl implements _CategoryModel {
  const _$CategoryModelImpl({
    required this.id,
    required this.name,
    required this.color,
  });

  @override
  final String id;
  @override
  final String name;
  @override
  final CategoryColor color;

  @override
  String toString() {
    return 'CategoryModel(id: $id, name: $name, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, color);

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      __$$CategoryModelImplCopyWithImpl<_$CategoryModelImpl>(this, _$identity);
}

abstract class _CategoryModel implements CategoryModel {
  const factory _CategoryModel({
    required final String id,
    required final String name,
    required final CategoryColor color,
  }) = _$CategoryModelImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  CategoryColor get color;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  TaskGroup get group => throw _privateConstructorUsedError;
  String get dueLabel => throw _privateConstructorUsedError;
  bool get reminder => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;
  String? get completedLabel => throw _privateConstructorUsedError;

  /// Create a copy of TaskModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskModelCopyWith<TaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskModelCopyWith<$Res> {
  factory $TaskModelCopyWith(TaskModel value, $Res Function(TaskModel) then) =
      _$TaskModelCopyWithImpl<$Res, TaskModel>;
  @useResult
  $Res call({
    String id,
    String title,
    String categoryId,
    TaskGroup group,
    String dueLabel,
    bool reminder,
    String notes,
    bool done,
    String? completedLabel,
  });
}

/// @nodoc
class _$TaskModelCopyWithImpl<$Res, $Val extends TaskModel>
    implements $TaskModelCopyWith<$Res> {
  _$TaskModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? categoryId = null,
    Object? group = null,
    Object? dueLabel = null,
    Object? reminder = null,
    Object? notes = null,
    Object? done = null,
    Object? completedLabel = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            categoryId: null == categoryId
                ? _value.categoryId
                : categoryId // ignore: cast_nullable_to_non_nullable
                      as String,
            group: null == group
                ? _value.group
                : group // ignore: cast_nullable_to_non_nullable
                      as TaskGroup,
            dueLabel: null == dueLabel
                ? _value.dueLabel
                : dueLabel // ignore: cast_nullable_to_non_nullable
                      as String,
            reminder: null == reminder
                ? _value.reminder
                : reminder // ignore: cast_nullable_to_non_nullable
                      as bool,
            notes: null == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                      as String,
            done: null == done
                ? _value.done
                : done // ignore: cast_nullable_to_non_nullable
                      as bool,
            completedLabel: freezed == completedLabel
                ? _value.completedLabel
                : completedLabel // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TaskModelImplCopyWith<$Res>
    implements $TaskModelCopyWith<$Res> {
  factory _$$TaskModelImplCopyWith(
    _$TaskModelImpl value,
    $Res Function(_$TaskModelImpl) then,
  ) = __$$TaskModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String categoryId,
    TaskGroup group,
    String dueLabel,
    bool reminder,
    String notes,
    bool done,
    String? completedLabel,
  });
}

/// @nodoc
class __$$TaskModelImplCopyWithImpl<$Res>
    extends _$TaskModelCopyWithImpl<$Res, _$TaskModelImpl>
    implements _$$TaskModelImplCopyWith<$Res> {
  __$$TaskModelImplCopyWithImpl(
    _$TaskModelImpl _value,
    $Res Function(_$TaskModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TaskModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? categoryId = null,
    Object? group = null,
    Object? dueLabel = null,
    Object? reminder = null,
    Object? notes = null,
    Object? done = null,
    Object? completedLabel = freezed,
  }) {
    return _then(
      _$TaskModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        categoryId: null == categoryId
            ? _value.categoryId
            : categoryId // ignore: cast_nullable_to_non_nullable
                  as String,
        group: null == group
            ? _value.group
            : group // ignore: cast_nullable_to_non_nullable
                  as TaskGroup,
        dueLabel: null == dueLabel
            ? _value.dueLabel
            : dueLabel // ignore: cast_nullable_to_non_nullable
                  as String,
        reminder: null == reminder
            ? _value.reminder
            : reminder // ignore: cast_nullable_to_non_nullable
                  as bool,
        notes: null == notes
            ? _value.notes
            : notes // ignore: cast_nullable_to_non_nullable
                  as String,
        done: null == done
            ? _value.done
            : done // ignore: cast_nullable_to_non_nullable
                  as bool,
        completedLabel: freezed == completedLabel
            ? _value.completedLabel
            : completedLabel // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$TaskModelImpl extends _TaskModel {
  const _$TaskModelImpl({
    required this.id,
    required this.title,
    required this.categoryId,
    required this.group,
    required this.dueLabel,
    this.reminder = false,
    this.notes = '',
    this.done = false,
    this.completedLabel,
  }) : super._();

  @override
  final String id;
  @override
  final String title;
  @override
  final String categoryId;
  @override
  final TaskGroup group;
  @override
  final String dueLabel;
  @override
  @JsonKey()
  final bool reminder;
  @override
  @JsonKey()
  final String notes;
  @override
  @JsonKey()
  final bool done;
  @override
  final String? completedLabel;

  @override
  String toString() {
    return 'TaskModel(id: $id, title: $title, categoryId: $categoryId, group: $group, dueLabel: $dueLabel, reminder: $reminder, notes: $notes, done: $done, completedLabel: $completedLabel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.dueLabel, dueLabel) ||
                other.dueLabel == dueLabel) &&
            (identical(other.reminder, reminder) ||
                other.reminder == reminder) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.completedLabel, completedLabel) ||
                other.completedLabel == completedLabel));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    categoryId,
    group,
    dueLabel,
    reminder,
    notes,
    done,
    completedLabel,
  );

  /// Create a copy of TaskModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskModelImplCopyWith<_$TaskModelImpl> get copyWith =>
      __$$TaskModelImplCopyWithImpl<_$TaskModelImpl>(this, _$identity);
}

abstract class _TaskModel extends TaskModel {
  const factory _TaskModel({
    required final String id,
    required final String title,
    required final String categoryId,
    required final TaskGroup group,
    required final String dueLabel,
    final bool reminder,
    final String notes,
    final bool done,
    final String? completedLabel,
  }) = _$TaskModelImpl;
  const _TaskModel._() : super._();

  @override
  String get id;
  @override
  String get title;
  @override
  String get categoryId;
  @override
  TaskGroup get group;
  @override
  String get dueLabel;
  @override
  bool get reminder;
  @override
  String get notes;
  @override
  bool get done;
  @override
  String? get completedLabel;

  /// Create a copy of TaskModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskModelImplCopyWith<_$TaskModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
