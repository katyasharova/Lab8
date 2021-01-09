class IndexController < ApplicationController
  def input
  end

  def output
    n = params[:n]
    if n.to_i < 1 || n.empty?
        @error = 'Ошибка'
    else
        @result = squares_palindroms n.to_i
    end
  end

  def squares_palindroms(n)
    res = []
    1.upto(n) do |i|
      res.append([i, i**2]) if (i.to_s == i.to_s.reverse) && ((i**2).to_s == (i**2).to_s.reverse)
    end
    @result = res
  end
end
