import 'package:bookparty/domain/auth/user.dart';
import 'package:bookparty/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
abstract class UserDto implements _$UserDto {
  const UserDto._();

  const factory UserDto({
    required String id,
    required String name,
  }) = _UserDto;

  factory UserDto.fromDomain(User user) {
    return UserDto(
      id: user.id.getOrCrash(),
      name: user.name,
    );
  }

  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(id),
      name: name,
    );
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
