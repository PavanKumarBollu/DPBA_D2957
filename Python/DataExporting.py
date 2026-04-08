import pandas as pd

# transaction_df = pd.read_csv("D:\\01_AF\\DPBA_D2957\\indian_banking_transactions.csv", low_memory = False)

# print(transaction_df.head())

# custoemr_id = pd.DataFrame(
#     {
#         "user_id":pd.unique(transaction_df["customer_id"].values.ravel())
#     }
# )

# custoemr_id.to_csv("customer_ids.csv", index=False)

# print(custoemr_id.count)

# insert the data into database

import mysql.connector 
print (mysql.connector.__version__)


connection = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Pav@0211",
    database = "banktransaction"
)
cursor = connection.cursor()

customer_ids = pd.read_csv("D:\\01_AF\\DPBA_D2957\\Python\\customer_ids.csv", low_memory = False)

for _, row in customer_ids.iterrows():
    cursor.execute("INSERT INTO customerids(customer_id) values (%s)", (row['user_id'],))

connection.commit()