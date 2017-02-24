//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(Locale.init) ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)
  
  static func validate() throws {
    try intern.validate()
  }
  
  /// This `R.color` struct is generated, and contains static references to 0 color palettes.
  struct color {
    fileprivate init() {}
  }
  
  /// This `R.file` struct is generated, and contains static references to 0 files.
  struct file {
    fileprivate init() {}
  }
  
  /// This `R.font` struct is generated, and contains static references to 0 fonts.
  struct font {
    fileprivate init() {}
  }
  
  /// This `R.image` struct is generated, and contains static references to 2 images.
  struct image {
    /// Image `Marker-100`.
    static let marker100 = Rswift.ImageResource(bundle: R.hostingBundle, name: "Marker-100")
    /// Image `拍照`.
    static let 拍照 = Rswift.ImageResource(bundle: R.hostingBundle, name: "拍照")
    
    /// `UIImage(named: "Marker-100", bundle: ..., traitCollection: ...)`
    static func marker100(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.marker100, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "拍照", bundle: ..., traitCollection: ...)`
    static func 拍照(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.拍照, compatibleWith: traitCollection)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.nib` struct is generated, and contains static references to 0 nibs.
  struct nib {
    fileprivate init() {}
  }
  
  /// This `R.reuseIdentifier` struct is generated, and contains static references to 1 reuse identifiers.
  struct reuseIdentifier {
    /// Reuse identifier `photo`.
    static let photo: Rswift.ReuseIdentifier<UIKit.UIView> = Rswift.ReuseIdentifier(identifier: "photo")
    
    fileprivate init() {}
  }
  
  /// This `R.segue` struct is generated, and contains static references to 1 view controllers.
  struct segue {
    /// This struct is generated for `PhotoBackgroundViewController`, and contains static references to 1 segues.
    struct photoBackgroundViewController {
      /// Segue identifier `photoPage`.
      static let photoPage: Rswift.StoryboardSegueIdentifier<UIKit.UIStoryboardSegue, PhotoBackgroundViewController, PhotoPageViewController> = Rswift.StoryboardSegueIdentifier(identifier: "photoPage")
      
      /// Optionally returns a typed version of segue `photoPage`.
      /// Returns nil if either the segue identifier, the source, destination, or segue types don't match.
      /// For use inside `prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)`.
      static func photoPage(segue: UIKit.UIStoryboardSegue) -> Rswift.TypedStoryboardSegueInfo<UIKit.UIStoryboardSegue, PhotoBackgroundViewController, PhotoPageViewController>? {
        return Rswift.TypedStoryboardSegueInfo(segueIdentifier: R.segue.photoBackgroundViewController.photoPage, segue: segue)
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  /// This `R.storyboard` struct is generated, and contains static references to 2 storyboards.
  struct storyboard {
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `Main`.
    static let main = _R.storyboard.main()
    
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    
    /// `UIStoryboard(name: "Main", bundle: ...)`
    static func main(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.main)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.string` struct is generated, and contains static references to 0 localization tables.
  struct string {
    fileprivate init() {}
  }
  
  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }
    
    fileprivate init() {}
  }
  
  fileprivate class Class {}
  
  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    try storyboard.validate()
  }
  
  struct nib {
    fileprivate init() {}
  }
  
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      try main.validate()
    }
    
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType {
      typealias InitialController = UIKit.UIViewController
      
      let bundle = R.hostingBundle
      let name = "LaunchScreen"
      
      fileprivate init() {}
    }
    
    struct main: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = MapViewController
      
      let addHydrantNavigationController = StoryboardViewControllerResource<UIKit.UINavigationController>(identifier: "AddHydrantNavigationController")
      let bundle = R.hostingBundle
      let menuViewController = StoryboardViewControllerResource<MenuViewController>(identifier: "MenuViewController")
      let name = "Main"
      let photoBackgroundViewController = StoryboardViewControllerResource<PhotoBackgroundViewController>(identifier: "PhotoBackgroundViewController")
      let photoPageViewController = StoryboardViewControllerResource<PhotoPageViewController>(identifier: "PhotoPageViewController")
      let photoViewController = StoryboardViewControllerResource<PhotoViewController>(identifier: "PhotoViewController")
      
      func addHydrantNavigationController(_: Void = ()) -> UIKit.UINavigationController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: addHydrantNavigationController)
      }
      
      func menuViewController(_: Void = ()) -> MenuViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: menuViewController)
      }
      
      func photoBackgroundViewController(_: Void = ()) -> PhotoBackgroundViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: photoBackgroundViewController)
      }
      
      func photoPageViewController(_: Void = ()) -> PhotoPageViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: photoPageViewController)
      }
      
      func photoViewController(_: Void = ()) -> PhotoViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: photoViewController)
      }
      
      static func validate() throws {
        if _R.storyboard.main().photoPageViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'photoPageViewController' could not be loaded from storyboard 'Main' as 'PhotoPageViewController'.") }
        if _R.storyboard.main().photoViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'photoViewController' could not be loaded from storyboard 'Main' as 'PhotoViewController'.") }
        if _R.storyboard.main().menuViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'menuViewController' could not be loaded from storyboard 'Main' as 'MenuViewController'.") }
        if _R.storyboard.main().addHydrantNavigationController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'addHydrantNavigationController' could not be loaded from storyboard 'Main' as 'UIKit.UINavigationController'.") }
        if _R.storyboard.main().photoBackgroundViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'photoBackgroundViewController' could not be loaded from storyboard 'Main' as 'PhotoBackgroundViewController'.") }
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate init() {}
}