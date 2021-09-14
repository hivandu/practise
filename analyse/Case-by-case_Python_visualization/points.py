from bokeh.io import curdoc
from bokeh.layouts import column
from bokeh.models import ColumnDataSource, Slider
from bokeh.plotting import figure
from numpy.random import random

N=300
source=ColumnDataSource(data={
    'x': random(N),
    'y': random(N)
}) # 1

plot=figure()
plot.circle(
    x='x',
    y='y',
    source=source
)

slider=Slider(
    start=100, end=1000, value=N, step=10, title='Number of points' # 2
)

def callback(attr, old, new): # 3
    N = slider.value # 4
    source.data = {'x': random(N), 'y': random(N)} # 5

slider.on_change('value', callback) # 6

layout=column(slider, plot) # 7

curdoc().add_root(layout) # 8