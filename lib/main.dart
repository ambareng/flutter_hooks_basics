import 'package:flutter/material.dart';
import 'package:hooks_basics/use_effect_example.dart';
import 'package:hooks_basics/main_hooks.dart';
import 'package:hooks_basics/use_effect_use_state_example.dart';
import 'package:hooks_basics/use_memoized_example.dart';
import 'package:hooks_basics/use_state_example.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const MainHooks(),
        '/useEffect': (context) => const UseEffectExample(),
        '/useState': (context) => const UseStateExample(),
        '/useState_useEffect': (context) => const UseEffectUseStateExample(),
        '/useMemoized': (context) => const UseMemoizedExample()
      },
    );
  }
}

