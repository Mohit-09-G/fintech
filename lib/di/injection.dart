import 'package:bike_shoping_online/presentation/controller/home_screen/home_screen_controller.dart';
import 'package:bike_shoping_online/presentation/controller/mainScreen/main_screen.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> init() async {
  getIt.registerFactory<HomeScreenController>(() => HomeScreenController());
  getIt.registerFactory<MainScreenController>(() => MainScreenController());
}
