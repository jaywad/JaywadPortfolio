ready = ->
  Typed.new '.element',
    strings: [
      "Would you like to work together?"
    ]
    typeSpeed: 15
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready