module ApplicationHelper
  def heroku(envkeys)
    pairs = envkeys.map do |envkey|
      "#{envkey.name}=#{envkey.value}"
    end

    "heroku config:add #{pairs.join ' '}".html_safe
  end
end
