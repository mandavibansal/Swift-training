import Foundation

let account1 = BankAccount(
    accountHolder: "Mandavi",
    initialBalance: 5000
)

print("========== BANK ACCOUNT DETAILS ==========")

print("Account Holder:", account1.accountHolder)

print("Account Type:", account1.accountType)

account1.displayBankInfo()

print("\n========== DEPOSIT ==========")

account1.deposit(amount: 2000)
account1.displayBalance()

account1.deposit(amount: -500)

print("\n========== WITHDRAWAL ==========")

account1.withdraw(amount: 1000)
account1.displayBalance()

account1.withdraw(amount: -200)

account1.withdraw(amount: 10000)

print("\n========== ENCAPSULATION ==========")

print("Balance is private and cannot be accessed directly.")
print("Balance can only be modified using deposit and withdraw methods.")

account1.displayBalance()

print("\n========== PROGRAM COMPLETED ==========")
