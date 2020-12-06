Module for plotting.

## Aim (and its design principle)

### Minimize the time to plot.

Have less functions.

Have less arguments in a function.

Make interfaces consistent.

### Maximize the information contained in a plot.

Make plots interactive.

Design rich plot templates.

### Minimize the time to ship.

Make the default plot templates ready for presentation, publication, and impressing the audience.

## Install

```julia
using Pkg: add

add(url="https://github.com/KwatME/Plot.jl")
```

## Use

### Plot function

#### Plot vectors as lines

#### Plot a matrix as heat map

#### Plot a matrix as bubble map

#### Plot numbers as histogram

#### Plot labels as pie

#### Plot labels as bar

#### Plot points in 2D

#### Plot points in 3D

### Other function

#### Use style optimized for Jupyter

See [examples](notebook/example.ipynb).
