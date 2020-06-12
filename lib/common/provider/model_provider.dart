import 'package:flutter/material.dart';
import 'package:flyme_app/shared/user_interface/view_model/view_model.dart';
import 'package:provider/provider.dart';

/// Provider 封装类
/// 支持 1 个 model
class ModelProvider<T extends ViewModel> extends StatefulWidget {
  final ValueWidgetBuilder<T> builder;
  final T model;
  final Widget child;
  final Function(T model) onReady;
  final bool autoDispose;

  ModelProvider({
    Key key,
    @required this.builder,
    @required this.model,
    this.child,
    this.onReady,
    this.autoDispose = true,
  }) : super(key: key);

  @override
  _ModelProviderState createState() => _ModelProviderState<T>();
}

class _ModelProviderState<T extends ViewModel> extends State<ModelProvider<T>> {
  T _model;

  @override
  void initState() {
    _model = widget.model;
    if (widget.onReady != null) {
      widget.onReady.call(_model);
    } else {
      _model.init();
    }
    super.initState();
  }

  @override
  void dispose() {
    if (widget.autoDispose) _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>.value(
      value: _model,
      child: Consumer<T>(
        builder: widget.builder,
        child: widget.child,
      ),
    );
  }
}

/// Provider 封装类
/// 支持 2 个 model
class ModelProvider2<A extends ViewModel, B extends ViewModel>
    extends StatefulWidget {
  final Widget Function(BuildContext context, A model, B model2, Widget child)
      builder;
  final A model;
  final B model2;
  final Widget child;
  final Function(A model, B model2) onReady;
  final bool autoDispose;

  ModelProvider2({
    Key key,
    @required this.builder,
    @required this.model,
    @required this.model2,
    this.child,
    this.onReady,
    this.autoDispose = true,
  }) : super(key: key);

  @override
  _ModelProviderState2<A, B> createState() => _ModelProviderState2<A, B>();
}

class _ModelProviderState2<A extends ViewModel, B extends ViewModel>
    extends State<ModelProvider2<A, B>> {
  A _model;
  B _model2;

  @override
  void initState() {
    _model = widget.model;
    _model2 = widget.model2;
    if (widget.onReady != null) {
      widget.onReady.call(_model, _model2);
    } else {
      _model.init();
      _model2.init();
    }
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
          ChangeNotifierProvider<A>.value(value: _model),
          ChangeNotifierProvider<B>.value(value: _model2),
        ],
        child: Consumer2<A, B>(
          builder: widget.builder,
          child: widget.child,
        ));
  }
}

/// Provider 封装类
/// 支持 3 个 model
class ModelProvider3<A extends ViewModel, B extends ViewModel,
    C extends ViewModel> extends StatefulWidget {
  final Widget Function(
      BuildContext context, A model, B model2, C model3, Widget child) builder;
  final A model;
  final B model2;
  final C model3;
  final Widget child;
  final Function(A model, B model2, C model3) onReady;
  final bool autoDispose;

  ModelProvider3({
    Key key,
    @required this.builder,
    @required this.model,
    @required this.model2,
    @required this.model3,
    this.child,
    this.onReady,
    this.autoDispose = true,
  }) : super(key: key);

  @override
  _ModelProviderState3<A, B, C> createState() =>
      _ModelProviderState3<A, B, C>();
}

class _ModelProviderState3<A extends ViewModel, B extends ViewModel,
    C extends ViewModel> extends State<ModelProvider3<A, B, C>> {
  A _model;
  B _model2;
  C _model3;

  @override
  void initState() {
    _model = widget.model;
    _model2 = widget.model2;
    _model3 = widget.model3;
    if (widget.onReady != null) {
      widget.onReady.call(_model, _model2, _model3);
    } else {
      _model.init();
      _model2.init();
      _model3.init();
    }
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
          ChangeNotifierProvider<A>.value(value: _model),
          ChangeNotifierProvider<B>.value(value: _model2),
          ChangeNotifierProvider<C>.value(value: _model3),
        ],
        child: Consumer3<A, B, C>(
          builder: widget.builder,
          child: widget.child,
        ));
  }
}

/// Provider 封装类
/// 支持 4 个 model
class ModelProvider4<A extends ViewModel, B extends ViewModel,
    C extends ViewModel, D extends ViewModel> extends StatefulWidget {
  final Widget Function(BuildContext context, A model, B model2, C model3,
      D model4, Widget child) builder;
  final A model;
  final B model2;
  final C model3;
  final D model4;
  final Widget child;
  final Function(A model, B model2, C model3, D model4) onReady;
  final bool autoDispose;

  ModelProvider4({
    Key key,
    @required this.builder,
    @required this.model,
    @required this.model2,
    @required this.model3,
    @required this.model4,
    this.child,
    this.onReady,
    this.autoDispose = true,
  }) : super(key: key);

  @override
  _ModelProviderState4<A, B, C, D> createState() =>
      _ModelProviderState4<A, B, C, D>();
}

class _ModelProviderState4<
    A extends ViewModel,
    B extends ViewModel,
    C extends ViewModel,
    D extends ViewModel> extends State<ModelProvider4<A, B, C, D>> {
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
    if (widget.onReady != null) {
      widget.onReady.call(_model, _model2, _model3, _model4);
    } else {
      _model.init();
      _model2.init();
      _model3.init();
      _model4.init();
    }
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
          ChangeNotifierProvider<A>.value(value: _model),
          ChangeNotifierProvider<B>.value(value: _model2),
          ChangeNotifierProvider<C>.value(value: _model3),
          ChangeNotifierProvider<D>.value(value: _model4),
        ],
        child: Consumer4<A, B, C, D>(
          builder: widget.builder,
          child: widget.child,
        ));
  }
}

/// Provider 封装类
/// 支持 5 个 model
class ModelProvider5<
    A extends ViewModel,
    B extends ViewModel,
    C extends ViewModel,
    D extends ViewModel,
    E extends ViewModel> extends StatefulWidget {
  final Widget Function(BuildContext context, A model, B model2, C model3,
      D model4, E model5, Widget child) builder;
  final A model;
  final B model2;
  final C model3;
  final D model4;
  final E model5;
  final Widget child;
  final Function(A model, B model2, C model3, D model4, E model5) onReady;
  final bool autoDispose;

  ModelProvider5({
    Key key,
    @required this.builder,
    @required this.model,
    @required this.model2,
    @required this.model3,
    @required this.model4,
    @required this.model5,
    this.child,
    this.onReady,
    this.autoDispose = true,
  }) : super(key: key);

  @override
  _ModelProviderState5<A, B, C, D, E> createState() =>
      _ModelProviderState5<A, B, C, D, E>();
}

class _ModelProviderState5<
    A extends ViewModel,
    B extends ViewModel,
    C extends ViewModel,
    D extends ViewModel,
    E extends ViewModel> extends State<ModelProvider5<A, B, C, D, E>> {
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
    if (widget.onReady != null) {
      widget.onReady.call(_model, _model2, _model3, _model4, _model5);
    } else {
      _model.init();
      _model2.init();
      _model3.init();
      _model4.init();
      _model5.init();
    }
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
          ChangeNotifierProvider<A>.value(value: _model),
          ChangeNotifierProvider<B>.value(value: _model2),
          ChangeNotifierProvider<C>.value(value: _model3),
          ChangeNotifierProvider<D>.value(value: _model4),
          ChangeNotifierProvider<E>.value(value: _model5),
        ],
        child: Consumer5<A, B, C, D, E>(
          builder: widget.builder,
          child: widget.child,
        ));
  }
}

/// Provider 封装类
/// 支持 6 个 model
class ModelProvider6<
    A extends ViewModel,
    B extends ViewModel,
    C extends ViewModel,
    D extends ViewModel,
    E extends ViewModel,
    F extends ViewModel> extends StatefulWidget {
  final Widget Function(BuildContext context, A model, B model2, C model3,
      D model4, E model5, F model6, Widget child) builder;
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

  ModelProvider6({
    Key key,
    @required this.builder,
    @required this.model,
    @required this.model2,
    @required this.model3,
    @required this.model4,
    @required this.model5,
    @required this.model6,
    this.child,
    this.onReady,
    this.autoDispose = true,
  }) : super(key: key);

  @override
  _ModelProviderState6<A, B, C, D, E, F> createState() =>
      _ModelProviderState6<A, B, C, D, E, F>();
}

class _ModelProviderState6<
    A extends ViewModel,
    B extends ViewModel,
    C extends ViewModel,
    D extends ViewModel,
    E extends ViewModel,
    F extends ViewModel> extends State<ModelProvider6<A, B, C, D, E, F>> {
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
    if (widget.onReady != null) {
      widget.onReady.call(_model, _model2, _model3, _model4, _model5, _model6);
    } else {
      _model.init();
      _model2.init();
      _model3.init();
      _model4.init();
      _model5.init();
      _model6.init();
    }
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
          ChangeNotifierProvider<A>.value(value: _model),
          ChangeNotifierProvider<B>.value(value: _model2),
          ChangeNotifierProvider<C>.value(value: _model3),
          ChangeNotifierProvider<D>.value(value: _model4),
          ChangeNotifierProvider<E>.value(value: _model5),
          ChangeNotifierProvider<F>.value(value: _model6),
        ],
        child: Consumer6<A, B, C, D, E, F>(
          builder: widget.builder,
          child: widget.child,
        ));
  }
}
