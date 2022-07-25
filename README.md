# Polybar Xbox One Controller Status

Requirements:
- upower
- xone

A bad module for keeping track of your Xbox One controller battery status.  

Here's an example module config:

```
[module/xbox]
interval = 30
type = custom/script
exec = ${HOME}/.config/polybar/polybar_scripts/polybar-controller-power.sh
format = "<label>"
```
