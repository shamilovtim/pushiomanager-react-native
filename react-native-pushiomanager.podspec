require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-pushiomanager"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = "https://github.com/pushio"
  s.license      = "UPL-1.0"
  # s.license    = { :type => "UPL-1.0", :file => "FILE_LICENSE" }
  s.authors      = { "Responsys" => "support@oracle.coms" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/github_account/react-native-pushiomanager.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"
  s.dependency "PushIOManager"
end

