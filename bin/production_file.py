import os, sys
import shutil

shutil.copy('../Debug/WIZ750SR_App_Eclipse.bin', 'WIZ750SR_App_Eclipse.bin')
shutil.copy('../../WIZ750SR_Boot_Eclipse/Debug/WIZ750SR_Boot_Eclipse.bin', 'WIZ750SR_Boot_Eclipse.bin')

f1 = open('WIZ750SR_App_Eclipse.bin', 'rb')
f2 = open('WIZ750SR_Boot_Eclipse.bin', 'rb')
f3 = open('WIZ750SR_Production.bin', 'wb')

read_data = f2.read()
print('boot file size: %r' % len(read_data))
f3.write(read_data)
if(len(read_data) < 28*1024):
    left_size = 28*1024 - len(read_data)
    print('left file size: %r' % left_size)
    for i in range(left_size):
        f3.write(b'\xff')
    print("i : %r" % i)
    read_data = f1.read()
    f3.write(read_data)
    print('app file size: %r' % len(read_data))

f1.close()
f2.close()
f3.close()
f4 = open('WIZ750SR_Production.bin', 'rb')
print('new file size: %r' % len(f4.read()))
f4.close()