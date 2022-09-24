class Memory {
  // ignore: prefer_final_fields
  String _value = '0';

  String get value {
    return _value;
  }

  void applyComand(String command) {
    if (command == 'AC') {
      _allclear();
    }else{
      _value += command;
    }
  }

  void _allclear() {
    _value = '0';
  }
}
