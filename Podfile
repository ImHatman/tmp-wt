source 'https://github.com/CocoaPods/Specs.git'

platform :ios, :deployment_target => "9.0"

workspace 'WeaveTime'

xcodeproj 'WeaveTime.xcodeproj'

use_frameworks!
inhibit_all_warnings!

def import_pods
    pod 'AFNetworking', '~> 2.0'
    pod 'KYFloatingActionButton'
end

target :'WeaveTime-production' do
    xcodeproj 'WeaveTime.xcodeproj'
    import_pods
end

target :'WeaveTime-internal' do
    xcodeproj 'WeaveTime.xcodeproj'
    import_pods
end
