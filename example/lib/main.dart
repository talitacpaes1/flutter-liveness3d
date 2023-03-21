import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:oiti_liveness3d/oiti_liveness3d.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';
  final _oitiLiveness3dPlugin = OitiLiveness3d();

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    try {
      platformVersion = await _oitiLiveness3dPlugin.getPlatformVersion() ??
          'Unknown platform version';
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Liveness 3D - Flutter'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () async {
                    // var status = await Permission.camera.request();
                    final appKey =
                        "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJjZXJ0aWZhY2UiLCJ1c2VyIjoiMDhDOTczQTc2NTZGQUU0MEQ2OTMzMDZCODI4MDVCQTQyfG9pdGkuZmFjZXRlYy5obWwiLCJlbXBDb2QiOiIwMDAwMDAwMDAxIiwiZmlsQ29kIjoiMDAwMDAwMjc2OSIsImNwZiI6IjU0MjczOTY2MDg1Iiwibm9tZSI6Ijk4RUU4RUVEOEEzOUJFN0IzRjY3OTZFOEVBNzZFNEU3ODlBMTkwOTMyOTFDNDJGMjYyMUMyMzlGMTU1RkE4QTkwMTM0NkQyREI4MDUxRDM3N0E3NzlFMkEzMTMyRkNENDNFOEQ0QjIzM0MyNTg2NTdBQTlBNzU3OTE2RUY5NzU5fEFTSEFVQVMgQVNVSEFTSFUgQVNVSCIsIm5hc2NpbWVudG8iOiIwOC8xMC8xOTkxIiwiZWFzeS1pbmRleCI6IkFBQUFFcjE5TnhqVHc4TmI5dDNJRW53cnU0dTMyZlkxdWVBZ0VIcTB4S1h3Tm9ob0hXMXd5Z0RwN3pPMjZBPT0iLCJrZXkiOiJRV3hzYjNkaGJtTmxJSEpsY0hWc2MybDJaU0J6WlhnZ2JXRjVJR052Ym5SaGFXND0iLCJleHAiOjE2NzY2NDUzMTIsImlhdCI6MTY3NjY0NTAxMn0.HsVjuc8r3bjhbHIhbKHPSqir43X_Sfz0K95w2OvbSzQ";
                    print("\n$appKey\n");
                    try {
                      final x = await OitiLiveness3d.startLiveness(
                          "https://comercial.certiface.com.br:8443", appKey,
                          isProd: false);
                      print(x);
                    } catch (e) {
                      print(e.toString());
                    }
                  },
                  child: Text("Liveness 3D"))
            ],
          ),
        ),
      ),
    );
  }
}
