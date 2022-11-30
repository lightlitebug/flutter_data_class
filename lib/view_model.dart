import 'package:equatable/equatable.dart';

class ViewModel extends Equatable {
  final String name;
  final void Function() doNothing;
  const ViewModel({
    required this.name,
    required this.doNothing,
  });

  @override
  List<Object> get props => [name];
}

class ViewModel2 extends Equatable {
  final String name;
  const ViewModel2({
    required this.name,
  });

  void printName() {
    print('name: $name');
  }

  @override
  List<Object> get props => [name];
}
