from bokeh.io import curdoc
from bokeh.layouts import column
from bokeh.models import ColumnDataSource, Slider
from bokeh.plotting import figure
from numpy.random import random

N = 300
source = ColumnDataSource(data={'x': random(N), 'y': random(N)})    # ①

plot = figure()
plot.circle(x='x', y='y', source=source)

slider = Slider(start=100, end=1000, value=N, step=10, title='Number of points')    # ②

def callback(attr, old,  new):    # ③
    N = slider.value    # ④
    source.data = {'x': random(N), 'y': random(N)}    # ⑤

slider.on_change('value', callback)    # ⑥

layout = column(slider, plot)    # ⑦

curdoc().add_root(layout)    # ⑧