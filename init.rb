require 'redmine'
require 'no_referer_hook'

Redmine::Plugin.register :redmine_no_referer do
  name 'Redmine No Referer plugin'
  author 'OZAWA Yasuhiro'
  description 'Insert redirect page'
  version '0.0.1'
  url 'https://github.com/ameya86/redmine_no_referer'
  author_url 'https://github.com/ameya86'

  settings :default => {
      'refresh_second' => '5',
      'check_regex' => '^(/|#|http://localhost/redmine/?)',
    }, :partial => 'no_referer/settings'
end
