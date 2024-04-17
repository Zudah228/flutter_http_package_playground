import 'package:flutter/material.dart';

import 'pages/zipcloud/zipcloud_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(),
            body: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: <_Page>[
                const _Page(
                  route: ZipcloudPage.route,
                  title: 'zipcloud',
                )
              ]
                  .map(
                    (page) => Card(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(page.route());
                        },
                        child: Center(child: Text(page.title)),
                      ),
                    ),
                  )
                  .toList(),
            ),
          );
        },
      ),
    );
  }
}

@immutable
class _Page {
  const _Page({required this.title, required this.route});

  final String title;
  final Route<void> Function() route;
}
