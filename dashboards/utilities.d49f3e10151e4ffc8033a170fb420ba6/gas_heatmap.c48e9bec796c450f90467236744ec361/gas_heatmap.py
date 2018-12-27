# SQL output is imported as a dataframe variable called 'df'
# Use Periscope to visualize a dataframe or show text by passing data to periscope.table() or periscope.text() respectively. Show an image by calling periscope.image() after your plot.

import numpy as np
import seaborn as sns


df = df.pivot("month", "day", "usage")
print df
ax = sns.heatmap(df)
periscope.output(ax)
