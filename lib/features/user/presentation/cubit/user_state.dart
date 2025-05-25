part of 'user_cubit.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState({
    String? errorMessage,
    int? statusCode,
    required StatusType loginStatus,
    required StatusType checkUserStatus,
    LoginResponseModel? loginResponseModel,
    UserDataDto? user,
  }) = _UserState;

  factory UserState.initial() => const UserState(loginStatus: StatusType.initial, checkUserStatus: StatusType.initial);
}
