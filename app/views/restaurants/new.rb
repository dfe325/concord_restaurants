<div id="form_container" class="row">
  <div class="medium-12 medium-centered columns">
    <h3>New Species</h3>

    <% if user_signed_in? %>
      <%= form_for @species do |f| %>

        <div id="form_errors">
          <% if @restaurant.errors.any? %>
            <h4>
              <%= pluralize(@restaurant.errors.count, "error")%>
              detected:
            </h4>
            <ul>
              <% @restaurant.errors.full_messages.each do |message| %>
                <li><%= message %></li>
              <% end %>
            </ul>
          <%end%>
        </div>

        <%= f.text_field :name, placeholder: "Restaurant name"%>

        <%= f.text_field :location, placeholder: "Location%>

        <%= f.label :image %>
        <%= f.file_field :image %>

        <%= f.submit "Add Restaurant",class: "button radius small edit_user_button submit_form_button"%>

      <%end%>
    <% end %>

    <%= link_to "Back to Species", species_index_path, class: "button radius small edit_form_button"%>
  </div>
</div>
