import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app_ui/core/storage_helper/storage_helper.dart';
part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> with StorageHelper {
  String theme;

  AppBloc(this.theme) : super(const AppInitial()) {
    on<InitEvent>(_init);
    on<ThemEvent>(_changeTheme);
  }

  void _init(InitEvent event, Emitter<AppState> emit) async {
    theme = await getTheme() ?? "light";
    emit(AppInitial(modeThem: theme));
  }

  void _changeTheme(ThemEvent event, Emitter<AppState> emit) async {
    theme = event.them;
    await saveTheme(theme);
    emit(ChangeSettings(theme));
  }
}
