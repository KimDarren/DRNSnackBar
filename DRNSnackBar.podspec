Pod::Spec.new do |s|
  s.name         = "DRNSnackBar"
  s.version      = "0.0.1"
  s.summary      = "Google Material snack bar for iOS."

  s.description  = <<-DESC
                   A longer description of DRNSnackBar in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "http://github.com/KimDarren/DRNSnackBar"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "KimDarren" => "korean.darren@gmail.com" }
  s.social_media_url   = "http://fb.com/my.name.is.taejun"

  # s.platform     = :ios
  # s.platform     = :ios, "5.0"

  s.source       = { :git => "http://EXAMPLE/DRNSnackBar.git", :tag => "0.0.1" }


  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"
  # s.public_header_files = "Classes/**/*.h"
  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"
  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"
  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"
  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"
  # s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
