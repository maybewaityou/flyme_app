import 'package:flutter/material.dart';
import 'package:flyme_ddd/flyme_ddd.dart';
import 'package:provider/provider.dart';

/// Provider 封装类
/// 支持 1 个 model
class ModelSelectorProvider<T extends ViewModel, S> extends StatefulWidget {
  final ValueWidgetBuilder<S> builder;
  final S Function(BuildContext, T) selector;
  final T model;
  final Widget child;
  final Function(T model) onReady;
  final bool autoDispose;

  ModelSelectorProvider({
    Key key,
    @required this.builder,
    @required this.model,
    @required this.selector,
    this.child,
    this.onReady,
    this.autoDispose = true,
  }) : super(key: key);

  _ModelSelectorProviderState<T, S> createState() =>
      _ModelSelectorProviderState<T, S>();
}

class _ModelSelectorProviderState<T extends ViewModel, S>
    extends State<ModelSelectorProvider<T, S>> {
  T model;

  @override
  void initState() {
    model = widget.model;
    widget.onReady?.call(model);
    super.initState();
  }

  @override
  void dispose() {
    if (widget.autoDispose) model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>.value(
      value: model,
      child: Selector<T, S>(
        selector: widget.selector,
        builder: widget.builder,
        child: widget.child,
      ),
    );
  }
}

/// Provider 封装类
/// 支持 2 个 model
class ModelSelectorProvider2<A extends ViewModel, B extends ViewModel, S>
    extends StatefulWidget {
  final ValueWidgetBuilder<S> builder;
  final S Function(BuildContext, A, B) selector;
  final A model;
  final B model2;
  final Widget child;
  final Function(A model, B model2) onReady;
  final bool autoDispose;

  ModelSelectorProvider2({
    Key key,
    @required this.builder,
    @required this.model,
    @required this.model2,
    @required this.selector,
    this.child,
    this.onReady,
    this.autoDispose = true,
  }) : super(key: key);

  _ModelSelectorProviderState2<A, B, S> createState() =>
      _ModelSelectorProviderState2<A, B, S>();
}

class _ModelSelectorProviderState2<A extends ViewModel, B extends ViewModel, S>
    extends State<ModelSelectorProvider2<A, B, S>> {
  A _model;
  B _model2;

  @override
  void initState() {
    _model = widget.model;
    _model2 = widget.model2;
    widget.onReady?.call(_model, _model2);
    super.initState();
  }

  @override
  void dispose() {
    if (widget.autoDispose) {
      _model.dispose();
      _model2.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: _model),
        ChangeNotifierProvider.value(value: _model2),
      ],
      child: Selector2<A, B, S>(
        selector: widget.selector,
        builder: widget.builder,
        child: widget.child,
      ),
    );
  }
}

/// Provider 封装类
/// 支持 3 个 model
class ModelSelectorProvider3<A extends ViewModel, B extends ViewModel,
    C extends ViewModel, S> extends StatefulWidget {
  final ValueWidgetBuilder<S> builder;
  final S Function(BuildContext, A, B, C) selector;
  final A model;
  final B model2;
  final C model3;
  final Widget child;
  final Function(A model, B model2, C model3) onReady;
  final bool autoDispose;

  ModelSelectorProvider3({
    Key key,
    @required this.builder,
    @required this.model,
    @required this.model2,
    @required this.model3,
    @required this.selector,
    this.child,
    this.onReady,
    this.autoDispose = true,
  }) : super(key: key);

  _ModelSelectorProviderState3<A, B, C, S> createState() =>
      _ModelSelectorProviderState3<A, B, C, S>();
}

class _ModelSelectorProviderState3<A extends ViewModel, B extends ViewModel,
    C extends ViewModel, S> extends State<ModelSelectorProvider3<A, B, C, S>> {
  A _model;
  B _model2;
  C _model3;

  @override
  void initState() {
    _model = widget.model;
    _model2 = widget.model2;
    _model3 = widget.model3;
    widget.onReady?.call(_model, _model2, _model3);
    super.initState();
  }

  @override
  void dispose() {
    if (widget.autoDispose) {
      _model.dispose();
      _model2.dispose();
      _model3.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: _model),
        ChangeNotifierProvider.value(value: _model2),
        ChangeNotifierProvider.value(value: _model3),
      ],
      child: Selector3<A, B, C, S>(
        selector: widget.selector,
        builder: widget.builder,
        child: widget.child,
      ),
    );
  }
}

/// Provider 封装类
/// 支持 4 个 model
class ModelSelectorProvider4<A extends ViewModel, B extends ViewModel,
    C extends ViewModel, D extends ViewModel, S> extends StatefulWidget {
  final ValueWidgetBuilder<S> builder;
  final S Function(BuildContext, A, B, C, D) selector;
  final A model;
  final B model2;
  final C model3;
  final D model4;
  final Widget child;
  final Function(A model, B model2, C model3, D model4) onReady;
  final bool autoDispose;

  ModelSelectorProvider4({
    Key key,
    @required this.builder,
    @required this.model,
    @required this.model2,
    @required this.model3,
    @required this.model4,
    @required this.selector,
    this.child,
    this.onReady,
    this.autoDispose = true,
  }) : super(key: key);

  _ModelSelectorProviderState4<A, B, C, D, S> createState() =>
      _ModelSelectorProviderState4<A, B, C, D, S>();
}

class _ModelSelectorProviderState4<
    A extends ViewModel,
    B extends ViewModel,
    C extends ViewModel,
    D extends ViewModel,
    S> extends State<ModelSelectorProvider4<A, B, C, D, S>> {
  A _model;
  B _model2;
  C _model3;
  D _model4;

  @override
  void initState() {
    _model = widget.model;
    _model2 = widget.model2;
    _model3 = widget.model3;
    _model4 = widget.model4;
    widget.onReady?.call(_model, _model2, _model3, _model4);
    super.initState();
  }

  @override
  void dispose() {
    if (widget.autoDispose) {
      _model.dispose();
      _model2.dispose();
      _model3.dispose();
      _model4.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: _model),
        ChangeNotifierProvider.value(value: _model2),
        ChangeNotifierProvider.value(value: _model3),
        ChangeNotifierProvider.value(value: _model4),
      ],
      child: Selector4<A, B, C, D, S>(
        selector: widget.selector,
        builder: widget.builder,
        child: widget.child,
      ),
    );
  }
}

/// Provider 封装类
/// 支持 5 个 model
class ModelSelectorProvider5<
    A extends ViewModel,
    B extends ViewModel,
    C extends ViewModel,
    D extends ViewModel,
    E extends ViewModel,
    S> extends StatefulWidget {
  final ValueWidgetBuilder<S> builder;
  final S Function(BuildContext, A, B, C, D, E) selector;
  final A model;
  final B model2;
  final C model3;
  final D model4;
  final E model5;
  final Widget child;
  final Function(A model, B model2, C model3, D model4, E model5) onReady;
  final bool autoDispose;

  ModelSelectorProvider5({
    Key key,
    @required this.builder,
    @required this.model,
    @required this.model2,
    @required this.model3,
    @required this.model4,
    @required this.model5,
    @required this.selector,
    this.child,
    this.onReady,
    this.autoDispose = true,
  }) : super(key: key);

  _ModelSelectorProviderState5<A, B, C, D, E, S> createState() =>
      _ModelSelectorProviderState5<A, B, C, D, E, S>();
}

class _ModelSelectorProviderState5<
    A extends ViewModel,
    B extends ViewModel,
    C extends ViewModel,
    D extends ViewModel,
    E extends ViewModel,
    S> extends State<ModelSelectorProvider5<A, B, C, D, E, S>> {
  A _model;
  B _model2;
  C _model3;
  D _model4;
  E _model5;

  @override
  void initState() {
    _model = widget.model;
    _model2 = widget.model2;
    _model3 = widget.model3;
    _model4 = widget.model4;
    _model5 = widget.model5;
    widget.onReady?.call(_model, _model2, _model3, _model4, _model5);
    super.initState();
  }

  @override
  void dispose() {
    if (widget.autoDispose) {
      _model.dispose();
      _model2.dispose();
      _model3.dispose();
      _model4.dispose();
      _model5.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: _model),
        ChangeNotifierProvider.value(value: _model2),
        ChangeNotifierProvider.value(value: _model3),
        ChangeNotifierProvider.value(value: _model4),
        ChangeNotifierProvider.value(value: _model5),
      ],
      child: Selector5<A, B, C, D, E, S>(
        selector: widget.selector,
        builder: widget.builder,
        child: widget.child,
      ),
    );
  }
}

/// Provider 封装类
/// 支持 6 个 model
class ModelSelectorProvider6<
    A extends ViewModel,
    B extends ViewModel,
    C extends ViewModel,
    D extends ViewModel,
    E extends ViewModel,
    F extends ViewModel,
    S> extends StatefulWidget {
  final ValueWidgetBuilder<S> builder;
  final S Function(BuildContext, A, B, C, D, E, F) selector;
  final A model;
  final B model2;
  final C model3;
  final D model4;
  final E model5;
  final F model6;
  final Widget child;
  final Function(A model, B model2, C model3, D model4, E model5, F model6)
      onReady;
  final bool autoDispose;

  ModelSelectorProvider6({
    Key key,
    @required this.builder,
    @required this.model,
    @required this.model2,
    @required this.model3,
    @required this.model4,
    @required this.model5,
    @required this.model6,
    @required this.selector,
    this.child,
    this.onReady,
    this.autoDispose = true,
  }) : super(key: key);

  _ModelSelectorProviderState6<A, B, C, D, E, F, S> createState() =>
      _ModelSelectorProviderState6<A, B, C, D, E, F, S>();
}

class _ModelSelectorProviderState6<
    A extends ViewModel,
    B extends ViewModel,
    C extends ViewModel,
    D extends ViewModel,
    E extends ViewModel,
    F extends ViewModel,
    S> extends State<ModelSelectorProvider6<A, B, C, D, E, F, S>> {
  A _model;
  B _model2;
  C _model3;
  D _model4;
  E _model5;
  F _model6;

  @override
  void initState() {
    _model = widget.model;
    _model2 = widget.model2;
    _model3 = widget.model3;
    _model4 = widget.model4;
    _model5 = widget.model5;
    _model6 = widget.model6;
    widget.onReady?.call(_model, _model2, _model3, _model4, _model5, _model6);
    super.initState();
  }

  @override
  void dispose() {
    if (widget.autoDispose) {
      _model.dispose();
      _model2.dispose();
      _model3.dispose();
      _model4.dispose();
      _model5.dispose();
      _model6.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: _model),
        ChangeNotifierProvider.value(value: _model2),
        ChangeNotifierProvider.value(value: _model3),
        ChangeNotifierProvider.value(value: _model4),
        ChangeNotifierProvider.value(value: _model5),
        ChangeNotifierProvider.value(value: _model6),
      ],
      child: Selector6<A, B, C, D, E, F, S>(
        selector: widget.selector,
        builder: widget.builder,
        child: widget.child,
      ),
    );
  }
}
