dirname = '.'
for pwd,dirnames,filenames in os.walk(dirname):
    for filename in filenames:
        filepath = os.path.join(pwd,filename)

    for dirname in dirnames:
        dirpath = os.path.join(pwd,dirname)

