def pretty_table(query):
    cursor.execute(query)
    records = cursor.fetchall()
    col_names =  cursor.column_names
    df = pd.DataFrame(columns = col_names)
    for i in range(len(records)):
        df.loc["Row"+str(i+1),:] = records[i]
    return df
