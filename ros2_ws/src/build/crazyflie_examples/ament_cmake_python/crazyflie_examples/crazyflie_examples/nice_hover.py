#!/usr/bin/env python
import socket
import numpy as np
import re
from crazyflie_py import *


def main():
    Z = 2.
    
    swarm = Crazyswarm()
    timeHelper = swarm.timeHelper
    allcfs = swarm.allcfs

    mytcp = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    mytcp.bind(('192.168.100.22', 55))
    mytcp.listen(1)
    connection, addr = mytcp.accept();
    print('Connected with ' + addr[0] + ':' + str(addr[1]))
    connection.send(b'Connection: OK\n')
    while True:
        data = connection.recv(1024)
        if not data: continue
        cleanData = data.decode()
        if(cleanData[0] != 'c'): continue
        print(cleanData)
        #default cube location cube postion(0.60, 0.10, 1.10)
        count = 0
        posList = {}
        for axis in cleanData[cleanData.find('(') + 1:cleanData.find(')')].split(',') :
             print(float(axis))
             posList[count] = float(axis)
             count+= 1
        if(posList[0] != .6): break
    connection.close()

    allcfs.takeoff(targetHeight=Z, duration=2. + Z)
    timeHelper.sleep(.5)
    for cf in allcfs.crazyflies:
            print(cf)
            pos = np.array(cf.initialPosition) + np.array([0, 0, Z])
            #pos = np.array[0, 0, Z]
            #coordinates, yaw(radians), time
            cf.goTo(pos, 0., 1.5)
            #timeHelper.sleep(1)
            #pos2 = np.array(1, 1, Z)
            #cf.goTo(pos2, 0., 1.5)

    #print("press button to continue...")
    #swarm.input.waitUntilButtonPressed()
    timeHelper.sleep(1.)
    allcfs.land(targetHeight=0.02, duration=1.0+Z)
    #timeHelper.sleep(1.0+Z)

if __name__ == "__main__":
    main()
