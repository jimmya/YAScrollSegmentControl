#
# Be sure to run `pod lib lint YAScrollSegmentControl.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "YAScrollSegmentControl"
  s.version          = "0.1.0"
  s.summary          = "Beautiful and easy to use scrolling segment control."
  s.description      = <<-DESC
                        A simple control for implementing a beautiful scrolling segment control. With adaptive gradient to tease the user to explore all the items in the list. Fully customizable either by code or using interface builder.
                       DESC
  s.homepage         = "https://github.com/jimmya/YAScrollSegmentControl"
  s.screenshots     = "https://raw.githubusercontent.com/jimmya/YAScrollSegmentControl/master/screen2.png"
  s.license          = 'MIT'
  s.author           = { "jimmy" => "arts.jimmy@gmail.com" }
  s.source           = { :git => "https://github.com/jimmya/YAScrollSegmentControl.git", :tag => s.version }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'YAScrollSegmentControl' => ['Pod/Assets/*.png']
  }
end
