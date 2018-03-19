# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'CryptoTracker' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for CryptoTracker
  pod 'RxSwift',    '~> 4.0'
  pod 'RxCocoa',    '~> 4.0'
  pod 'RealmSwift', '~> 2.10'
  pod ‘ChartsRealm’,'~> 3.0.4'

  post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['CLANG_WARN_DOCUMENTATION_COMMENTS'] = 'NO'
        end
    end
  end
end
