import csv
import sqlite3

# Open a connection to the database
conn = sqlite3.connect('example.db')

# Create a cursor object
cur = conn.cursor()

# Create a table to hold the data
cur.execute('''
    CREATE TABLE IF NOT EXISTS mytable (
        id INTEGER PRIMARY KEY,
        name TEXT,
        age INTEGER,
        email TEXT
    )
''')

# Read data from the CSV file
with open('data.csv', 'r') as f:
    reader = csv.reader(f)
    next(reader)  # Skip the header row
    for row in reader:
        # Insert each row into the table
        cur.execute('INSERT INTO mytable (name, age, email) VALUES (?, ?, ?)',
                    (row[0], int(row[1]), row[2]))

# Commit the changes to the database
conn.commit()

# Close the connection
conn.close()
