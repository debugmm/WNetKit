#
# Be sure to run `pod lib lint WNetKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WNetKit'
  s.version          = '0.0.1'
  s.summary          = 'WNetKit is iOS Cronet Framework'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  WNetKit is iOS Cronet Framework.
                       DESC

  s.homepage         = 'https://gitlab.weibo.cn/wns/wnet'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = 'Private'
  s.author           = { "abuglife" => "abuglife@qq.com" }
  # { :git => 'https://github.com/abuglife/WNetKit.git', :tag => s.version }
  s.source           = { :git => 'https://github.com/abuglife/WNetKit.git', :tag => s.version }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  # NetKit
  s.source_files = 'NetKit/**/*.{h,m}'
  
  s.subspec "WNetFramework" do |ss|
    ss.vendored_frameworks = 'WNetFramework/*.framework'
    ss.source_files = 'WNetFramework/**/*.{h,m}'
  end

  # s.resource_bundles = {
  #   'WNetKit' => ['WNetKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
