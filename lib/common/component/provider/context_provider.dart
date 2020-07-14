import 'dart:collection';

import 'package:flutter/material.dart';

LinkedHashMap<ContextProviderState, BuildContext> _contextMap = LinkedHashMap();

class ContextProvider extends StatefulWidget {
  static BuildContext context() => _contextMap.values.first;

  final Widget child;

  const ContextProvider({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => ContextProviderState();
}

class ContextProviderState extends State<ContextProvider> {
  @override
  void dispose() {
    _contextMap.remove(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Overlay(
        initialEntries: [
          OverlayEntry(
            builder: (context) {
              _contextMap[this] = context;
              return widget.child;
            },
          ),
        ],
      ),
    );
  }
}
