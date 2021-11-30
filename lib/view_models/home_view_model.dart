import 'package:mvvm_1/models/counter_model.dart';

class HomeViewModel {
  String title = 'Counter Page';

  CounterModel counter = CounterModel();

  int getCounter() {
    return counter.count;
  }

  void increaseCounter() {
    counter.count++;
  }

  void decreaseCounter() {
    counter.count--;
  }

  void resetCounter() {
    counter.count = 0;
  }
}
