window.app =
  audio: null
  dancer: null
  timer: null
  ready: ->
    $('table').on('click', 'a', app.play_song)
    app.audio = $('audio')[0]
    app.dancer = new Dancer()
    app.dancer.load(app.audio)
  play_song: (e) ->
    e.preventDefault()
    position = $(this).parent().next().text()
    filename = $(this).data('filename')
    app.audio.src = "/audios/#{filename}"
    app.dancer.play()
    clearInterval(app.timer)
    app.timer = setInterval(app.show_spectrum, 50)
  show_spectrum: ->
    spectrum = app.dancer.getSpectrum()
    rects = d3.select('svg').selectAll('rect').data(spectrum)
    rects.enter()
         .append('rect')
         .attr('x', (d,i) -> i * 2)
         .attr('y', 0)
         .attr('width', 2)
    rects.transition()
         .duration(50)
         .attr('height', (d) -> d * 1000)
         .style('fill', "rgb(#{Number.random(0, 255)}, #{Number.random(0, 255)}, #{Number.random(0, 255)})")

$(document).ready(app.ready)