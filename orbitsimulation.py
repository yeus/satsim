#!python

#skript berechnet DH-Matrizen numerisch...
import numpy as np
import numpy.linalg

#from pylab import *
norm=numpy.linalg.norm
mytype=np.float64
cross=np.cross
dot=np.dot
arccos=np.math.acos
cos=np.cos
sin=np.sin
sgn=np.sign
arctan2=np.math.atan2
sqrt=np.sqrt

pi=np.pi

##al the following code is just for earth's system
#earth's gravity coefficient [m*s^-2]
m_e=5.9736e24 
g=9.82
r_e=6371.0 #[km] radius of earth

mu=398600.4418 #plusminus 0.0008 km^3 s^-2}. http://en.wikipedia.org/wiki/Standard_gravitational_parameter
#k = 0.01720209895# \ A^{\frac{3}{2}} \ D^{-1} \ S^{-\frac{1}{2}} } \ #Sonne

#energy e
def energy(r,dr):
	return 0.5*dot(dr,dr)-mu/norm(r)

#semimajoraxis orbital element "a"
#v and r in [km]
def semimajoraxis(r,dr):
	mu=398600.4418
	e=energy(r,dr)
	a=-mu/e*0.5
	return a
	
#error array:  with E=(n-n0)/n0
def geterror(n0,n):
	error=(n-n0)/n0
	return error	

#noch nicht fertig
def state2oe(r,v):
    h=cross(r,v)#orbital momentum
    E=0.5*dot(v,v)-mu/norm(r)#orbital energy
    inc=arccos(h[2]/norm(h))
    #print h,norm(h),r,v
    return inc
    
def orbit2worldtransform(lan,inc,aop):
	#kann noch optimiert werden (z.B. mit numpy)
	alpha=lan
	beta=inc
	gamma=aop
	ca=cos(alpha)
	cb=cos(beta)
	cg=cos(gamma)
	sa=sin(alpha)
	sb=sin(beta)
	sg=sin(gamma)
	return np.array(((ca*cg - cb*sa*sg	,-(cb*cg*sa) - ca*sg	,sa*sb)
					,(cg*sa + ca*cb*sg	,ca*cb*cg - sa*sg		,-(ca*sb))
					,(sb*sg				,cg*sb					,cb))
					,mytype)
					
def orbit2world(lan,inc,aop,vec):
	return dot(orbit2worldtransform(lan,inc,aop),vec)

def ma2ean(man,ecc):
	minerror=pi/10000000000
	error=pi	
	En=man+0.85*ecc*sgn(sin(man))
	while(error>minerror):
		Eo=En
		En=Eo-(Eo-ecc*sin(Eo)-man)/(1-ecc*cos(Eo))
		error=abs(En-Eo)	
		#print En,Eo,error
	return En
	
def ean2tra(ean,ecc):
	e=ecc
	E=ean
	return 2*arctan2(sqrt(1+e)*sin(E/2),sqrt(1-e)*cos(E/2))
	
def ma2tra(man,ecc):
	return ean2tra(ma2ean(man,ecc),ecc)

def orbitpos(sma,ecc,tra):
	a=sma
	e=ecc
	p=a*(1-e*e)
	r_abs=p/(1+e*cos(tra))
	r=np.array([r_abs*cos(tra),
				r_abs*sin(tra),
				0],mytype)
	return r

def oe2vel(oe):
	mu=398600.4418
	sma=oe["sma"]
	ecc=e=oe["ecc"]
	tra=oe["tra"]
	lan=oe["lan"]
	inc=oe["inc"]
	aop=oe["aop"]
	h=sqrt(mu*sma*(1-e*e))
	v=np.array([e*sin(tra),1+e*cos(tra),0],mytype)*(mu/h)
	v=orbit2world(lan,inc,aop,v)
	return v
	
def oe2pos(oe):
	sma=oe["sma"]
	ecc=e=oe["ecc"]
	tra=oe["tra"]
	lan=oe["lan"]
	inc=oe["inc"]
	aop=oe["aop"]
	r=orbitpos(sma,ecc,tra)
	r=orbit2world(lan,inc,aop,r)	
	return r

def generate_oe(r_per,r_apo):
	oe={
		#'epoch':
		'ecc':(r_apo-r_per)/(r_apo+r_per),#eccentricity
		'sma':(r_apo+r_per)*0.5,#Semimajor axis
		'inc':pi/10000,#inclination (should be constant)
		'lan':0,#pi/2,#longitude of ascending node , Omega(should be constant)
		'aop':0,#30*pi/180,#argument of perapsis, omega
		'tra':0#true anomaly at epoch 
		}
	return oe

#propagators:
#y: state vector
#h: timestep dt
#g: function to be propagated #Propagation Functions (has to be of the form: y'=f(y)  where f is the function to be propagated and y the state vector)

#Euler:
"""def eu(y,h,g):
	yn=y+h*g(y)
	#ddr=f(r)
	#ndr=ddr*dt+dr
	#nr=r+ndr*dt
	return yn

#halb implizite Euler Methode
def ehi(y,h,g):
	r,v=y[3:],y[:3]
	d=norm(r)
	a=-mu/(d**3)*r
	v+=a*h
	r+=v*h
	return r_[v,r]"""

#Runge Kutta 4
def RK4(y,h,g):
	k1=g(y);
	k2=g(y+h*.5*k1);
	k3=g(y+h*.5*k2);
	k4=g(y+h*k3);
	yn=y+h/6.0*(k1+2*(k2+k3)+k4)
	return yn

#Kepler
"""def kep(oe,t):
	ecc=oe["ecc"]
	sma=oe["sma"]
	n=sqrt(mu/(sma**3))#mean angular velocity

	man=n*t
	oe["tra"]=tra=ma2tra(man,ecc)
	r=oe2pos(oe)
	dr=oe2vel(oe)
	
	return r_[dr,r]"""

#Propagation Functions (has to be of the form: y'=f(y)  where f is the function to be propagated and y the state vector)
#y: state vector of an object
#returns: y' (derivativ of state vector y)
def grav_func(y):
        dy=np.zeros(6)#derivative of y (function )
	r=y[3:]
	d=norm(r)
	a=-mu/(d**3)*r
	v=y[:3]
	return np.concatenate((a,v))  

#defines a simulation necessary variables:
#
#

"""class simulation:
  #def __init__(self,)
  def run(self,time=-1)
    currenttime=0.0
    timemax=
    while(currenttime<timemax)"""
    


def test():
  h=5000
  delta=0.000 #=3m ==> realistisches scenario
  d=.1#Anzahl der zu berechnenden Tage im Orbit:
  #T=0.99*2*pi/sqrt(mu/((r_e+h)**3))	#simulation over a single orbit
  T=d*24*3600.0 #overall simulation Time
  dt=100 #in seconds

  oe=generate_oe(r_e+h,r_e+h)
  y=np.concatenate((oe2vel(oe),[r_e+h,0,0]))
  ye=yk=y

  steps=1000
  ork=np.empty((steps,6))
  oeu=np.empty((steps,6))
  okp=np.empty((steps,6))
  for i in range(steps):
    y=RK4(y,dt,grav_func)
    ork[i]=y
    
    #ye=ehi(ye,dt,grav_func)
    #oeu[i]=ye	
    
    #yk=kep(oe,(i+1)*dt)
    #okp[i]=yk

  e_rk=ork-okp
  #e_eu=oeu-okp
  import matplotlib.pyplot as plt
  #plt.plot(okp[:,3],okp[:,4],"b+")
  plt.plot(ork[:,3],ork[:,4],"r")
  #plt.plot(np.arange(steps)*dt,sqrt(e_rk[:,3]*e_rk[:,3]+e_rk[:,4]*e_rk[:,4]))
  #plt.plot(oeu[:,3],oeu[:,4],"y+")
  #plt.plot(norm(e_eu[:,3:5]))
  plt.show()
  
if __name__ == '__main__':
  test()
