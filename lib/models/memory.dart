// ignore_for_file: prefer_final_fields

class Memory {
  String _value = '0';
  String _lastValue = '';
  String _operation = '';
  bool _clear = true;

  bool get clear {
    return _clear;
  }

  String get value {
    return _value;
  }

  String get lastValue {
    return _lastValue;
  }

  String get operation {
    return _operation;
  }

  void applyComand(String command) {
    if (command == 'AC') {
      _allclear();
    } else if (command == '/' || command == 'X' || command == '-' || command == '+' || command == '%') {
      _setOperation(command);
    } else if (command == '=') {
      _calculate();
    } else {
      if (clear) {
        _value = command;
        _clear = false;
      } else {
        _value += command;
      }
    }
  }

  void _calculate() {
    double valueNumber = double.parse(value);
    double lastValueNumber = double.parse(lastValue);
    if (operation == '+') {
      _value = (lastValueNumber + valueNumber).toString();
    } else if (operation == '-') {
      _value = (lastValueNumber - valueNumber).toString();
    } else if (operation == 'X') {
      _value = (lastValueNumber * valueNumber).toString();
    } else if (operation == '/') {
      if (valueNumber == 0) {
        _allclear();
        _value = "Infinit...";
      } else {
        _value = (lastValueNumber / valueNumber).toString();
      }
    } else if (operation == '%') {
      double percent = lastValueNumber / 100;
      _value = (valueNumber * percent).toString();
    }
    _clear = true;
  }

  void _setOperation(String command) {
    if (operation == '') {
      _lastValue = value;
      _operation = command;
      _clear = true;
    } else {
      _calculate();
      _lastValue = value;
      _operation = command;
    }
  }

  void _allclear() {
    _value = '0';
    _lastValue = '';
    _operation = '';
    _clear = true;
  }
}
