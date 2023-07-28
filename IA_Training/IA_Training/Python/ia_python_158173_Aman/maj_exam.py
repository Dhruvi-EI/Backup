buyer_bid={'b1':4,'b2':9,'b3':10,'b4':3,'b5':8}
buyer_req={'b1':3,'b2':5,'b3':2,'b4':4,'b5':6}
seller_bid={'s1':6,'s2':1,'s3':4,'s4':2,'s5':5}
seller_req={'s1':5,'s2':4,'s3':2,'s4':6,'s5':4}
seller_req_copy={'s1':5,'s2':4,'s3':2,'s4':6,'s5':4}

sorted_sellers=dict(sorted(seller_bid.items(),key=lambda x:x[1]))
print(sorted_sellers)
sorted_buyer=dict(sorted(buyer_bid.items(),key=lambda x:x[1],reverse=True ))
print(sorted_buyer)

listbuyer = list(sorted_buyer)
listseller=list(sorted_sellers)
for i in range(len(listbuyer)):
    if(sorted_buyer[listbuyer[i]]>sorted_sellers[listseller[i]]):
            buyer_break=sorted_buyer[listbuyer[i]]
            seller_break=sorted_sellers[listseller[i]]


print("Price to paid by all buyer",buyer_break)
print("Price to paid by all seller",seller_break)

allocate = {}
for i,j in sorted_buyer.items():
    for k,l in sorted_sellers.items():
        if(seller_req[k] >= buyer_req[i]):
            allocate[i]=k
            seller_req[k]=seller_req[k]-buyer_req[i]
#print(buyer_req[i], seller_req[k])
            break

print("The allocated list ...",allocate)

#calculate buyer profit................................
buyer_profit={}
for i in allocate.keys():
    value=buyer_bid[i]-buyer_break
    buyer_profit[i]=value

print("This is buyers profit of per virtual machine Dictionary..")
print(buyer_profit)


#buyer average profit.............
sum=0
for i in buyer_profit.keys():
    sum+=buyer_profit[i]
    buyer_avg_profit=sum/(len(buyer_profit))
    print("The buyers average profit of per virtual machine is :",buyer_avg_profit)


#calculate seller profit.................................
seller_profit={}
for i,j in allocate.items():
    value=seller_break-seller_bid[j]
    seller_profit[j]=value
    print("This is seller profit Dictionary as per virtual machine ..")
    print(seller_profit)

sum=0
for i in seller_profit.keys():
    sum+=seller_profit[i]
    seller_avg_profit=sum/(len(seller_profit))
    print("The sellers average profit as per per Virtual machine is :",seller_avg_profit)


total_buy_profit={}
sum=0
for i,j in buyer_profit.items():
    for k, l in buyer_req.items():
        if(i==k):
            sum+=l*j
            total_buy_profit[i]=l*j
total_buy_avg=(sum/len(total_buy_profit))
print("This is total per buyer profit ",total_buy_profit)
print("All buyers total profit is ",sum)
print("Total Average profit of All buyers are ",total_buy_avg)


#exact allocated vm to seller for bid........
seller_allocated={}
for i,j in seller_req_copy.items():
    for k, l in seller_req.items():
        if(i==k):
            seller_allocated[i]=j-l


print("The Exact allocated list of sellere with quantity..",seller_allocated)
sum=0
total_seller_profit={}
for i,j in seller_profit.items():
    for k, l in seller_allocated.items():
        if (i == k):
            sum += l * j
            total_seller_profit[i] = l * j
total_sell_avg=(sum/len(total_seller_profit))

print("This is total per seller profit ",total_seller_profit)
print("All sellers total profit is ",sum)
print("Total Average profit of All seller are ",total_sell_avg)
