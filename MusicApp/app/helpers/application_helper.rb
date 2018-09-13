module ApplicationHelper

  def authenticity_token_form
    "<input type=\"hidden\" name=\"authenticity_token\" value=\"#{form_authenticity_token}\">".html_safe
  end

  def display_errors
    "<% unless flash[:errors].nil? %>
      <% flash[:errors].each do |error| %>
        <li> <%= error %> </li>
      <% end %>
    <% end %>"
  end






end
