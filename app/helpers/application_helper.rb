module ApplicationHelper
  def app_name
    "Github Commit Memes"
  end


  def flash_css_class(key)
    {
      'notice' => 'info',
      'error' => 'danger',
      'alert' => 'danger'
    }[key] || key.to_s
  end


  def error_messages_for(object, field=nil)
    errors = field ? object.errors[field] : object.errors.full_messages
    errors.each do |error|
      yield(error)
    end
  end
end
