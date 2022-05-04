import 'package:ForDev/data/usecases/authentication/remote_authentication.dart';
import 'package:ForDev/domain/usecases/authentication.dart';
import 'package:ForDev/main/factories/http/api_url_factory.dart';
import 'package:ForDev/main/factories/http/http_client_factory.dart';

Authentication makeRemoteAuthentication() {
  return RemoteAuthentication(
      httpClient: makeHttpAdapter(), url: makeApiUrl('login'));
}
