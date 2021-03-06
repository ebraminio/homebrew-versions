cask 'toggldesktop-beta' do
  version '7.4.68'
  sha256 '02ca17e1d4655a9076173eab8b04b64d768c8cc9ed5fa9e771ee1eea044b3f92'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_beta_appcast.xml',
          checkpoint: '99a687ee8d259cdde8bc259b84bffcc85e3599a7a377cd0e319a3131ef8b5159'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggldesktop',
                         'toggldesktop-dev',
                       ]

  app 'TogglDesktop.app'
end
