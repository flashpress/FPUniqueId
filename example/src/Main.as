package {

    import flash.display.Sprite;
    import flash.text.TextField;

    import ru.flashpress.uid.FPUniqueId;

    public class Main extends Sprite
    {
        import ru.flashpress.uid.FPUniqueId;

        public function Main()
        {
            trace('identifier: '+FPUniqueId.id);
            trace('wifiMac: '+FPUniqueId.wifiMac);
            //
            switch (FPUniqueId.platform) {
                // iOS platform
                case 1:
                    trace('keychainId: '+FPUniqueId.keychainId);
                    break;
                //
                // Android platform
                case 2:
                    trace('imei: '+FPUniqueId.imei);
                    trace('phoneNumber: '+FPUniqueId.phoneNumber);
                    trace('simSerialNumber: '+FPUniqueId.simSerialNumber);
                    trace('bluetoothId: '+FPUniqueId.bluetoothId);
                    break;
            }
        }
    }
}
