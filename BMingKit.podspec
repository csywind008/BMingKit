Pod::Spec.new do |s|
  s.name             = 'BMingKit'
  s.version          = '0.0.1'
  s.license          = 'MIT'
  s.summary          = 'An simple demo for person'
  s.description      = <<-DESC
                       An easy tool to show different styles of UIView objects without the need for subclassing.
                       DESC
  s.homepage         = 'https://github.com/csywind008/BMingKit'
  s.author           = { 'BeiMing' => "csyios@163.com" } 
  s.source           = { :git => 'https://github.com/csywind008/BMingKit.git', :tag => "0.0.1"}
  s.platform         = :ios, '5.0'
  s.requires_arc     = true
	
  s.source_files     = "BMingKit/Device/*.{h,m}"
  s.public_header_files = 'BMingKit/**/*.{h}'

  s.frameworks          = 'UIKit'
end
