# Play Around with wtf

Do note that this is the customizable CLI Dashboard and not the utility to lookup terms.

`wtf` is fun, it can be customized using a lot of different modules.

Here are some of my notes.

## Placing Modules

In the config the parameters for placing modules are called `left` and `top`. Just think [cartesian coordinate system](https://en.wikipedia.org/wiki/Cartesian_coordinate_system) and `x` and `y`respectively. Ignore the fact that [quadrant IV](https://en.wikipedia.org/wiki/Quadrant_(plane_geometry)) normally has negative numbers on the y-axis (`top`) and apply positive numbers.

```
      0    1    2 (x) left
    +--------------+
 0  |    |    |    |
 1  |    |    |    |
 2  |    |    |    |
 (y)+--------------+
 top

```

## Indicating timezones

None of [the examples](https://github.com/senorprogrammer/wtf/tree/master/_sample_configs) contain cities with multipart names.

If you want to specify cities with multipart names, the timezone parameter has to use underscore instead of space.

```yaml
clocks:
  colors:
    rows:
      even: "lightblue"
      odd: "white"
  enabled: true
  locations:
    Copenhagen: "Europe/Copenhagen"
    Chiba: "Asia/Tokyo"
    New York: "America/New_York"
    Los Angeles: "America/Los_Angeles"
    UTC: "Etc/UTC"
```

Source: [wtf documentation](https://wtfutil.com/)
Source: [GitHub](https://github.com/senorprogrammer/wtf)
