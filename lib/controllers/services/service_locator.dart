import 'package:get_it/get_it.dart';
import 'package:pp_17/controllers/services/remote_config_service.dart';
import 'package:pp_17/data/database/database_service.dart';

class ServiceLocator {
  static Future<void> setup() async {
    GetIt.I.registerSingletonAsync<DatabaseService>(() => DatabaseService().init());
    await GetIt.I.isReady<DatabaseService>();
    GetIt.I.registerSingletonAsync<RemoteConfigService>(() => RemoteConfigService().init());
    await GetIt.I.isReady<RemoteConfigService>();
  }
}
