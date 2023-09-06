import 'package:get_it/get_it.dart';

import 'core/home/ui/bloc/home_screen_bloc.dart';

abstract class DI {
  static void init() {
    GetIt.I.registerFactory<HomeScreenBloc>(HomeScreenBloc.new);
  }
}
