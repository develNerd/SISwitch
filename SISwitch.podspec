#
# Be sure to run `pod lib lint SISwitch.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
 s.name             = 'SISwitch'
 s.version          = '0.1.8'
 s.summary          = 'SIWitch presents an easily way to create a custom switch in SwiftUI'
 s.swift_version = '4.0'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
SISwitch helps developres eaisly integrate a switch into their applications instead of the one provided by SWiftUI
                       DESC

  s.homepage         = 'https://github.com/develNerd/SISwitch.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'x-oauth-basic' => 'isaacakakpo4@gmail.com' }
  s.source           = { :git => 'https://github.com/develNerd/SISwitch.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.5'

  s.source_files = 'Classes/**/*'

  
  # s.resource_bundles = {
  #   'SISwitch' => ['SISwitch/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
