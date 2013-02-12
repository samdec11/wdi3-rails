class CalcController < ApplicationController
  def calculate
    @x = params['x'].to_i
    @y = params['y'].to_i

    @result = case params['operator']
        when '+' then @x + @y
        when '-' then @x - @y
        end
  end
end