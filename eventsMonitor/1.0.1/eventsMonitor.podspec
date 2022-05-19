#
# Be sure to run `pod lib lint eventsMonitor.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'eventsMonitor'
  s.version          = '1.0.1'
  s.summary          = 'A library to capture every user action and analyse the user experience of the app.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      =  'Capture every touch events and get user analysis report to track the user experience behaviour and get the system improved by results.'

  s.homepage         = 'https://www.google.com/'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'rickmrobin@gmail.com' => 'Maria.Robin' }
  s.source           = { :git => 'https://github.com/rickmrobin/eventsMonitor.git', :branch => "master", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'
  s.swift_versions = '4.0'

  s.source_files = 'eventsMonitor/Classes/**/*'
  
  s.resource_bundles = {'eventsMonitor' => ['eventsMonitor/**/*.{xcdatamodeld}']}
 
#
  # s.resource_bundles = {
  #   'eventsMonitor' => ['eventsMonitor/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
