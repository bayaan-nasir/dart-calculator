class Unit {
  Map<String, Map<String, double>> _units = {
    "length": {
      "mm": 1000,
      "cm": 100,
      "m": 1,
    }
  };

  String? unit;
  String? type;
  double scale = 0;

  Unit(String unit, String type){
    this.unit = unit;
    this.type = type;
    this.scale = _units[type]?[unit] ?? 0;
  }

  double convertTo(Unit unit) {
    if (unit.type != this.type) throw Exception("The units should be of the same type.");
    return unit.scale / this.scale;
  }
}

