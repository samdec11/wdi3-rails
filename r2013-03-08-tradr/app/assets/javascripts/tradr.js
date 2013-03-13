var stock_price;
var balance;

$(function(){
  $('body').on('click', '#cancel_stock_form', cancel_stock);
  $('body').on('click', '#cancel_user_form', cancel_user);
  $('body').on('blur', '#stock_symbol', fetch_stock_price);
  $('body').on('keyup', '#stock_symbol', capitalize);
  $('body').on('keyup', '#stock_quantity', total);
});

function cancel_user() {
  $('#new_user').empty();
  return false;
}

function cancel_stock() {
  $('#new_stock').empty();
  return false;
}

function fetch_stock_price() {
  var symbol = $('#stock_symbol').val();
  $.ajax({
    dataType: 'json',
    type: "get",
    url: "/stocks/quote",
    data: {'symbol':symbol}
  }).done(show_stock_price);
  return false;
}

function show_stock_price(price_check) {
  $('#price').empty();
  stock_price = price_check[0];
  balance = price_check[1];
  var symbol = $('#stock_symbol').val();
  var result = $('<p>');
  result.text(symbol + ' is trading at ' + accounting.formatMoney(stock_price));
  $('#price').append(result);
}

function capitalize() {
  $(this).val($(this).val().toUpperCase());
}

function total() {
  $('#total').empty();
  if($('#stock_quanity').val() !== "") {
    var shares = parseInt($('#stock_quantity').val(), 10) || 0;
    var symbol = $('#stock_symbol').val();
    var cost = stock_price * shares;
    var result = $('<p>');
    result.text(shares + ' shares of ' + symbol + ' costs ' + accounting.formatMoney(cost));
    if(cost <= balance) {
      result.css('color', 'green');
    }
    else {
      result.css('color', 'red');
    }
    $('#total').append(result);
  }
}