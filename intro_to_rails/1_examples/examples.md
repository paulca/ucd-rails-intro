!SLIDE center
# Examples #

!SLIDE
# ActiveRecord #

!SLIDE smaller
    @@@ ruby
    class Meeting < ActiveRecord::Base
      validates_presence_of :title

      has_many :items, :order => "position asc"
      belongs_to :user, :counter_cache => true

      format_dates [:timestamps, :date]

      attr_protected :user_id, :quick

      accepts_nested_attributes_for :items

      named_scope :upcoming,
                  :conditions => ["date > ?", Time.now.end_of_day]
    end
    
!SLIDE smaller
    @@@ruby
    Meeting.create!
    ==> ActiveRecord::RecordInvalid: 
          Validation failed: Title cant be blank
    
    Meeting.create!(:title => "Hello! New Meeting")
    => #<Meeting id: 34, title: "Hello! New Meeting">
    
    Meeting.all
    => [#<Meeting id: 34, title: "Hello! New Meeting">]

    Meeting.find(34)
    => #<Meeting id: 34, title: "Hello! New Meeting">
    
!SLIDE
# ActionController #

!SLIDE center smaller
    @@@ ruby
    class MeetingsController < ApplicationController

      before_filter :get_meeting, :except => [:create]
      
      # /meetings/34
      def show
        respond_to do |wants|
          wants.html
          wants.js { render :partial => 'meetings/show' }
        end
      end
    
    
      def get_meeting
        @meeting = Meeting.find_by_public_url(params[:id])
      end
    end

!SLIDE
# ActionView (ERB) #

!SLIDE
    @@@ html
    <h2><%= @meeting.title %></h2>
    <em><%= @meeting.date %></em>
    <p><%= @meeting.description %></p>
    <ul>
      <% @meeting.items.each do |item| %>
        <li><%= item.content %></li>
      <% end %>
    </ul>

!SLIDE
# ActiveSupport #

!SLIDE bullets incremental

- Time.now.beginning_of_month
- => Mon Feb 01 00:00:00 +0000 2010
- Time.now.end_of_day
- => Wed Feb 17 23:59:59 +0000 2010
- 1.day.from_now
- => Thu, 18 Feb 2010 14:06:23 UTC +00:00

!SLIDE bullets incremental

- 2.days.ago
- => Mon, 15 Feb 2010 14:06:40 UTC +00:00
- 10.terabytes
- => 10995116277760
- "paul campbell".titlecase
- => "Paul Campbell"

!SLIDE
# ... and more! #

!SLIDE

## ActiveResource ##

    @@@ ruby
    class PersonResource < ActiveResource::Base
      self.site = "http://api.people.com:3000/"
      self.element_name = "person"
    end
    
!SLIDE
    
## I18n ##

    @@@ ruby
    I18n.locale = 'en'
    => 'en'
    I18n.t('pizza')
    => 'Pizza'
    I18n.locale = 'fr'
    => 'fr'
    I18n.t('pizza')
    => 'Grrrfffffgggh'
    
!SLIDE commandline
    
## Generators ##

    ./script/generate controller generators

!SLIDE commandline

## Generators ##

    ./script/generate controller generators
                       helper
                       mailer
                       migration
                       model
                       plugin
                       resource
                       scaffold