class NoRefererHook < Redmine::Hook::ViewListener
  render_on :view_layouts_base_body_bottom, :partial => 'no_referer/body_bottom'
end
