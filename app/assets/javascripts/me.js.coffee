jQuery ->

  $("#nav").onePageNav
    begin: ->
      console.log "start"

    end: ->
      console.log "stop"

  circlesCreated = false

  $('#skills').bind 'mouseenter click', ->
  # if $('#skills:in-viewport(100)')
    # circles_ = -> 
    if circlesCreated == false
      colors = [ [ "#dfe8ed", "#30bae7" ], [ "#dfe8ed", "#d74680" ], [ "#dfe8ed", "#15c7a8" ], [ "#dfe8ed", "#eb7d4b" ] ]
      percentages = [90, 70, 70, 40]
      i = 1

      while i <= 4
        child = document.getElementById("circles-" + i)
        Circles.create
          id: child.id
          percentage: percentages[i - 1]
          radius: 80
          width: 15
          duration: 1300
          number: percentages[i - 1]
          text: "%"
          colors: colors[i - 1]
          
        i++
        circlesCreated = true

  # init controller
  controller = new ScrollMagic()
  
  # sceneOptions = z{duration: 200, offset: -100}
  # build tween
  tween = TweenMax.to("#animate", 0.5,
    scale: 8
    # ease: Back.easeOut, 
    # rotation:36, 
    # textDecoration: "underline", 
    # color: "red"
  )
  
  # build scene
  new ScrollScene(
    triggerElement: "#william"
    duration: 200
    offset: 250
  ).setTween(tween).addTo controller
  # new ScrollScene(
  #   triggerElement: "#icons"
  #   offset: 500
  # ).addTo(controller).triggerHook("onEnter").setTween TweenMax.from("#icons", 0.5,
  #   scale: 0
  #   ease: Elastic.easeOut
  #   delay: 0.5
  # )


  $().timelinr
    orientation: "vertical"
    issuesSpeed: 300
    datesSpeed: 100
    arrowKeys: "true"
    startAt: 3

  $(".rotate").textrotator()

  isbig = true
  $('#skills').mouseover ->
    $('#william').css('scale: 0.125')
    # animation: "spin" # You can pick the way it animates when rotating through words. Options are dissolve (default), fade, flip, flipUp, flipCube, flipCubeUp and spin.
    # speed: 3500
    
  bindEvent = (e, eventName, callback) ->
  if e.addEventListener # new browsers
    e.addEventListener eventName, callback, false
  # IE
  else e.attachEvent "on" + eventName, callback  if e.attachEvent
bindEvent document.body, "scroll", (e) ->
  document.body.scrollLeft = 0

  # $(".nav-collapse").responsiveNav

