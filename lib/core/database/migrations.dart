abstract class Migration{
  int version();
  String up();
  String down();
}