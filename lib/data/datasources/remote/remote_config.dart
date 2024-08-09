import 'package:flutter_dotenv/flutter_dotenv.dart';

class RemoteConfig {
  final kBaseURL = '${dotenv.env['BASE_URL']}';
}