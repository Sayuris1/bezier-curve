# Bezier Curve

A cubic bezier curve creator for the [Defold](https://www.defold.com) game engine.

Feel free to ask questions: [the topic about this asset is on the Defold forum](https://forum.defold.com/t/shader-for-cubic-bezier-curve/65408).

## Usage

1. Add .zip as a [Defold library dependency](http://www.defold.com/manuals/libraries/)
2. Add "adjustable_bezier.collection" from the bezier folder to your collection.

## Settings
You can find some properties in the script component of the bezier game object

#### Is Nodes <kbd>bool</kbd>
If this is true, curve will have some draggable nodes to adjust it's shape.

#### Tan K <kbd>float</kbd>
Tangent multiplier.

#### Size <kbd>float</kbd>
Size of the curve.

## Messages
You can adjust the curve by sending some messages to the script component.

#### update_point
Updates a point that was used to calculate the curve. Then re-calculates the curve and draws it.

_PARAMETERS_
* __index__ <kbd>number</kbd> - Which point to update
* __new_pos__ <kbd>vec3</kbd> - New position of the point. MUST BE IN WORLD SPACE.

```lua
    msg.post("/adjustable_bezier/bezier#script", hash("update_point"), {index = 1, new_pos = vmath.vector3(100, 0, 0)})
```

![Curve Points](/curve.png)

#### set_node
Enable or disable the adjust nodes.

_PARAMETERS_
* __enabled__ <kbd>bool</kbd> - If true nodes are enabled. if not disabled.

#### set_tan_k
Updates tan_k.

_PARAMETERS_
* __tan_k__ <kbd>float</kbd> - New tan_k.

#### set_size
Updates size of the curve.

_PARAMETERS_
* __size__ <kbd>float</kbd> - New size.