import 'package:ForDev/data/usecases/load_current_account/local_load_current_account.dart';
import 'package:ForDev/domain/usecases/load_current_account.dart';
import 'package:ForDev/main/factories/cache/local_storage_adapter_factory.dart';

LoadCurrentAccount makeLocalLoadCurrentAccount() =>
    LocalLoadCurrentAccount(fetchSecureCacheStorage: makeLocalStorageAdapter());
