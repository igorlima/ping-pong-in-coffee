PingPong = @PingPong = class


PingPong.Multiple = class
	@three: (number) ->
    if (number % 3) is 0 then 'ping' else ''

  @five: (number) ->
    if (number % 5) is 0 then 'pong' else ''

  @print: (number) =>
    printing = ''
    for multiple in [@three, @five]
      printing += multiple number
    printing
