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
  getBigger = TweenMax.to("#animate", 0.5,
    scale: 2
    ease: Circ.easeOut, 
    rotation: 15, 
    # textDecoration: "underline", 
    # color: "red"
  )

  getSmaller = TweenMax.to("#animate", 0.3,
    scale: 0.5
    ease: Cubic.easeOut, 
    rotation: -15, 
  # textDecoration: "underline", 
  # color: "red"
  )

  # build scene
  # unless $(window).width() > 860
  new ScrollScene(
    triggerElement: "#william"
    duration: 200
    offset: 250
  ).setTween(getBigger).addTo controller

  new ScrollScene(
    triggerElement: "#trigger"
    duration: 200
    offset: 250
  ).setTween(getSmaller).addTo controller


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
    # animation: "flip"
    # speed: 1250    

  map = new GMaps(
    el: "#map"
    lat: 51.4988323
    lng: -0.2356511
    zoom: 13
    zoomControl: true
    zoomControlOpt:
      style: "SMALL"
      position: "TOP_LEFT"

    panControl: false
    scrollwheel: false
  )
  # isbig = true
  # $('#skills').mouseover ->
  #   $('#william').css('scale: 0.125')
    # animation: "spin" # You can pick the way it animates when rotating through words. Options are dissolve (default), fade, flip, flipUp, flipCube, flipCubeUp and spin.
    # speed: 3500
    
  #   bindEvent = (e, eventName, callback) ->
  #   if e.addEventListener # new browsers
  #     e.addEventListener eventName, callback, false
  #   # IE
  #   else e.attachEvent "on" + eventName, callback  if e.attachEvent
  # bindEvent document.body, "scroll", (e) ->
  #   document.body.scrollLeft = 0

  # $(".nav-collapse").responsiveNav

