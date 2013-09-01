PingPong = @PingPong = class
  @print: ({from, to}) ->
    printing = ''
    for number in [from..to]
      multiple = PingPong.Multiple.print number
      printing += if multiple then " #{multiple}" else " #{number}"
    printing

PingPong.Multiple = class
	@three: (number) ->
    if (number % 3) is 0 then 'ping' else ''

  @five: (number) ->
    if (number % 5) is 0 then 'pong' else ''

  @print: (number) =>
    printing = ''
    for multiple in [@three, @five]
      printing_by_multiple = multiple number
      printing +=
        unless printing and printing_by_multiple then printing_by_multiple
        else " #{printing_by_multiple}"
    printing
