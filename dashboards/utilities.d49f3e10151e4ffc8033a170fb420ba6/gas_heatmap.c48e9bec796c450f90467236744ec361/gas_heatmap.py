# SQL output is imported as a dataframe variable called 'df'
# Use Periscope to visualize a dataframe or show text by passing data to periscope.table() or periscope.text() respectively. Show an image by calling periscope.image() after your plot.
import matplotlib.pyplot as plt
import numpy as np
import seaborn as sns


df = df.pivot("month", "day", "usage")
grid_kws = {"height_ratios": (.9, .05), "hspace": .3}
f, (ax, cbar_ax) = plt.subplots(2,gridspec_kw=grid_kws)
fig = sns.heatmap(df, ax=ax, cbar_ax=cbar_ax, cbar_kws={"orientation": "horizontal"}, cmap="YlGnBu", square=True)
periscope.output(fig)
