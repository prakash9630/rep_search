import 'app_config.dart';
import 'local_database/app_starter.dart';

Future<void> main() async {
  await appConfig(() => const AppStarter());
}
