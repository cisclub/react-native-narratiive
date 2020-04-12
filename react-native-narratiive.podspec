require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-narratiive"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  React Native Narratiive
                   DESC
  s.homepage     = "https://github.com/shukerullah/react-native-narratiive"
  # brief license entry:
  s.license      = "MIT"
  # optional - use expanded license entry instead:
  # s.license    = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "cisclub" => "yourname@email.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/github_account/react-native-narratiive.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.ios.vendored_frameworks = 'ios/Framework/libEmTracker-1.3.0.a'
  s.requires_arc = true

  s.dependency "React"
end

