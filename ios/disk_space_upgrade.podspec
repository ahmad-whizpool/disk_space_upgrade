#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'disk_space_upgrade'
  s.version          = '0.0.5'
  s.summary          = 'A tiny Flutter Plugin to show free and total disk space.'
  s.description      = <<-DESC
A tiny Flutter Plugin to show free and total disk space.
                       DESC
  s.homepage         = 'https://github.com/ahmad-whizpool/disk_space_upgrade.git'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'disk_space_upgrade/Sources/disk_space_upgrade/**/*.swift'
  s.dependency 'Flutter'
  s.platform = :ios, '12.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  s.resource_bundles = {'disk_space_upgrade_privacy' => ['disk_space_upgrade/Sources/disk_space_upgrade/PrivacyInfo.xcprivacy']}
end
