!SLIDE
# Rails 3 #

!SLIDE
# Rails + Merb = ? #

!SLIDE
# MORE AWESOME! #

!SLIDE bullets incremental

- More modular
- Relational Algebra
- UJS
- XSS protection
- Even More Performance
- AbstractController / router

!SLIDE

# Modules are Plugins #

!SLIDE

# Relational Algebra #

!SLIDE

# WHAT? #

!SLIDE

    @@@ ruby
    Meeting.
      where(["created_at > ?", Time.now]).
        order("date asc").
          limit(5)

!SLIDE

# Unobtrusive Javascript #

!SLIDE

    @@@ ruby
    remote_form_for(@meeting) { }
    
!SLIDE

## JS Framework agnostic ##
## Uses HTML5 data-* attributes ##

!SLIDE

# Cross Site Scripting Protection

!SLIDE

# (by default)

!SLIDE
    
    @@@ html
    <%= '<script language="javasciprt">
            alert("I am evil")
        </script>' %>
    => &lt;script language=&quot;javasciprt&quot;&gt;
             alert(&quot;I am evil&quot;)
         &lt;/script&gt;

!SLIDE

# Even More Performance #

!SLIDE bullets incremental

# Rails 2 gives you... #

- SQL query cache
- etag caching
- Asset caching
- lots of small optimisations

!SLIDE bullets incremental

# Rails 3 adds ... #

- Faster Router
- Faster Internals
- Faster Renderer

!SLIDE

# BOOM! #