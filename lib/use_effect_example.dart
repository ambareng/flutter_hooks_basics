import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class UseEffectExample extends HookWidget {
  const UseEffectExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isTrue = false;

    useEffect(() {
      debugPrint('onInitState');
      
      return () {
        debugPrint('onDisposeState');
      };
    }, []);

    useEffect(() {
      debugPrint('$isTrue');

      return () {};
    }, [isTrue]);

    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: () {
          isTrue = !isTrue;
        }, child: const Text('Click Me!'),),
      )
    );
  }
}