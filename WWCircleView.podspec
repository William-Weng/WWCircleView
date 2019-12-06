Pod::Spec.new do |s|

  s.name = "WWCircleView"
  s.version = "0.3.0"
  s.summary = "WWCircleView is a Round / Line progress bar, and Aniamton Label. (圓形 / 直線的進度條，動畫的Label)"
  s.homepage = "https://github.com/William-Weng/"
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.author = { "翁禹斌(William.Weng)" => "linuxice0609@gmail.com" }
  s.platform = :ios, "11.0"
  s.ios.vendored_frameworks = "WWCircleView.framework"
  s.source = { :git => "https://github.com/William-Weng/WWCircleView.git", :tag => "#{s.version}" }
  s.frameworks = 'UIKit'

end
