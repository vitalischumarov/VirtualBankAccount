import UIKit
 
struct BankAccount {
    var balance: Double = 00.00
    var login: Bool = false
    let pin: Int = 1234
    
    mutating func withdraw(money: Double) {
        if (login == true) {
            if (self.balance - money > 0) {
                self.balance -= money
            } else {
                print("You do not have enough money on your account.")
            }
        } else {
            print("Please login at first.")
        }
    }
    
    mutating func logIn(pinInput: Int) {
        if (pinInput == pin) {
            login = true
            print("Welcome")
        } else {
            print("Wrong pin number.")
        }
    }
    
    mutating func sendMoney(value: Double) {
        if (login == true) {
            self.balance += value
        } else {
            print("Please login at first.")
        }
    }
}

var user1 = BankAccount()
user1.logIn(pinInput: 1234)
user1.sendMoney(value: 400)
print(user1.balance)
user1.withdraw(money: 100)
print(user1.balance)
