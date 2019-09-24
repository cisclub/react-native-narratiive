
Pod::Spec.new do |s|
  s.name         = "RNNarratiive"
  s.version      = "1.0.0"
  s.summary      = "RNNarratiive"
  s.description  = <<-DESC
                  React Native Narratiive
                   DESC
  s.homepage     = "https://github.com/shukerullah/react-native-narratiive"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/RNNarratiive.git", :tag => "master" }
  s.source_files  = "RNNarratiive/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  
