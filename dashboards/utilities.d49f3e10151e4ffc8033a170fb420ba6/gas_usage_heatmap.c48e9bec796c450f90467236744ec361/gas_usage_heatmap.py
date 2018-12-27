# SQL output is imported as a dataframe variable called 'df'
# Use Periscope to visualize a dataframe or show text by passing data to periscope.table() or periscope.text() respectively. Show an image by calling periscope.image() after your plot.
import matplotlib.pyplot as plt
import numpy as np
import seaborn as sns

days = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']

df = df.pivot("month", "day", "usage")
df.columns = days

grid_kws = {"height_ratios": (.9, .03), "hspace": .4}
f, (ax, cbar_ax) = plt.subplots(2,gridspec_kw=grid_kws, figsize=(12,7))

f = sns.heatmap(df, ax=ax, cbar_ax=cbar_ax, cbar_kws={"orientation": "horizontal", "label": "Therms"}, cmap="YlGnBu")
f.set_yticklabels(f.get_yticklabels(), rotation=0)
f.set_xticklabels(f.get_xticklabels(), rotation=0)
periscope.output(f)
