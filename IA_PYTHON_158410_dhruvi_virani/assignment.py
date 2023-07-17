#Strategy 1(ASSIGNMENT1)
S1_vm = {"S1":7,"S2":6,"S3":5,"S4":9}
S1_bid = {"S1":20,"S2":23,"S3":19,"S4":30}
U1_vm={"B1":4 ,"B2":3,"B3":2,"B4":5 }
U1_bid={"B1":25 ,"B2":22,"B3":17,"B4":21 }

sorted_s1 = dict(sorted(S1_bid.items(), key=lambda kv: kv[1]))
sorted_u1 = dict(sorted(U1_bid.items(), key=lambda kv: kv[1], reverse=True))
print(sorted_s1)
print(sorted_u1)
dict1={}
for i in sorted_u1.keys():
    for j in sorted_s1.keys():
        if S1_vm[j]>=U1_vm[i]:
            dict1[i]=j
            S1_vm[j]=S1_vm[j]-U1_vm[i]
            #del U1_vm[i]
            break
print("Allocation: ",dict1)
lst_seller=[]
lst_user=[]
for i,j in dict1.items():
    lst_seller.append(S1_bid[j])
    lst_user.append(U1_bid[i])
print("Price to be paid by each buyer will be: ",max(lst_seller))
print("Payment received to all sellers will be: ",min(lst_user))
a1={}
a2={}
for i,j in dict1.items():
    p=max(lst_seller)-S1_bid[j]
    q=U1_bid[i]-min(lst_user)
    a1[j]=p
    # print(a1)
    a2[i]=q
    # print(a2)
print("profit of each seller is ",a1)
print("profit of each user is ",a2)

sum1=0
for i, j in a1.items():
    for k, m in dict1.items():
        if (i==m):
            sum1=sum1+(j*U1_vm[k])
print(sum1)
print("the average of seller after selling the machines: ",sum1/len(a1))

sum2=0
for i,j in a2.items():
    for k,m in U1_vm.items():
        if(i==k):
            sum2=sum2 + (j*m)
print(sum2)
print("the average profit of seller after selling the machines: ",sum2/len(a2))

b1=len(a1)
b2=len(a2)
print("the average profit of buyer per machine is ",(sum(a1.values())/b1))
print("the average profit of user per machine is ",(sum(a2.values())/b2))


#STRATEGY 2

S1_vm = {"S1":7,"S2":6,"S3":5,"S4":9}
S1_bid = {"S1":20,"S2":23,"S3":19,"S4":30}
U1_vm={"B1":4 ,"B2":3,"B3":2,"B4":5 }
U1_bid={"B1":25 ,"B2":22,"B3":17,"B4":21 }
sorted_s1 = dict(sorted(S1_bid.items(), key=lambda kv: kv[1]))
sorted_u1 = dict(sorted(U1_bid.items(), key=lambda kv: kv[1]))

dict1={}
for i in sorted_u1.keys():
    for j in sorted_s1.keys():
        if S1_vm[j]>=U1_vm[i]:
            dict1[i]=j
            S1_vm[j]=S1_vm[j]-U1_vm[i]
            #del U1_vm[i]
            break
print("Allocation: ",dict1)

lst_seller=[]
lst_user=[]
for i,j in dict1.items():
    lst_seller.append(S1_bid[j])
    lst_user.append(U1_bid[i])
print("Price to be paid by each buyer will be: ",min(lst_seller))
print("Payment received to all sellers will be: ",max(lst_user))

a1={}
a2={}
for i,j in dict1.items():
    p=S1_bid[j]-min(lst_seller)
    q=max(lst_user)-U1_bid[i]
    a1[j]=p
    a2[i]=q
print("loss of each seller is ",a1)
print("loss of each user is ",a2)

sum1=0
for i, j in a1.items():
    for k, m in dict1.items():
        if (i==m):
            sum1=sum1+(j*U1_vm[k])
print("the loss of user per each machine: ",sum1)
print("the average loss of seller after selling the machines: ",sum1/len(a1))

sum2=0
for i,j in a2.items():
    for k,m in U1_vm.items():
        if(i==k):
            sum2=sum2 + (j*m)
print("the loss of user per each machine: ",sum2)
print("the average loss of seller after selling the machines: ",sum2/len(a2))

b1=len(a1)
b2=len(a2)
print("the average loss of buyer per machine is ",(sum(a1.values())/b1))
print("the average loss of user per machine is ",(sum(a2.values())/b2))

#STRATEGY 3
S1_vm = {"S1":7,"S2":6,"S3":5,"S4":9}
S1_bid = {"S1":20,"S2":23,"S3":19,"S4":24}
U1_vm={"B1":4 ,"B2":3,"B3":5,"B4":9 }
U1_bid={"B1":25 ,"B2":22,"B3":17,"B4":21 }

sorted_s1 = dict(sorted(S1_bid.items(), key=lambda kv: kv[1]))
sorted_u1 = dict(sorted(U1_bid.items(), key=lambda kv: kv[1], reverse=True))
print(sorted_s1)
print(sorted_u1)
dict1={}
for i in sorted_u1.keys():
    for j in sorted_s1.keys():
        if S1_vm[j]>=U1_vm[i]:
            dict1[i]=j
            S1_vm[j]=S1_vm[j]-U1_vm[i]
            #del U1_vm[i]
            break
print("Allocation: ",dict1)

#buyer_bid[i]>seller_bid[i]
seller_break={}
user_break={}
for i,j in dict1.items():
        if U1_bid[i]>S1_bid[j]:
            seller_break=j
            user_break=i
print(seller_break)
print(user_break)

g1={}
h1={}
for i,j in dict1.items():
    if U1_bid[i]<S1_bid[j]:
        g=S1_bid[seller_break]-S1_bid[j]
        h=U1_bid[user_break]-U1_bid[i]
        g1[g]=g
        h1[h]=h
print(g)
print(h)

lst_seller=[]
lst_user=[]
for i,j in dict1.items():
    lst_seller.append(S1_bid[j])
    lst_user.append(U1_bid[i])
print("Price to be paid by each buyer will be: ",max(lst_seller))
print("Payment received to all sellers will be: ",max(lst_user))

a1={}
a2={}
for i,j in dict1.items():
    p=S1_bid[seller_break]-S1_bid[j]
    q=U1_bid[user_break]-U1_bid[i]
    a1[j]=p
    a2[i]=q
print("loss of each seller is ",a1)
print("loss of each user is ",a2)

sum1=0
for i, j in a1.items():
    for k, m in dict1.items():
        if (i==m):
            sum1=sum1+(j*U1_vm[k])
print("the loss of seller per each machine: ",sum1)
print("the average loss of seller after selling the machines: ",sum1/len(a1))

sum2=0
for i,j in a2.items():
    for k,m in U1_vm.items():
        if(i==k):
            sum2=sum2 + (j*m)
print("the loss of user per each machine: ",sum2)
print("the average loss of buyer after selling the machines: ",sum2/len(a2))

#Broker
S1_vm = {"S1":7,"S2":6,"S3":5,"S4":9}
S1_bid = {"S1":20,"S2":23,"S3":19,"S4":30}
U1_vm={"B1":4 ,"B2":3,"B3":2,"B4":5 }
U1_bid={"B1":25 ,"B2":22,"B3":17,"B4":21 }

sorted_s1 = dict(sorted(S1_bid.items(), key=lambda kv: kv[1]))
sorted_u1 = dict(sorted(U1_bid.items(), key=lambda kv: kv[1]))
print(sorted_s1)
print(sorted_u1)
remove=list(sorted_s1.values())[0]
print("removed value of seller ",remove)

dict_new={}
for i,j in sorted_u1.items():
    if j<remove:
        dict_new[i]=j
print(dict_new)











