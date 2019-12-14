require 'dotenv/load'

name_of_project = ENV["APP_TARGET_NAME"]

platform :ios, '11.0'
use_frameworks!
inhibit_all_warnings!

def developmentDependencies
    pod 'SwiftFormat/CLI'
    pod 'SwiftLint'
    pod 'Sourcery'
end 

def commonDepencencies    
    pod 'Moya/RxSwift', '~> 14.0.0-beta.6'
    pod 'RxCocoa', '~> 5.0.0'
    pod "RxCoreData", "~> 1.0.0"

    pod 'Firebase/Analytics'
    pod 'Firebase/RemoteConfig'
    pod 'Firebase/Messaging'
    pod 'Firebase/DynamicLinks'
    pod 'Firebase/Performance'
    pod 'Fabric', '~> 1.10.2'
    pod 'Crashlytics', '~> 3.13.4'

    pod 'Kingfisher', '~> 5.7.0'
    pod 'KeychainAccess', '~> 3.2.0'
    pod 'Empty', '~> 0.1'
    pod 'PleaseHold', '~> 0.2'
    pod 'Swapper', '~> 0.1'
    pod 'IQKeyboardManagerSwift', '~> 6.4.0'
    pod 'Wendy', :git => "https://github.com/levibostian/wendy-ios", :commit => "b7cbdc1c1a" # '~> 0.2.0-alpha'
    pod 'SnapKit', '~> 5.0.0'
    pod 'Teller', '~> 0.5.0'
end 

target name_of_project do
    commonDepencencies()
    developmentDependencies()
end

target "#{name_of_project}Tests" do
    commonDepencencies()
end

target "#{name_of_project}UITests" do
    commonDepencencies()
end

