# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  $("#nav").onePageNav
    begin: ->
      console.log "start"

    end: ->
      console.log "stop"

  filterList =
    init: ->
      
      # MixItUp plugin
      # http://mixitup.io
      $("#portfoliolist").mixitup
        targetSelector: ".portfolio"
        filterSelector: ".filter"
        effects: [ "fade" ]
        easing: "snap"
        
        # call the hover effect
        onMixEnd: filterList.hoverEffect()


    hoverEffect: ->

  
  # Run the show!
  filterList.init()

  # $container.isotope({ filter: '.code' })
  # $('#filter .code')  

  # $('#container').isotope({
  #   // options...
  #   itemSelector: '.item',
  #   masonry: {
  #     columnWidth: 200
  #   }
  # });

