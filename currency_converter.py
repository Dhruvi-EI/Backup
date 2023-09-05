with open("forex_rates.txt") as f:
    lines=f.readlines()

current_dict={}
for line in lines:
    parsed=line.split("\t")
    current_dict[parsed[0]]=parsed[1]

print(current_dict)
amount=int(input("Enter the amount you want to convert:\n"))
print("In which currency do you want to convert the entered amount from the given options\n")
[print(item)for item in current_dict.keys()]
currency=input("please enter the value: ")
print(f"{amount} INR is equal to {amount*float(current_dict[currency])} in {currency}")