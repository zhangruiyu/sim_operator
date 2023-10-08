import 'sim_operator_platform_interface.dart';

class SimOperator {
  Future<String?> getSimOperator() {
    return SimOperatorPlatform.instance.getSimOperator();
  }

  Future<String?> getSimOperatorName() {
    return SimOperatorPlatform.instance.getSimOperatorName();
  }
}
