ActionController::Routing::Routes.draw do |map|
  map.with_options :controller => 'no_referer' do |no_referer|
    no_referer.connect 'no_referer', :action => 'no_referer'
  end
end
