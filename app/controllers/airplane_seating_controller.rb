class AirplaneSeatingController < ApplicationController

    def index

      puts "*************"

      gon.number = session[:number]
      gon.number

      puts gon.number
      puts "**************"

    end

    def new

    end

    def create

      puts "__________________________"
      puts "____________________________"

      puts "%%%%%%%%%%%%%"

        @number_of_elements  = params[:array][:number_of_elements]

        session[:number] = @number_of_elements

        puts session[:number]

      puts "%%%%%%%%%%%%%%"

      redirect_to action: 'index'

    end

    def arrayOfarray
      puts "hai"

      number = params[:inputs][:NumberOfPassengers].to_i

      array = []
      row = params[:row]
      col = params[:col]
      rowSize = row.map{|e| e}.max.to_i
      colSize = col.map{|e| e}.max.to_i
      original = []
      c = []
      for i in 0...col.length
        input = [row[i].to_i, col[i].to_i]
        array << input
      end
      for i in 0...array.length
         	c << array[i][0]
       end
       for i in 0... array.length

          original << array[i].reverse
       end
       array = original
       obj = {}
      puts "!!!!!!!!!!"
      seat = fillWithMAandW(array)
        ok = seat
      number = number + 1

      obj=replaceWithNumber("A",1,seat,colSize,rowSize,number)

      if (obj[:count] < number)

        obj= replaceWithNumber("W",obj[:count] ,obj[:seats] ,colSize,rowSize,number)

       end


       if(obj[:count] < number)

           obj = replaceWithNumber("M", obj[:count], obj[:seats],colSize, rowSize,number)
       end

       @seats = obj[:seats]
    end

    private

    def fillWithMAandW(array)

      seats = []


     for i in 0...array.length

       seats.push((Array.new(array[i][0])).map{|k| Array.new(array[i][1]).fill("M")})
     end

     for i in 0...seats.length

       for j in 0...seats[i].length
      seats[i][j][0] = "A"
      seats[i][j][seats[i][j].length-1] = "A"
    end

     end

     for  i in 0...seats[0].length

          seats[0][i][0] = "W"
     end


     for i  in 0...seats[seats.length - 1].length

        seats[seats.length-1][i][(seats[seats.length-1][i].length)-1]="W"
     end

     return seats
    end

    def replaceWithNumber(val, count, seats, colSize, rowSize,number)

        for i in 0...colSize

    	    for j in 0...rowSize

    		    if(seats[j]== nil||seats[j][i]==nil)

    			     next
    	       end

    	       for k in 0...seats[j][i].length

    		     if(seats[j]!=nil and seats[j][i]!= nil and seats[j][i][k]===val)

                                  if( count <= number)

    			       seats[j][i][k] = count

    			       count = count + 1

    			     end
    		     end

    		     if (count == number)
    			     break
    		     end

    	       end

    	      if (count == number)

    		      break

    	      end

             end
        end

        return {seats: seats, count: count}


    end

end
