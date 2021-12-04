import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:test_virtue/core/result.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:test_virtue/domain/model/simple_post_model/simple_post_model.dart';

String baseUrl = dotenv.get('BASE_URL');

class SimplePostListApi {}
