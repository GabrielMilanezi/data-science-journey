import pandas as pd

# Example 1: Creating a DataFrame
data = {
    'Name': ['Alice', 'Bob', 'Charlie'],
    'Age': [24, 30, 22],
    'City': ['New York', 'Los Angeles', 'Chicago']
}
df = pd.DataFrame(data)
print("DataFrame:")
print(df)

# Example 2: Basic Statistics
print("\nBasic Statistics:")
print(df.describe())

# Example 3: Filtering Data
print("\nFiltering:")
young_people = df[df['Age'] < 30]
print(young_people)

# Example 4: Grouping Data
print("\nGrouping:")
grouped = df.groupby('City').mean()
print(grouped)