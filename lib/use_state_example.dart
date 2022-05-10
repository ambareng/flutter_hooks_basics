import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class UseStateExample extends HookWidget {
  const UseStateExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isVisible = useState(false);

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 250.0),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Visibility(
              visible: isVisible.value,
              child: const Text('Hello!'),
            ),
            ElevatedButton(onPressed: () {
              isVisible.value = !isVisible.value;
            }, child: const Text('Hi!'))
          ],
        ),
      ),
    );
  }
}