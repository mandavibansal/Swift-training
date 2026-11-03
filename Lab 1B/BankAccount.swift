
import Foundation


public class BankAccount {

    private var balance: Double

    public let accountHolder: String

    fileprivate var bankName: String = "Swift Bank"

    internal var accountType: String = "Savings"


    public init(accountHolder: String, initialBalance: Double) {

        self.accountHolder = accountHolder

        if initialBalance >= 0 {
            self.balance = initialBalance
        } else {
            self.balance = 0
            print("Invalid initial balance. Account created with zero balance.")
        }
    }


    public func deposit(amount: Double) {

        if amount > 0 {
            balance += amount
            print("Successfully deposited: ₹\(amount)")
        } else {
            print("Invalid deposit amount!")
        }
    }


    public func withdraw(amount: Double) {

        if amount <= 0 {
            print("Invalid withdrawal amount!")
        } else if amount > balance {
            print("Insufficient balance!")
        } else {
            balance -= amount
            print("Successfully withdrawn: ₹\(amount)")
        }
    }


    public func displayBalance() {
        print("Current Balance: ₹\(balance)")
    }
}
public func displayBankInfo() {
    print("Bank Name:", bankName)
}
