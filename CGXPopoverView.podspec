Pod::Spec.new do |s|
  s.name         = "CGXPopoverView"    #存储库名称
  s.version      = "1.0"      #版本号，与tag值一致
  s.summary      = "仿微信、QQ右侧弹框"  #简介
  s.description  = "a CGXPopoverView 仿QQ右侧弹框,自定义有无图标"  #描述
  s.homepage     = "https://github.com/974794055/CGXPopoverView-OC"      #项目主页，不是git地址
  s.license      = { :type => "MIT", :file => "LICENSE" }   #开源协议
  s.author             = { "974794055" => "974794055@qq.com" }  #作者
  s.platform     = :ios, "8.0"                  #支持的平台和版本号
  s.source       = { :git => "https://github.com/974794055/CGXPopoverView-OC.git", :tag => s.version }         #存储库的git地址，以及tag值
  s.source_files  =  "CGXPopoverView/**/*.{h,m}" #需要托管的源代码路径
  s.requires_arc = true #是否支持ARC

end