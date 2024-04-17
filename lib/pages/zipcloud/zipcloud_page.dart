import 'dart:async';

import 'package:flutter/material.dart';

import 'models/zipcloud_address_list.dart';
import 'repository/implements/zipcloud_repository_dio_impl.dart';

class ZipcloudPage extends StatefulWidget {
  const ZipcloudPage._();

  static const routeName = '/zipcloud';

  static Route<void> route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const ZipcloudPage._(),
    );
  }

  @override
  State<ZipcloudPage> createState() => _ZipcloudPageState();
}

class _ZipcloudPageState extends State<ZipcloudPage> {
  final _textEditingController = TextEditingController(text: '1500000');

  Completer<ZipcloudAddressList>? _completer;
  Future<ZipcloudAddressList?>? get _future => _completer?.future;

  Future<void> _search() async {
    await _completer?.future;

    setState(() {
      _completer = Completer()
        // TODO(tsuda): bloc かなんかで DI
        ..complete(ZipcloudRepositoryDioImpl()
            .search(zipcode: _textEditingController.text));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _textEditingController,
              ),
              const SizedBox(height: 24),
              FilledButton(
                onPressed: _search,
                child: const Text('search'),
              ),
              const SizedBox(height: 24),
              FutureBuilder(
                future: _future,
                builder: (context, snapshot) {
                  return switch (snapshot.connectionState) {
                    ConnectionState.none => const Text('データを取得しよう！'),
                    ConnectionState.waiting => const Center(
                        child: CircularProgressIndicator(),
                      ),
                    ConnectionState.active || ConnectionState.done => Text(
                        snapshot.data?.firstOrNull?.fullAddress ?? 'データ取得失敗',
                      ),
                  };
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
