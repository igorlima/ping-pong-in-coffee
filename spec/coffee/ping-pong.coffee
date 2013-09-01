
describe "Ping pong specs", ->

  describe "Printing from 1 to 100", ->
    printing = PingPong.print from: 1, to: 100

    it "printing SHOULD contain the number 1", ->
      expect( printing ).toContain '1'

    it "printing SHOULD contain the number 2", ->
      expect( printing ).toContain '2'

    it "printing SHOULD contain the sequence '1 2'", ->
      expect( printing ).toContain '1 2'

    it "printing SHOULD contain 'ping'", ->
      expect( printing ).toContain 'ping'

    it "printing SHOULD contain the sequence '1 2 ping'", ->
      expect( printing ).toContain '1 2 ping'

    it "printing SHOULD contain the sequence '13 14 ping pong'", ->
      expect( printing ).toContain '13 14 ping pong'

    it "printing SHOULD contain the sequence 'ping 4 pong ping'", ->
      expect( printing ).toContain 'ping 4 pong ping'

  describe "Multiple of some number", ->

    describe "Print any multiple", ->
      print = PingPong.Multiple.print

      describe "number 4", ->
        printing = print 4

        it "printing SHOULD NOT be defined", ->
          expect( printing ).toBe ''

      describe "number 15", ->
        printing = print 15

        it "printing SHOULD contain 'ping'", ->
          expect( printing ).toContain 'ping'

        it "printing SHOULD contain 'pong'", ->
          expect( printing ).toContain 'pong'

    describe "Multiple by three", ->
      multiple_by_three = PingPong.Multiple.three

      describe "number 4", ->
        printing = multiple_by_three 4

        it "printing SHOULD NOT be defined", ->
          expect( printing ).toBe ''

      describe "number 3", ->
        printing = multiple_by_three 3

        it "printing SHOULD defined", ->
          expect( printing ).toBeDefined()

        it "printing SHOULD be 'ping'", ->
          expect( printing ).toBe 'ping'

    describe "Multiple by five", ->
      multiple_by_five = PingPong.Multiple.five

      describe "number 4", ->
        printing = multiple_by_five 4

        it "printing SHOULD NOT be defined", ->
          expect( printing ).toBe ''

      describe "number 5", ->
        printing = multiple_by_five 5

        it "printing SHOULD defined", ->
          expect( printing ).toBeDefined()

        it "printing SHOULD be 'pong'", ->
          expect( printing ).toBe 'pong'
