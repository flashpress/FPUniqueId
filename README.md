# FPUniqueId
Get unique device id for iOS, iOS Simulator and Android platform. 

# ExtensionID
```xml
<extensions>
    <extensionID>ru.flashpress.FPUniqueId</extensionID>
</extensions>
```

# Descriptor
For android:
```xml
<android>
    <manifestAdditions><![CDATA[
        <manifest android:installLocation="auto">
            <uses-permission android:name="android.permission.READ_PHONE_STATE"/>
            <uses-permission android:name="android.permission.ACCESS_WIFI_STATE"/>
            <uses-permission android:name="android.permission.BLUETOOTH"/>
        </manifest>]]>
    </manifestAdditions>
</android>
```

# Example
```ActionScript
import ru.flashpress.uid.FPUniqueId;
//
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
```
