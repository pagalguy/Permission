Pod::Spec.new do |s|
  s.name         = "PGPermission"
  s.version      = "2.0.4"
  s.license      = { :type => "MIT" }
  s.homepage     = "https://github.com/pagalguy/Permission"
  s.author       = { "PG" => "dev@pagalguy.com" }
  s.summary      = "Fork: A unified API to ask for permissions on iOS"
  s.source       = { :git => "https://github.com/pagalguy/Permission.git", :tag => "v2.0.4" }

  s.weak_framework = 'Speech'

  s.ios.deployment_target = "8.0"

  s.requires_arc = true

  s.default_subspec = 'Core'

  s.subspec 'Core' do |co|
    co.source_files = "Source/**/*.{swift, h}"
  end

  s.subspec 'AddressBook' do |ab|
    ab.dependency 'PGPermission/Core'
    ab.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS"  => "PERMISSION_ADDRESS_BOOK" }
  end

  s.subspec 'Bluetooth' do |bl|
    bl.dependency 'PGPermission/Core'
    bl.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS"  => "PERMISSION_BLUETOOTH" }
  end

  s.subspec 'Camera' do |cm|
    cm.dependency 'PGPermission/Core'
    cm.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS"  => "PERMISSION_CAMERA" }
  end

  s.subspec 'Contacts' do |cn|
    cn.dependency 'PGPermission/Core'
    cn.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS"  => "PERMISSION_CONTACTS" }
  end

  s.subspec 'Events' do |ev|
    ev.dependency 'PGPermission/Core'
    ev.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS"  => "PERMISSION_EVENTS" }
  end

  s.subspec 'Location' do |lo|
    lo.dependency 'PGPermission/Core'
    lo.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS"  => "PERMISSION_LOCATION" }
  end

  s.subspec 'Microphone' do |mi|
    mi.dependency 'PGPermission/Core'
    mi.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS"  => "PERMISSION_MICROPHONE" }
  end

  s.subspec 'Motion' do |mo|
    mo.dependency 'PGPermission/Core'
    mo.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS"  => "PERMISSION_MOTION" }
  end

  s.subspec 'Notifications' do |no|
    no.dependency 'PGPermission/Core'
    no.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS"  => "PERMISSION_NOTIFICATIONS" }
  end

  s.subspec 'Photos' do |ph|
    ph.dependency 'PGPermission/Core'
    ph.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS"  => "PERMISSION_PHOTOS" }
  end

  s.subspec 'Reminders' do |re|
    re.dependency 'PGPermission/Core'
    re.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS"  => "PERMISSION_REMINDERS" }
  end

  s.subspec 'SpeechRecognizer' do |rs|
    rs.dependency 'PGPermission/Core'
    rs.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS"  => "PERMISSION_SPEECH_RECOGNIZER" }
  end

  s.subspec 'MediaLibrary' do |ml|
    ml.dependency 'PGPermission/Core'
    ml.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS"  => "PERMISSION_MEDIA_LIBRARY" }
  end

  s.subspec 'Siri' do |ab|
    ab.dependency 'PGPermission/Core'
    ab.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS"  => "PERMISSION_SIRI" }
  end
end
