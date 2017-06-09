require "appium_lib"

def caps
    { caps: { deviceName: "N",
        platformName: "Android",
        app: (File.join(File.dirname(__FILE__), "PreciseUnitConversion.apk")),
        appPackage: "com.ba.universalconverter",
        appActivity: "MainConverterActivity",
        newCommandTimeout: "3600",
        appium_lib: {
          wait: 0,
          debug: false
        }
      }
    }
end

Appium::Driver.new(caps)
Appium.promote_appium_methods Object
