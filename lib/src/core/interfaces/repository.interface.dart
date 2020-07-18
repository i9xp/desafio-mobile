import 'package:desafioi9xp/src/core/enums/loading.enum.dart';

abstract class IRepository {
  ELoadingStatus getStatus();
}
