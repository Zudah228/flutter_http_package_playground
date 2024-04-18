import 'dart:async';

import 'package:flutter/material.dart';

import 'models/zipcloud_address_list.dart';
import 'repository/implements/zipcloud_repository_dio_impl.dart';
import 'repository/implements/zipcloud_repository_http_impl.dart';
import 'repository/zipcloud_repository.dart';

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

  ZipcloudRepositoryImplements _repositoryImplement =
      ZipcloudRepositoryImplements.http;
  ZipcloudRepository get _repository => switch (_repositoryImplement) {
        ZipcloudRepositoryImplements.http => ZipcloudRepositoryHttpImpl(),
        ZipcloudRepositoryImplements.dio => ZipcloudRepositoryDioImpl(),
      };

  Future<void> _search() async {
    await _completer?.future;

    setState(() {
      _completer = Completer()
        ..complete(_repository.search(zipcode: _textEditingController.text));
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
              SegmentedButton(
                segments: const [
                  ButtonSegment(
                    value: ZipcloudRepositoryImplements.dio,
                    label: Text('dio'),
                  ),
                  ButtonSegment(
                    value: ZipcloudRepositoryImplements.http,
                    label: Text('http'),
                  ),
                ],
                selected: {_repositoryImplement},
                onSelectionChanged: (p0) {
                  _repositoryImplement =
                      p0.firstOrNull ?? ZipcloudRepositoryImplements.http;
                  setState(() {});
                },
              ),
              const SizedBox(height: 32),
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
