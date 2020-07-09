abstract class Model<T extends Model<T>>{
  T parser(Map<String, dynamic> body);
  Map<String, dynamic> serializer();
}