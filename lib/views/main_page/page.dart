import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class MainPage extends Page<MainPageState, Map<String, dynamic>>
    with TickerProviderMixin {
  MainPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<MainPageState>(
              adapter: null, slots: <String, Dependent<MainPageState>>{}),
          middleware: <Middleware<MainPageState>>[],
        );
}
