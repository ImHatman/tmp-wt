source 'https://github.com/CocoaPods/Specs.git'

platform :ios, :deployment_target => "9.0"

workspace 'WeaveTime'

xcodeproj 'WeaveTime.xcodeproj'

inhibit_all_warnings!

def import_pods
    pod 'AFNetworking', '~> 2.0'
end

target :'WeaveTime-production' do
       xcodeproj 'WeaveTime.xcodeproj'
       import_pods
end

target :'WeaveTime-internal' do
       xcodeproj 'WeaveTime.xcodeproj'
       import_pods
end
