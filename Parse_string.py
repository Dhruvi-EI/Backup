def parse_string():
    user=input("enter your data: ")
    empty_dict={}
    split=[]
    for i in user.split('0'):
        if i:
            split.append(i)
    print(split)
    empty_dict['Firstname']=split[0]
    empty_dict['Lastname']=split[1]
    empty_dict['ID']=split[2]
    print(empty_dict)
parse_string()

# def parse_encoded_string(encoded_str):
#     # data_parts = encoded_str.split('0')
#     data_parts=[]
#     for i in encoded_str.split('0'):
#         if i:
#             data_parts.append(i)
#     first_name = data_parts[0]
#     last_name = data_parts[1]
#     id = data_parts[2]
#     result = {
#         "first_name": first_name,
#         "last_name": last_name,
#         "id": id
#     }
#     return result
# input_string="Aman000Tiwari0000906"
# parsed_data = parse_encoded_string(input_string)
# print(parsed_data)