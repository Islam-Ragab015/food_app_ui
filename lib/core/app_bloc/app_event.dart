part of 'app_bloc.dart';

abstract class AppEvent{
  const AppEvent();
}

class InitEvent extends AppEvent {
}

class ThemEvent extends AppEvent {
  final String them;
  const ThemEvent({required this.them});
}
