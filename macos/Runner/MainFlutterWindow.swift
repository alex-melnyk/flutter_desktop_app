import Cocoa
import FlutterMacOS

class MainFlutterWindow: NSWindow {
  override func awakeFromNib() {
    self.minSize = NSSize.init(width: 980, height: 600)
    
    let flutterViewController = FlutterViewController.init()
    let windowFrame = NSRect.init(origin: self.frame.origin, size: self.minSize)
    self.contentViewController = flutterViewController
    self.setFrame(windowFrame, display: true)
    RegisterGeneratedPlugins(registry: flutterViewController)

    // Hiding the window title bar
    self.titleVisibility = NSWindow.TitleVisibility.hidden
    self.titlebarAppearsTransparent = true
    self.isMovableByWindowBackground = true
    // Add style mask to allow content in full window
    self.styleMask.insert(.fullSizeContentView)

    // Adding a NSVisualEffectView to act as a translucent background
    let contentView = contentViewController!.view
    let superView = contentView.superview!

    let blurView = NSVisualEffectView(frame: superView.bounds)
    blurView.autoresizingMask = [.width, .height]
    blurView.blendingMode = NSVisualEffectView.BlendingMode.behindWindow

    // Pick the correct material for the task
    blurView.material = NSVisualEffectView.Material.underWindowBackground

    // Replace the contentView and the background view
    superView.replaceSubview(contentView, with: blurView)
    blurView.addSubview(contentView)

    super.awakeFromNib()
  }
}
