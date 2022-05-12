import 'package:mobx/mobx.dart';

part 'counter_controller.g.dart';

class CounterController = CounterControllerBase with _$CounterController;

abstract class CounterControllerBase with Store {
  @observable
  int count = 0;

  @action
  void increment() => count++;

  @action
  void decrement() => count--;

  @computed
  bool get isEmpty => count == 0;

  @computed
  bool get isFull => count == 20;
}
