import 'package:i9xp_commerce/core/database/migrations.dart';

class CreateOrderItem extends Migration{
  
  @override
  int version() {
    return 1;
  }
  
  @override
  String down() {
    return "DROP TABLE IF EXISTS order_item";
  }

  @override
  String up() {
    return "CREATE TABLE IF NOT EXISTS order_item("
      "id INTEGER PRIMARY KEY AUTOINCREMENT,"       
      "product_id INTEGER,"    
      "quantity INTEGER,"    
      "price REAL,"    
      "name VARCHAR(60) NOT NULL," 
      "sku VARCHAR(60) NOT NULL," 
      "image_url VARCHAR(120) NOT NULL"       
    ")";
  } 

}