jQuery ->

    
  $("#nav").onePageNav
    begin: ->
      console.log "start"

    end: ->
      console.log "stop"

  circlesCreated = false

  $('#skills').mouseenter ->
    if circlesCreated == false
      colors = [ [ "#dfe8ed", "#30bae7" ], [ "#dfe8ed", "#d74680" ], [ "#dfe8ed", "#15c7a8" ], [ "#dfe8ed", "#eb7d4b" ] ]
      percentages = [90, 40, 20, 35]
      i = 1

      while i <= 4
        child = document.getElementById("circles-" + i)
        Circles.create
          id: child.id
          percentage: percentages[i - 1]
          radius: 80
          width: 15
          duration: 1800
          number: percentages[i - 1]
          text: "%"
          colors: colors[i - 1]
          
        i++
        circlesCreated = true
