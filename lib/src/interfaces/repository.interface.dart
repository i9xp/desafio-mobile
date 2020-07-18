import 'package:desafioi9xp/src/enums/loading.enum.dart';

abstract class IRepository {
  ELoadingStatus getStatus();
}
