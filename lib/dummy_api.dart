import 'package:flutter/material.dart';

class DummyApi {
  DummyApi() {
    debugPrint('Dummy Api Instantiated!');
  }

  Future<String> getDummyHttpResponse() async {
    return Future.delayed(
      const Duration(seconds: 5),
      () => 'Http Response Loaded!'
    );
  }
}