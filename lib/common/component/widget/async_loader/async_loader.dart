import 'dart:async';

import 'package:flutter/widgets.dart';

typedef RequestCallback = Future Function();
typedef RenderLoadingCallback = Widget Function();
typedef RenderErrorCallback = Widget Function([Exception error]);
typedef RenderSuccessCallback = Widget Function({dynamic data});

enum LoadingState { success, loading, error }

class AsyncLoader extends StatefulWidget {
  final RequestCallback request;
  final RenderLoadingCallback loading;
  final RenderErrorCallback error;
  final RenderSuccessCallback success;

  AsyncLoader({
    Key key,
    @required this.request,
    @required this.loading,
    @required this.error,
    @required this.success,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => AsyncLoaderState();
}

class AsyncLoaderState extends State<AsyncLoader> {
  var _loadingState = LoadingState.loading;
  dynamic _data;
  Exception _error;

  @override
  void initState() {
    super.initState();
    _initState();
  }

  Future<void> reloadState() {
    return _initState();
  }

  Future<void> _initState() async {
    if (!mounted) return;

    setState(() {
      _loadingState = LoadingState.loading;
    });

    try {
      final data = await widget.request();

      if (!mounted) return;

      setState(() {
        _data = data;
        _loadingState = LoadingState.success;
      });
    } on Exception catch (e) {
      print(e);
      setState(() {
        _error = e;
        _data = null;
        _loadingState = LoadingState.error;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_loadingState == LoadingState.loading) return widget.loading();
    if (_loadingState == LoadingState.error) return widget.error(_error);

    return widget.success(data: _data);
  }
}
