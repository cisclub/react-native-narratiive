require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-narratiive"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = "MIT"
  s.author       = { package["author"]["name"] => package["author"]["email"] }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "#{package["repository"]["url"]}", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m}"
  #s.ios.vendored_frameworks = 'ios/Frameworks/libEmTracker.a'
  s.requires_arc = true

  s.dependency "React"
end

