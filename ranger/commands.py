import subprocess
import os
from shlex import quote

from ranger.ext.img_display import ImageDisplayer, register_image_displayer

@register_image_displayer("img2sixel")
class Img2sixelDisplayer(ImageDisplayer):
    # Draws image placed in path
    def draw(self, path, start_x, start_y, width, height):
        print("\033[%d;%dH" % (start_y, start_x+1))
        path = quote(path)
        draw_cmd = "img2sixel {} -h {} -w {}".format(path, height*3, "auto")
        subprocess.run(draw_cmd.split(" "))
    # Clears the area of the screen where the image was before drawing a preview of another file
    def clear(self, start_x, start_y, width, height):
        cleaner = " "*width
        for i in range(height):
            print("\033[%d;%dH" % (start_y+i, start_x+1))
            print(cleaner)
        pass