part of 'navigation_cubit.dart';

@freezed
abstract class NavigationState with _$NavigationState {
  const factory NavigationState({required int selectedIndex}) = _NavigationState;

  factory NavigationState.initial() => NavigationState(selectedIndex: 0);
}
