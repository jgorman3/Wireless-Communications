import scipy
import matplotlib.pyplot as plt
import scipy.integrate as integrate

#enter a periodic signal and output a its fourier representation
class FourierSeries:
    def __init__(self, function, period, startval):
        #making assumption this is all I need
        self.function = function
        self.period = period
        self.startval = startval
        self.frequency = 1 / period
        self.twopi = 2*pi
        self.omega = twopi*period

    def TrigForm(self, function, period, intervals):
        #find a0
        a0 = self.frequency * integrate.quad(function,0,period)
        #find an
        sinefunction = function * cos(intervals*self.twopi*self.frequency*x)
        an = (2 / self.frequency) * integrate.quad(sinefunction,0,period)
        #find bn
        cosfunction = function * sin(intervals*self.twopi*self.frequency*x)
        bn = (2 / self.frequency) * integrate.quad(cosfunction,0,period)

        #produce trig fourier series
        for i in range(1,intervals):
            an* cos(intervals*self.twopi*self.frequency*x) + bn* cos(intervals*self.twopi*self.frequency*x)

    def CompactTrigForm(self, function, period):
        return 0

    def ExponentialForm(self, function, period):
        return 0

    def FormConversions(self, function, period):
        return 0

plt.plot([1,2,3,4])
plt.ylabel('some numbers')
plt.show()
