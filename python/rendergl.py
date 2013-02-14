import bpy

bpy.ops.render.opengl()
bpy.data.images['Render Result'].save_render("satellite.png")