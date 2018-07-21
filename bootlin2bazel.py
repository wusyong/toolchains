#!/usr/bin/env python3
import os
import yaml
import sys
from string import Template

def gen_tool_wrappers():
    wrappers = ['ar', 'as', 'gcc', 'gcov', 'ld', 'nm', 'objcopy', 'objdump', 'strip']
    for w in wrappers:
        filename = "./tools/{}/{}/{}-{}".format(target_conf['strip_perfix'],
            target_conf['tool_perfix'], target_conf['tool_perfix'], w)

        os.makedirs(os.path.dirname(filename), exist_ok=True)
        with open("./template/wrappers.tpl") as f:
            temp = Template(f.read())

        print("Writing file: {}".format(filename))
        target_conf['tool_wrapper'] = "{}-{}".format(target_conf['tool_perfix'],w)
        with open(filename, "w+") as f:
            f.write(temp.substitute(target_conf))

        os.chmod(filename, 0o555)


def gen_tools(file_name, template):

    os.makedirs(os.path.dirname(file_name), exist_ok=True)
    with open(template) as f:
        temp = Template(f.read())
    print("Writing file: {}".format(file_name))
    with open(file_name, "w+") as f:
        f.write(temp.substitute(target_conf))
        #f.write(temp.substitute(tool_perfix=target_conf["tool-perfix"]))

def usage():
    print("{} ARCH".format(sys.argv[0]))
    print("Available ARCH: ", end='')
    for arch in conf:
        print(arch, end=', ')
    print("")

if __name__ == "__main__":
    with open('config.yaml', 'r') as f:
        conf = yaml.load(f.read())

    if len(sys.argv) < 2:
        usage()
        sys.exit(0)

    target_arch = sys.argv[1]
    if target_arch not in conf:
        print("{} is an invalid ARCH".format(target_arch))
        sys.exit(0)
    
    target_conf = conf[target_arch]
    gen_tools("./compilers/{}.BUILD".format(target_conf['strip_perfix']), "./template/compiler.tpl")
    gen_tools("./WORKSPACE.{}".format(target_arch), "./template/workspace.tpl")
    gen_tools("./tools/{}/BUILD".format(target_conf['strip_perfix']), "./template/toolchain_build.tpl")
    gen_tools("./tools/{}/CROSSTOOL".format(target_conf['strip_perfix']), "./template/crosstool.tpl")
    gen_tools("./tools/{}/{}/BUILD".format(target_conf['strip_perfix'], target_conf['tool_perfix']), "./template/wrapper_build.tpl")
    gen_tool_wrappers()
    