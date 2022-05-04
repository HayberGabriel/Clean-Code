import 'package:ForDev/data/usecases/add_account/remote_add_account.dart';
import 'package:ForDev/domain/usecases/add_account.dart';
import 'package:ForDev/main/factories/http/api_url_factory.dart';
import 'package:ForDev/main/factories/http/http_client_factory.dart';

AddAccount makeRemoteAddAccount() {
  return RemoteAddAccount(
      httpClient: makeHttpAdapter(), url: makeApiUrl('signup'));
}
