Pod::Spec.new do |s|

s.name         = "MBack"
s.version      = "1.0.1"
s.summary      = "Custom backBarButtonItem"
s.description  = "Custom backBarButtonItem in Swift."
s.homepage     = "https://github.com/MZC0829/MBack"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author       = { "maizhichao" => "1005756105@qq.com" }
s.platform     = :ios, "9.0"
s.source       = { :git => "https://github.com/MZC0829/MBack.git", :tag => s.version }
s.source_files  = "MBack/Extension.swift"
s.requires_arc = true
s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }

end
