#!/usr/bin/python
# -*- coding: utf-8 -*-

import numpy
import scipy
import matplotlib.pyplot
import matplotlib.mlab
import datetime
import time
import JD
#import scipy.interpolate.interp1d

np=numpy
sp=scipy
mlab=matplotlib.mlab
plt=matplotlib.pyplot

#Wetter laden
def loadweather():
    """w08=mlab.csv2rec("wetter_20080101.csv")
    w09=mlab.csv2rec("wetter_20090101.csv")
    w10=mlab.csv2rec("wetter_20100101.csv")
    w11=mlab.csv2rec("wetter_20110101.csv")
    w12=mlab.csv2rec("wetter_20120101.csv")

    t08=w08["mean_temperaturec"]
    t09=w09["mean_temperaturec"]
    t10=w10["mean_temperaturec"]
    t11=w11["mean_temperaturec"]
    t12=w12["mean_temperaturec"]
    timew08=w08["cet"]
    timew09=w09["cet"]
    timew10=w10["cet"]
    timew11=w11["cet"]
    timew12=w12["cet"]
    w=sp.r_[t08,t09,t10,t11,t12]
    wtime=sp.r_[timew08,timew09,timew10,timew11,timew12]"""
    w_ber_ams=mlab.csv2rec("wetter_ber_ams.csv")
    w=w_ber_ams["temperatureavgc"]
    wtime=w_ber_ams["date"]
    return w,wtime

def add_data(filenamelist):
    data=[]
    for filename in filenamelist:
        data.append(mlab.csv2rec(filename,delimiter=","))
    return data

def gentimeplot(time,data,dt):
    t_y=365.25

    #convert dates to mjd:
    #print time
    time=[datetime.datetime(*(date.timetuple()[:6])) for date in time]
    time=[JD.date2MJD(date) for date in time]
    #use continuous timescale:
    time_con=np.arange(time[0],time[-1],dt)
                        
    #interpolieren der Daten:
    data_interp=np.interp(time_con,time,data)
    #Get Energy consumption from absoute values (derivative)
    #wöchentlich aktualisierter Jahresverbrauch, Strom
    #data_cons_MAdt=numpy.gradient(data_interp,dt)*t_y
    data_cons=[t_y*(data[i+1]-data[i])/(time[i+1]-time[i]) for i in range(len(data)-1)]
    data_cons.insert(0,data_cons[0])
    data_cons_MAdt=[t_y*(data_interp[i+1]-data_interp[i])/(time_con[i+1]-time_con[i]) for i in range(len(data_interp)-1)]
    data_cons_MAdt.insert(0,data_cons_MAdt[0])    
        
    #durchschnittlicher Jahres Verbrauch, Strom
    data_cons_MA365=[]
    mva=t_y/dt
    t=time_con
    for i in range(len(data_interp)):
        t_delta=(t[i]-t[0])        
        if t_delta/dt<mva: data_cons_MA365.append(t_y*(data_interp[i]-data_interp[0])/(t_delta))
        else: data_cons_MA365.append(t_y*(data_interp[i]-data_interp[i-mva])/(t[i]-t[i-mva]))

    #convert time back to gregorian:
    time=[JD.MJD2date(date) for date in time]
    time_con=[JD.MJD2date(date) for date in time_con]
    return time,time_con,data_cons,data_cons_MAdt,data_cons_MA365

def genheatingcharacteristic(data):
  hhcar=[]
  return hchar
  

#generates interpolated plotting data from data 
def genplotdata(data,dt):
    newdata=[]
    for i in data:
        newdata.append({
        "strom":[gentimeplot(i["datum"],i["strom"],dt),u"[kWh/Jahr]","b"],
        "gas":[gentimeplot(i["datum"],i["gas"],dt),u"[m³/Jahr]","r"],
        })

    return newdata

def main():
    showlabel=False
    filenames=[]
    filenames+=[u"Zähler_amsterdamerstraße.csv"]
    #filenames+=[u"Zähler_Schnorrstraße.csv",u"Zähler_Nordendstraße.csv"]
    
    d=add_data(filenames)
    #print d
    data=genplotdata(d,1)
    #print data[0]["strom"][0]
    
    fig = plt.figure()
    ax = fig.add_subplot(111)

    #load weatherdata #todo: Wetterdaten mehrerer Wohnungen laden
    weather,tweather=loadweather()
    if showlabel==True: ax.plot(tweather,weather*100,"y--",label="Wetter, Berlin, Avg_T_C*10^3")
    else: ax.plot(tweather,weather*100,"y--")
    
    
    skala=u": 2-stündl. "
    verbrauch=u"Jahresverbr. "
    for i,name in zip(data,filenames):
        for dataname,pl in i.iteritems():
            einheit=pl[1]
            color=pl[2]
            pl_dat=pl[0]
            #ax.plot(pl[0],pl[2],"-"+c,label=dataname+" "+name) #normal time   
            if showlabel==True:
              ax.plot(pl_dat[1],pl_dat[3],color+"--",lw=0.5,label=dataname+skala+verbrauch+name+u" in "+einheit) #interpolated MAdtvalues
              ax.plot(pl_dat[1],pl_dat[4],color+"-",lw=2,label=dataname+u" $\O$"+skala+"MA365-durchschn. "+verbrauch+name+u" in "+einheit) #weakly 
            else:
              ax.plot(pl_dat[1],pl_dat[3],color+"--",lw=0.5) #interpolated MAdtvalues
              ax.plot(pl_dat[1],pl_dat[4],color+"-",lw=2) #weakly 
              #weakly interpolated MA365 values
    
    
    ##formatting of the diagram:
    #ax.set_xlabel("Datum")
    fig.autofmt_xdate()
    ax.legend(fancybox=True)#,bbox_to_anchor=(0.5, 1.05),loc='lower left'
    
    # set some legend properties.  All the code below is optional.  The
    # defaults are usually sensible but if you need more control, this
    # shows you how
    if showlabel==True:
      leg = plt.gca().get_legend()

      ltext  = leg.get_texts()  # all the text.Text instance in the legend
      llines = leg.get_lines()  # all the lines.Line2D instance in the legend
      frame  = leg.get_frame()  # the patch.Rectangle instance surrounding the legend

      # see text.Text, lines.Line2D, and patches.Rectangle for more info on
      # the settable properties of lines, text, and rectangles
      frame.set_facecolor('0.80')      # set the frame face color to light gray
      frame.set_alpha(0.9)
      plt.setp(ltext, fontsize='small')    # the legend text fontsize
      #plt.setp(llines, linewidth=1)      # the legend linewidth
      #leg.draw_frame(False)           # don't draw the legend frame
    
    plt.grid(True)
    plt.show()

if __name__ == "__main__":
    main()
