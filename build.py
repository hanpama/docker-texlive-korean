#!/usr/bin/python

"""
Builder

Build sphinx korean document with hanpama/texlive-korean image!

::
   $ ./build.py latexpdf

"""

import argparse
import os

from source import conf

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("make_args")

    project_name = conf.pfname
    cwd = os.path.dirname(os.path.realpath(__file__))
    make_args = parser.parse_args().make_args

    os.system("""docker run --name={project_name} -it -v {cwd}:/var/code \
    hanpama/texlive-korean make {make_args}""".format(
        project_name=project_name, cwd=cwd, make_args=make_args
    ))
    print("DONE")
    os.system("docker rm {project_name}".format(project_name=conf.pfname))
