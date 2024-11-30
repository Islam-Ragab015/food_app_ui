part of 'app_bloc.dart';

abstract class AppState {
  final String? modeThem;
  const AppState(
      { this.modeThem});
}

class AppInitial extends AppState {
  const AppInitial( {String? modeThem})
      : super( modeThem: modeThem??'light');
}


class ChangeSettings extends AppState {
  const ChangeSettings( String modeThem)
      : super( modeThem: modeThem);
}
