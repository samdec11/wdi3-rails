window.app =
  ready: ->
    # setInterval(app.color_body, 6000)
    setInterval(app.show_time, 1000)
    setInterval(app.show_stairs, 1000)

  color_body: ->
    d3.select('body')
      .transition()
      .duration(1000)
      .style('background-color', 'red')
      .transition()
      .duration(1000)
      .style('background-color', 'orange')
      .transition()
      .duration(1000)
      .style('background-color', 'yellow')
      .transition()
      .duration(1000)
      .style('background-color', 'green')
      .transition()
      .duration(1000)
      .style('background-color', 'blue')
      .transition()
      .duration(1000)
      .style('background-color', 'purple')

  show_time: ->
    $('#time').text(moment().format('MMMM Do YYYY, h:mm:ss a'))

  show_clock: ->
    colors = ['red', 'green', 'blue', 'orange', 'purple', 'yellow' ]
    sec = moment().format('s').toNumber()
    rem = sec % 3
    rem2 = sec % 10
    d3.select('.three')
      .transition()
      .duration(1000)
      .attr('r', (rem * 50))
      .style('fill', colors[rem])

    d3.select('.ten')
      .transition()
      .duration(1000)
      .attr('r', (rem2 * 10))
      .style('fill', colors[rem2])

  show_stairs: ->
    height = 500
    sec = moment().format('s').toNumber()
    rects = d3.select('svg').selectAll('rect').data([1..sec])
    rects.enter()
         .append('rect')
         .attr('width', 20)
         .attr('height', 5)
         .attr('x', (d) -> (d - 1) * 20)
         .attr('y', (d) -> height - ((d - 1) * 5))
         .transition()
         .style('fill', "rgb(#{Number.random(0, 255)}, #{Number.random(0, 255)}, #{Number.random(0, 255)})")
    rects.exit()
         .transition()
         .attr('width', 0)
         .attr('height', 0)
         .remove()

$(document).ready(app.ready)