import 'package:ForDev/data/http/http_client.dart';
import 'package:ForDev/infra/http/http_adapter.dart';
import 'package:http/http.dart';

HttpClient makeHttpAdapter() => HttpAdapter(Client());
