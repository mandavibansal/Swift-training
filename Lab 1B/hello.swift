import Foundation

// MARK: - Creating Bank Account

let account1 = BankAccount(
    accountHolder: "Mandavi",
    initialBalance: 5000
)

print("========== BANK ACCOUNT DETAILS ==========")

// Public access modifier
print("Account Holder:", account1.accountHolder)

// Internal access modifier
print("Account Type:", account1.accountType)

// Fileprivate access is demonstrated through this method
account1.displayBankInfo()

// MARK: - Deposit Operation

print("\n========== DEPOSIT ==========")

account1.deposit(amount: 2000)
account1.displayBalance()

// Invalid deposit
account1.deposit(amount: -500)

// MARK: - Withdrawal Operation

print("\n========== WITHDRAWAL ==========")

account1.withdraw(amount: 1000)
account1.displayBalance()

// Invalid withdrawal
account1.withdraw(amount: -200)

// Insufficient balance
account1.withdraw(amount: 10000)

// MARK: - Encapsulation Demonstration

print("\n========== ENCAPSULATION ==========")

print("Balance is private and cannot be accessed directly.")
print("Balance can only be modified using deposit and withdraw methods.")

account1.displayBalance()

print("\n========== PROGRAM COMPLETED ==========")
