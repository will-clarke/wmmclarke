# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->


  $ ->
    $().timelinr()
      orientation: "vertical"
      issuesSpeed: 300
      datesSpeed: 100
      arrowKeys: "true"
      startAt: 3

  # $("#everything").click ->
  #   alert 'om'
  #   $('#container').isotope("updateSortData").isotope sortBy: "random"

    
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


$(document).ready ->
  colors = [ [ "#dfe8ed", "#30bae7" ], [ "#dfe8ed", "#d74680" ], [ "#dfe8ed", "#15c7a8" ], [ "#dfe8ed", "#eb7d4b" ] ]
  i = 1

  while i <= 5
    child = document.getElementById("circles-" + i)
    percentage = 50 + (i * 10)
    Circles.create
      id: child.id
      percentage: percentage
      radius: 80
      width: 15
      number: percentage / 10
      text: "%"
      colors: colors[i - 1]

    i++
        



  
                             
  # $container.isotope({ filter: '.code' })
  # $('#filter .code')  

  # $('#container').isotope({
  #   // options...
  #   itemSelector: '.item',
  #   masonry: {
  #     columnWidth: 200
  #   }
  # });

