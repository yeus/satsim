#!/usr/bin/python
# -*- coding: utf-8 -*-

import numpy as np
import matplotlib.pyplot as plt

fig = plt.figure(1, figsize=(6,8))
fig.title = "test "

ylim = (-0.05,.2)

csv=np.loadtxt(open("result.0100.0200.csv","rb"),delimiter=",",skiprows=2) 
t = csv[:,0]
y = csv[:,1:]
ax=plt.subplot(311)
ax.plot(t, y)
ax.set_xlim(left=4.0, right=13.0, auto=False)
ax.set_ylim(bottom = ylim[0], top = ylim[1])
plt.title('pub/sub, delay_range = [0,200] ms')
#plt.text(2, 0.65, r'$\cos(2 \pi t) \exp(-t)$')
plt.xlabel('time [s]')
plt.ylabel('ang. vel. (euler) [rad/s]')

#plt.rcParams['lines.linewidth'] = 2
#plt.rcParams['lines.color'] = 'r'

csv=np.loadtxt(open("resultmiddle.0050.0100.ms.csv","rb"),delimiter=",",skiprows=2) 
t = csv[:,0]
y = csv[:,1:]
ax=plt.subplot(312)
ax.plot(t, y)
ax.set_xlim(left=4.0, right=13.0, auto=False)
ax.set_ylim(bottom = ylim[0], top = ylim[1])
plt.title('pub/sub, delay_range = [10,50] ms')
#plt.text(2, 0.65, r'$\cos(2 \pi t) \exp(-t)$')
plt.xlabel('time [s]')
plt.ylabel('ang. vel. (euler) [rad/s]')

csv=np.loadtxt(open("result_nodelay.csv","rb"),delimiter=",",skiprows=2) 
t = csv[:,0]
y = csv[:,1:]
ax=plt.subplot(313)
ax.plot(t, y)
ax.set_xlim(left=4.0, right=13.0, auto=False)
ax.set_ylim(bottom = ylim[0], top = ylim[1])
plt.title('distributed controllers')
#plt.text(2, 0.65, r'$\cos(2 \pi t) \exp(-t)$')
plt.xlabel('time [s]')
plt.ylabel('ang. vel. (euler) [rad/s]')


# Tweak spacing to prevent clipping of ylabel
#plt.subplots_adjust(left=0.15, bottom=0.22, right=0.96)
plt.tight_layout()
#plt.show()
plt.savefig("delay_test.pdf",dpi=300)
