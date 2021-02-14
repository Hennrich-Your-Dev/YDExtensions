
Pod::Spec.new do |spec|

  spec.name             = "YDExtensions"
  spec.version          = "1.0.35"
  spec.summary          = "A short description of YDExtensions."
  spec.license          = "MIT"
  spec.author           = { "Douglas Hennrich" => "douglashennrich@yourdev.com.br" }
  spec.homepage         = "https://yourdev.com.br"

  spec.platform         = :ios, "11.0"
  spec.source           = { :git => "https://github.com/Hennrich-Your-Dev/YDExtensions.git", :tag => "#{spec.version}" }

  spec.source_files     = "YDExtensions/**/*.{h,m,swift}"
  spec.swift_version    = "5.0"
  spec.resources        = ["YDExtensions/Assets.xcassets"]
  spec.resource_bundles = { "YDExtensions" => ["YDExtensions/Assets.xcassets/*"] }

  spec.dependency        "Kingfisher", "~> 5.0"
  spec.dependency        "KingfisherWebP", "1.0.0"
end
