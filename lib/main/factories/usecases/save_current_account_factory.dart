import 'package:ForDev/data/usecases/save_current_account/local_save_current_account.dart';
import 'package:ForDev/domain/usecases/save_current_account.dart';
import 'package:ForDev/main/factories/cache/local_storage_adapter_factory.dart';

SaveCurrentAccount makeLocalSaveCurrentAccount() =>
    LocalSaveCurrentAccount(saveSecureCacheStorage: makeLocalStorageAdapter());
