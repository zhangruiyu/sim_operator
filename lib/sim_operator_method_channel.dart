import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'sim_operator_platform_interface.dart';

/// An implementation of [SimOperatorPlatform] that uses method channels.
class MethodChannelSimOperator extends SimOperatorPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('sim_operator');

  @override
  Future<String?> getSimOperator() async {
    final name = await methodChannel.invokeMethod<String>('getSimOperator');
    return name;
  }

  @override
  Future<String?> getSimOperatorName() async {
    final name = await methodChannel.invokeMethod<String>('getSimOperatorName');
    return name;
  }
}
