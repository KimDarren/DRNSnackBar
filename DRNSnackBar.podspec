Pod::Spec.new do |s|
  s.name         = "DRNSnackBar"
  s.version      = "0.0.1"
  s.summary      = "Google Material snack bar for iOS."
  s.homepage     = "http://github.com/KimDarren/DRNSnackBar"
  s.screenshots  = "http://koreandarren.com/snackbar/ipadLandscape.png", "http://koreandarren.com/snackbar/iphone.png"
  s.license      = { :type => "WTFPL", :file => "LICENSE" }
  s.author       = { "KimDarren" => "korean.darren@gmail.com" }
  s.source       = { :git => "https://github.com/KimDarren/DRNSnackBar.git", :tag => "0.0.1" }
  s.platform     = :ios, '6.0'
  s.source_files = 'Classes/*.{h,m}'
  s.frameworks   = 'Foundation', 'UIKit'
  s.requires_arc = true
  s.social_media_url   = "http://fb.com/my.name.is.taejun"

end
