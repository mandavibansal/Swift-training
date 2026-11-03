
import Foundation

// MARK: - BankAccount Class

public class BankAccount {

    // Private property: Cannot be accessed outside this class
    private var balance: Double

    // Public property: Can be accessed outside the class
    public let accountHolder: String

    // Fileprivate property: Accessible within this file
    fileprivate var bankName: String = "Swift Bank"

    // Internal property: Accessible within the same module
    internal var accountType: String = "Savings"

    // MARK: Initializer

    public init(accountHolder: String, initialBalance: Double) {

        self.accountHolder = accountHolder

        if initialBalance >= 0 {
            self.balance = initialBalance
        } else {
            self.balance = 0
            print("Invalid initial balance. Account created with zero balance.")
        }
    }

    // MARK: Deposit

    public func deposit(amount: Double) {

        if amount > 0 {
            balance += amount
            print("Successfully deposited: ₹\(amount)")
        } else {
            print("Invalid deposit amount!")
        }
    }

    // MARK: Withdraw

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

    // MARK: Display Balance

    public func displayBalance() {
        print("Current Balance: ₹\(balance)")
    }
}
// Demonstrating fileprivate access
public func displayBankInfo() {
    print("Bank Name:", bankName)
}
