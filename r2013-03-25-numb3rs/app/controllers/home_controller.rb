class HomeController < ApplicationController
  def index
    @word_count = Declaration.first.words.count
  end
  def find
    select = Declaration.first.words[params[:count].to_i].value
    array = select.split('')
    hex = []
    array.map{|x| hex << Character.where(symbol: x).first.hex}
    hex = hex.join
    bin = Number.hex2bin(hex)
    dec = Number.bin2dec(bin)
    color = "##{hex[0..5]}"
    render :json => { word: select, hex: hex, dec: dec, bin: bin, color: color}
  end
end