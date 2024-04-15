import 'package:flutter/material.dart';

class ZipcloudPage extends StatelessWidget {
  const ZipcloudPage._();

  static const routeName = '/zipcloud';

  static Route<void> route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const ZipcloudPage._(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(child: Text('ZipcloudPage')),
    );
  }
}
