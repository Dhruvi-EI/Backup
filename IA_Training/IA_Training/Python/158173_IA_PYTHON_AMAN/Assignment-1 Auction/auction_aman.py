#Assignment 1
buyer_vm = {"B1": 3, "B2": 4, "B3": 3, "B4": 1, "B5": 2, "B6": 5}
buyer_bid = {"B1": 10, "B2": 15, "B3": 14, "B4": 12, "B5": 15, "B6": 10}
seller_vm = {"S1": 2, "S2": 7, "S3": 4}
seller_bid = {"S1": 15, "S2": 12, "S3": 18}
sort_buyer_bid = dict(sorted(buyer_bid.items(), key=lambda item: item[1], reverse=True))
sort_seller_bid = dict(sorted(seller_bid.items(), key=lambda item: item[1]))
dic = {}
for i in sort_buyer_bid:
    for x in sort_seller_bid:
        if seller_vm[x] >= buyer_vm[i]:
            dic[i] = x
            seller_vm[x] = seller_vm[x] - buyer_vm[i]
            break
print("Allocated Seller=", dic)

lst_buyer = []
lst_seller = []
for i, j in dic.items():
    lst_buyer.append(buyer_bid[i])
    lst_seller.append(seller_bid[j])
    print("Price to be paid by each Buyer=Rs", min(lst_buyer))
    print("Payment received to each seller=Rs", max(lst_seller))
p1 = {}
p2 = {}
sum1, sum2 = 0, 0
for i, j in dic.items():
    p1[i] = buyer_bid[i]-min(lst_buyer)
    p2[j] = max(lst_seller)-seller_bid[j]
    sum1 = sum1+p1[i]
    sum2 = p2[j]
    dict(sorted(p1.items()))
    print("Profit of buyers=", p1)
    print("Profit of Sellers=", p2)
    n1 = len(p1)
    n2 = len(p2)
print("Average profit of all buyers=", sum1/n1)
print("Average profit of all sellers=", sum2/n2)
# extension starts from here





