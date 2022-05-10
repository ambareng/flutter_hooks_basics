import 'package:flutter/material.dart';

class MainHooks extends StatelessWidget {
  const MainHooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: ListView(
          children: [
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('useEffect Example'),
                  ElevatedButton(onPressed: () {
                    Navigator.pushNamed(context, '/useEffect');
                  }, child: const Text('Try Me'))
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('useState Example'),
                  ElevatedButton(onPressed: () {
                    Navigator.pushNamed(context, '/useState');
                  }, child: const Text('Try Me'))
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('useState & useEffect Example'),
                  ElevatedButton(onPressed: () {
                    Navigator.pushNamed(context, '/useState_useEffect');
                  }, child: const Text('Try Me'))
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('useMemoized Example'),
                  ElevatedButton(onPressed: () {
                    Navigator.pushNamed(context, '/useMemoized');
                  }, child: const Text('Try Me'))
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}