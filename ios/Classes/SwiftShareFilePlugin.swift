import Flutter
import UIKit
    
public class SwiftShareFilePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "share_file", binaryMessenger: registrar.messenger())
    let instance = SwiftShareFilePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
   if ("open_file" == call.method) {
       let map = call.arguments as! NSDictionary;
       let path = map["file_path"] as! String;
       if (!FileManager.default.fileExists(atPath: path)) {
           result(FlutterError.init(code: "file_not_exists",
                   message: "File does not exists.",
                   details: nil));
       }
       let fileURL = URL.init(fileURLWithPath: path)
       let documentController = UIDocumentInteractionController.init(url: fileURL)
       documentController.presentPreview(animated: true);
       result("opening for  " + path)
    } else {
      result(FlutterMethodNotImplemented);
    }

  }
}
