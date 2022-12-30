// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'index.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Character _$CharacterFromJson(Map<String, dynamic> json) {
  return Character$.fromJson(json);
}

/// @nodoc
mixin _$Character {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get species => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get created => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String get mediumImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterCopyWith<Character> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterCopyWith<$Res> {
  factory $CharacterCopyWith(Character value, $Res Function(Character) then) =
      _$CharacterCopyWithImpl<$Res, Character>;
  @useResult
  $Res call(
      {int id,
      String name,
      String status,
      String species,
      String type,
      String gender,
      String created,
      @JsonKey(name: 'image') String mediumImage});
}

/// @nodoc
class _$CharacterCopyWithImpl<$Res, $Val extends Character>
    implements $CharacterCopyWith<$Res> {
  _$CharacterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? species = null,
    Object? type = null,
    Object? gender = null,
    Object? created = null,
    Object? mediumImage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      mediumImage: null == mediumImage
          ? _value.mediumImage
          : mediumImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Character$CopyWith<$Res> implements $CharacterCopyWith<$Res> {
  factory _$$Character$CopyWith(
          _$Character$ value, $Res Function(_$Character$) then) =
      __$$Character$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String status,
      String species,
      String type,
      String gender,
      String created,
      @JsonKey(name: 'image') String mediumImage});
}

/// @nodoc
class __$$Character$CopyWithImpl<$Res>
    extends _$CharacterCopyWithImpl<$Res, _$Character$>
    implements _$$Character$CopyWith<$Res> {
  __$$Character$CopyWithImpl(
      _$Character$ _value, $Res Function(_$Character$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? species = null,
    Object? type = null,
    Object? gender = null,
    Object? created = null,
    Object? mediumImage = null,
  }) {
    return _then(_$Character$(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      mediumImage: null == mediumImage
          ? _value.mediumImage
          : mediumImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Character$ implements Character$ {
  const _$Character$(
      {required this.id,
      required this.name,
      required this.status,
      required this.species,
      required this.type,
      required this.gender,
      required this.created,
      @JsonKey(name: 'image') required this.mediumImage});

  factory _$Character$.fromJson(Map<String, dynamic> json) =>
      _$$Character$FromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String status;
  @override
  final String species;
  @override
  final String type;
  @override
  final String gender;
  @override
  final String created;
  @override
  @JsonKey(name: 'image')
  final String mediumImage;

  @override
  String toString() {
    return 'Character(id: $id, name: $name, status: $status, species: $species, type: $type, gender: $gender, created: $created, mediumImage: $mediumImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Character$ &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.mediumImage, mediumImage) ||
                other.mediumImage == mediumImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, status, species, type,
      gender, created, mediumImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Character$CopyWith<_$Character$> get copyWith =>
      __$$Character$CopyWithImpl<_$Character$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Character$ToJson(
      this,
    );
  }
}

abstract class Character$ implements Character {
  const factory Character$(
          {required final int id,
          required final String name,
          required final String status,
          required final String species,
          required final String type,
          required final String gender,
          required final String created,
          @JsonKey(name: 'image') required final String mediumImage}) =
      _$Character$;

  factory Character$.fromJson(Map<String, dynamic> json) =
      _$Character$.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get status;
  @override
  String get species;
  @override
  String get type;
  @override
  String get gender;
  @override
  String get created;
  @override
  @JsonKey(name: 'image')
  String get mediumImage;
  @override
  @JsonKey(ignore: true)
  _$$Character$CopyWith<_$Character$> get copyWith =>
      throw _privateConstructorUsedError;
}

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return AppState$.fromJson(json);
}

/// @nodoc
mixin _$AppState {
  List<Character> get character => throw _privateConstructorUsedError;
  List<int> get liked => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Character? get selectedCharacter => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {List<Character> character,
      List<int> liked,
      bool isLoading,
      Character? selectedCharacter,
      int page});

  $CharacterCopyWith<$Res>? get selectedCharacter;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = null,
    Object? liked = null,
    Object? isLoading = null,
    Object? selectedCharacter = freezed,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      character: null == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      liked: null == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedCharacter: freezed == selectedCharacter
          ? _value.selectedCharacter
          : selectedCharacter // ignore: cast_nullable_to_non_nullable
              as Character?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterCopyWith<$Res>? get selectedCharacter {
    if (_value.selectedCharacter == null) {
      return null;
    }

    return $CharacterCopyWith<$Res>(_value.selectedCharacter!, (value) {
      return _then(_value.copyWith(selectedCharacter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppState$CopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$AppState$CopyWith(
          _$AppState$ value, $Res Function(_$AppState$) then) =
      __$$AppState$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Character> character,
      List<int> liked,
      bool isLoading,
      Character? selectedCharacter,
      int page});

  @override
  $CharacterCopyWith<$Res>? get selectedCharacter;
}

/// @nodoc
class __$$AppState$CopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppState$>
    implements _$$AppState$CopyWith<$Res> {
  __$$AppState$CopyWithImpl(
      _$AppState$ _value, $Res Function(_$AppState$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = null,
    Object? liked = null,
    Object? isLoading = null,
    Object? selectedCharacter = freezed,
    Object? page = null,
  }) {
    return _then(_$AppState$(
      character: null == character
          ? _value._character
          : character // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      liked: null == liked
          ? _value._liked
          : liked // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedCharacter: freezed == selectedCharacter
          ? _value.selectedCharacter
          : selectedCharacter // ignore: cast_nullable_to_non_nullable
              as Character?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppState$ implements AppState$ {
  const _$AppState$(
      {final List<Character> character = const <Character>[],
      final List<int> liked = const <int>[],
      this.isLoading = true,
      this.selectedCharacter,
      this.page = 1})
      : _character = character,
        _liked = liked;

  factory _$AppState$.fromJson(Map<String, dynamic> json) =>
      _$$AppState$FromJson(json);

  final List<Character> _character;
  @override
  @JsonKey()
  List<Character> get character {
    if (_character is EqualUnmodifiableListView) return _character;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_character);
  }

  final List<int> _liked;
  @override
  @JsonKey()
  List<int> get liked {
    if (_liked is EqualUnmodifiableListView) return _liked;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_liked);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Character? selectedCharacter;
  @override
  @JsonKey()
  final int page;

  @override
  String toString() {
    return 'AppState(character: $character, liked: $liked, isLoading: $isLoading, selectedCharacter: $selectedCharacter, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppState$ &&
            const DeepCollectionEquality()
                .equals(other._character, _character) &&
            const DeepCollectionEquality().equals(other._liked, _liked) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.selectedCharacter, selectedCharacter) ||
                other.selectedCharacter == selectedCharacter) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_character),
      const DeepCollectionEquality().hash(_liked),
      isLoading,
      selectedCharacter,
      page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppState$CopyWith<_$AppState$> get copyWith =>
      __$$AppState$CopyWithImpl<_$AppState$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppState$ToJson(
      this,
    );
  }
}

abstract class AppState$ implements AppState {
  const factory AppState$(
      {final List<Character> character,
      final List<int> liked,
      final bool isLoading,
      final Character? selectedCharacter,
      final int page}) = _$AppState$;

  factory AppState$.fromJson(Map<String, dynamic> json) = _$AppState$.fromJson;

  @override
  List<Character> get character;
  @override
  List<int> get liked;
  @override
  bool get isLoading;
  @override
  Character? get selectedCharacter;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$AppState$CopyWith<_$AppState$> get copyWith =>
      throw _privateConstructorUsedError;
}
