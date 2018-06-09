ready = ->
  Typed.new '.element',
    strings: [
      "Software development should not be a secret process. When I take on a new project I make it my goal to not only deliver a well crafted product but to also ensure that each stage of the process is fully communicated."
    ]
    typeSpeed: 10
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready