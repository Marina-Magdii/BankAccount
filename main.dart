void main() {
  // create objects from my class
  BankAccount user1 =
      BankAccount(account: "Saving", accountId: "382389484233", balance: 1000);
  BankAccount user2 = BankAccount(account: "Savings", accountId: "2948563729297",
  balance: 5000);
  // check the functionality of the methods
  user1.withDraw(2000);
  print(user1.balance);
  user1.deposit(500);
  print(user1.balance);
  user1.withDraw(200);
  print(user1.balance);
  user1.displayInfo();

  user2.displayInfo();
  user2.withDraw(3000);
  print(user2.balance);
}
// create the class with its methods
class BankAccount {
  String account;
  String accountId;
  int balance;
  BankAccount(
      {this.balance = 0, required this.account, required this.accountId});
// create a withdrawmethod
  int withDraw(int amount) {
    if (amount < 0) {
      print("Please enter invalid number");
    } else if (amount > balance) {
      print("The balance is not sufficient");
    } else {
      balance -= amount;
    }
    return balance;
  }
// create a deposit method
  int deposit(int amount){
    if(amount<0){
      print("Please enter a valid number");
    }
    else{
      balance+=amount;
    }
    return balance;
  }
// create a method to print the account info
  displayInfo(){
    print("Account: $account");
    print("ID: $accountId");
    print("Balance: $balance");
  }
}

