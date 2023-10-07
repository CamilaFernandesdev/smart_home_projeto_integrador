import '../../models/smart_devices_model.dart';

class SmartDeviceController {
  List<SmartDevice> getSmartDevices() {
    return [
      SmartDevice(
        name: 'Lâmpada',
        type: 'Aparelho inteligente',
        hasOptions: true,
      ),
      SmartDevice(
        name: 'Lâmpada',
        type: 'Aparelho inteligente',
        hasOptions: false,
      ),
      // Add more smart devices here
    ];
  }
}
