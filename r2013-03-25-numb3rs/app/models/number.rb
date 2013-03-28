class Number
  def Number.bin2dec(num)
    array = num.split('')
    i = -1
    e = 0
    temp = []
    array.count.times do
      number = (array[i].to_i) * (2**e)
      temp << number
      i -= 1
      e += 1
    end
    temp.reduce('+')
  end
  def Number.dec2bin(num)
    array = []
    while num != 0 do
      rem = num % 2
      array.unshift(rem)
      num = num / 2
    end
    zeros = '0' * (4-array.length)
    str = array.join
    zeros + str
  end
  def Number.bin2hex(num)
    hex = []
    num = num.split('')
    (num.count / 4.0).ceil.times do
      temp = num.pop(4).join
      temp = Number.bin2dec(temp)
      hex.unshift(temp)
    end
    hex.map{|x| x > 9 ? (x + 55).chr : x }.join
  end
  def Number.hex2bin(num)
    num = num.split('')
    num = num.flat_map{|x| x.unpack('c')}.map{|x| x < 65 ? x - 48 : x - 55}.reverse
    array = []
    num.each do |x|
      y = Number.dec2bin(x)
      array.unshift(y)
    end
    array.join
  end
end