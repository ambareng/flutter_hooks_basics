import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_basics/dummy_api.dart';

class UseMemoizedExample extends HookWidget {
  const UseMemoizedExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyApiService = useMemoized(() => DummyApi());
    final dummyApiHttpCall = useValueNotifier(dummyApiService.getDummyHttpResponse());

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              dummyApiHttpCall.value = dummyApiService.getDummyHttpResponse();
            }, child: const Text('Click Me!'),),
            HookBuilder(
              builder: (_) {
                final dummyFuture = useValueListenable(dummyApiHttpCall);
                return FutureBuilder(
                  future: dummyFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return Text('${snapshot.data}');
                    }
                    return const CircularProgressIndicator();
                  }
                );
              } 
            )
          ],
        )
      )
    );
  }
}