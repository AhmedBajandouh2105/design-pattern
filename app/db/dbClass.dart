class Dbclass {
  static Dbclass? _instance;
  List<Map<String, dynamic>> products = [
    {"name": "LT", "price": 400, "qty": 18},
    {"name": "Samsung S21 Ultra", "price": 3000, "qty": 5},
    {"name": "redmi", "price": 1500, "qty": 7}
  ];
  // singleton begin

  Dbclass._() {
    _connect();
  }

  static get instance {
    if (_instance == null) _instance = Dbclass._();
    return _instance;
  }

  _connect() {}
  List<Map<String, dynamic>> getData(String tableName) {
    if (tableName == "products")
      return products;
    else
      return [];
  }
  
  // senglton End
  insertData() {}
  deleteData() {}
}
