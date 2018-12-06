# SQL output is imported as a pandas dataframe variable called "df"
import pandas as pd

# Use Periscope to materialize a dataframe by passing the dataframe to periscope.materialize()
periscope.materialize(df)
