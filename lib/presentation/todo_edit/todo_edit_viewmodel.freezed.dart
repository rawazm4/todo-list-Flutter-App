// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_edit_viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TodoDraft {
  String get title => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  String get dueLabel => throw _privateConstructorUsedError;
  bool get reminder => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;

  /// Create a copy of TodoDraft
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoDraftCopyWith<TodoDraft> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoDraftCopyWith<$Res> {
  factory $TodoDraftCopyWith(TodoDraft value, $Res Function(TodoDraft) then) =
      _$TodoDraftCopyWithImpl<$Res, TodoDraft>;
  @useResult
  $Res call({
    String title,
    String categoryId,
    String dueLabel,
    bool reminder,
    String notes,
  });
}

/// @nodoc
class _$TodoDraftCopyWithImpl<$Res, $Val extends TodoDraft>
    implements $TodoDraftCopyWith<$Res> {
  _$TodoDraftCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoDraft
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? categoryId = null,
    Object? dueLabel = null,
    Object? reminder = null,
    Object? notes = null,
  }) {
    return _then(
      _value.copyWith(
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            categoryId: null == categoryId
                ? _value.categoryId
                : categoryId // ignore: cast_nullable_to_non_nullable
                      as String,
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TodoDraftImplCopyWith<$Res>
    implements $TodoDraftCopyWith<$Res> {
  factory _$$TodoDraftImplCopyWith(
    _$TodoDraftImpl value,
    $Res Function(_$TodoDraftImpl) then,
  ) = __$$TodoDraftImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String title,
    String categoryId,
    String dueLabel,
    bool reminder,
    String notes,
  });
}

/// @nodoc
class __$$TodoDraftImplCopyWithImpl<$Res>
    extends _$TodoDraftCopyWithImpl<$Res, _$TodoDraftImpl>
    implements _$$TodoDraftImplCopyWith<$Res> {
  __$$TodoDraftImplCopyWithImpl(
    _$TodoDraftImpl _value,
    $Res Function(_$TodoDraftImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TodoDraft
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? categoryId = null,
    Object? dueLabel = null,
    Object? reminder = null,
    Object? notes = null,
  }) {
    return _then(
      _$TodoDraftImpl(
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        categoryId: null == categoryId
            ? _value.categoryId
            : categoryId // ignore: cast_nullable_to_non_nullable
                  as String,
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
      ),
    );
  }
}

/// @nodoc

class _$TodoDraftImpl extends _TodoDraft {
  const _$TodoDraftImpl({
    this.title = '',
    this.categoryId = 'work',
    this.dueLabel = '',
    this.reminder = false,
    this.notes = '',
  }) : super._();

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String categoryId;
  @override
  @JsonKey()
  final String dueLabel;
  @override
  @JsonKey()
  final bool reminder;
  @override
  @JsonKey()
  final String notes;

  @override
  String toString() {
    return 'TodoDraft(title: $title, categoryId: $categoryId, dueLabel: $dueLabel, reminder: $reminder, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoDraftImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.dueLabel, dueLabel) ||
                other.dueLabel == dueLabel) &&
            (identical(other.reminder, reminder) ||
                other.reminder == reminder) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, categoryId, dueLabel, reminder, notes);

  /// Create a copy of TodoDraft
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoDraftImplCopyWith<_$TodoDraftImpl> get copyWith =>
      __$$TodoDraftImplCopyWithImpl<_$TodoDraftImpl>(this, _$identity);
}

abstract class _TodoDraft extends TodoDraft {
  const factory _TodoDraft({
    final String title,
    final String categoryId,
    final String dueLabel,
    final bool reminder,
    final String notes,
  }) = _$TodoDraftImpl;
  const _TodoDraft._() : super._();

  @override
  String get title;
  @override
  String get categoryId;
  @override
  String get dueLabel;
  @override
  bool get reminder;
  @override
  String get notes;

  /// Create a copy of TodoDraft
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoDraftImplCopyWith<_$TodoDraftImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
