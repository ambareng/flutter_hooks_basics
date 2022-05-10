import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class UseEffectUseStateExample extends HookWidget {
  const UseEffectUseStateExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final test = useState(false);

    useEffect(() {
      debugPrint('test is $test.value');
      return () {};
    }, [test.value]);

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              test.value = !test.value;
            }, child: const Text('Look at Debug Log'))
          ],
        ),
      ),
    );
  }
}
