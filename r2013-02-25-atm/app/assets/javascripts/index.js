var checkingbalance = 500
var savingsbalance = 1000

$(function() {
  $('#checkingbalance').text("$" + checkingbalance)
  $('#savingsbalance').text("$" + savingsbalance)
  $('#checkingdeposit').click(checkingdeposit);
  $('#checkingwithdraw').click(checkingwithdraw);
  $('#savingsdeposit').click(savingsdeposit);
  $('#savingswithdraw').click(savingswithdraw);
});

function checkingdeposit() {
  var deposit = $('#checking').val();
  deposit = parseFloat(deposit);
  checkingbalance += deposit;
  $('#checkingbalance').text("$" + checkingbalance);
}

function checkingwithdraw() {
  var withdrawal = $('#checking').val();
  withdrawal = parseFloat(withdrawal);
  overdraft = withdrawal - checkingbalance;
  if(withdrawal > checkingbalance && overdraft <= savingsbalance) {
    checkingbalance = 0;
    $('#checkingbalance').css('border', '1px solid red');
    savingsbalance -= overdraft;
  }
  else if(withdrawal < checkingbalance) {
    checkingbalance -= withdrawal;
  }

  $('#checkingbalance').text("$" + checkingbalance);
  $('#savingsbalance').text("$" + savingsbalance);
}

function savingsdeposit() {
  var deposit = $('#savings').val();
  deposit = parseFloat(deposit);
  savingsbalance += deposit;
  $('#savingsbalance').text("$" + savingsbalance);
}

function savingswithdraw() {
  var withdrawal = $('#savings').val();
  withdrawal = parseFloat(withdrawal);
  savingsbalance -= withdrawal;
  $('#savingsbalance').text("$" + savingsbalance);
}