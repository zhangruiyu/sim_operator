import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'sim_operator_method_channel.dart';

abstract class SimOperatorPlatform extends PlatformInterface {
  /// Constructs a SimOperatorPlatform.
  SimOperatorPlatform() : super(token: _token);

  static final Object _token = Object();

  static SimOperatorPlatform _instance = MethodChannelSimOperator();

  /// The default instance of [SimOperatorPlatform] to use.
  ///
  /// Defaults to [MethodChannelSimOperator].
  static SimOperatorPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SimOperatorPlatform] when
  /// they register themselves.
  static set instance(SimOperatorPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getSimOperator() {
    throw UnimplementedError('getSimOperator() has not been implemented.');
  }

  Future<String?> getSimOperatorName() {
    throw UnimplementedError('getSimOperatorName() has not been implemented.');
  }
}
