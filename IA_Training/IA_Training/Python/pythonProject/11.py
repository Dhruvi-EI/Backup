#in both dict 1st is avalibe or req vms and second is price or valuation
# for sellers
csp_info = {
"CSP1": (25, 10),
"CSP2": (30, 15)
}

# for buyer
user_info = {
"User 1": (2, 20),
"User 2": (3, 12)
}

# Sort the seller in ascending order
sorted_csps = sorted(csp_info.items(), key=lambda x: x[1][1])

# Sort the buyer in descending order
sorted_users = sorted(user_info.items(), key=lambda x: x[1][1], reverse=True)


allocation = {}
prices = {}

# allocating
for user, (req_vms, valuation) in sorted_users:
  for csp, (avail_vms, maint_cost) in sorted_csps:
    if req_vms <= avail_vms:
      allocation[(user, csp)] = req_vms
      # Calculate the price to paid by user
      prices[user] = maint_cost
# Update the avaialbe vms
      csp_info[csp] = (avail_vms - req_vms, maint_cost)
      break

# Calculate the profit of each IoT user and CSP
user_profit = {}
csp_profit = {}

for (user, csp), allocated_vms in allocation.items():
  user_profit[user] = user_info[user][1] - prices[user]
  csp_profit[csp] = prices[user] - csp_info[csp][1]

# Calculate the average profit
avg_user_profit = sum(user_profit.values()) / len(user_profit)
avg_csp_profit = sum(csp_profit.values()) / len(csp_profit)

print("Allocation :", allocation)
print("Prices :", prices)
print("User profit :", user_profit)
print("CSP profit :", csp_profit)
print("Average user profit :", avg_user_profit)
print("Average CSP profit :", avg_csp_profit)