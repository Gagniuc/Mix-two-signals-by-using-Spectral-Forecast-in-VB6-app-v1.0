# Intro

This project uses my own mathematical model published in the journal [Chaos](https://aip.scitation.org/doi/10.1063/1.5120818). The model is called Spectral Forecast. The Spectral Forecast equation is a part of the Spectral Forecast model. The Spectral Forecast equation was initially used on matrices and can be used on other multidimensional mathematical objects. Here, a new utility is demonstrated for signals by using the equation on vectors of the same size. This new use on 1-dimensional objects was published [here](https://www.wiley.com/en-ie/Algorithms+in+Bioinformatics:+Theory+and+Implementation-p-9781119697992).

# Spectral Forecast equation in VB6 (1.0)

Spectral Forecast equation (VB6 app 1.0) - is a demo application designed in Visual Basic 6.0, that is able to mix two signals in arbitrary proportions. Different cases can be seen, with two different waveform signals that are combined depending on the value of a so-called distance <i>d</i>. This distance <i>d</i> can be defined from zero to the maximum value found above the two vectors that represent these signals (<i>Max(d)</i>). Note that the implementation of <i>Spectral Forecast equation (VB6 app <b>1.0</b>)</i> has an issue with the autoredraw setting in the case of Form1 (a VB6 specific issue). Thus, certain real-time processing delays can be observed. However, the version 2.0 that can be found [here](https://github.com/Gagniuc/Mix-two-signals-by-using-Spectral-Forecast-in-VB6-app-v2.0) does not pose a problem with autoredraw.


![screenshot](https://github.com/Gagniuc/Mix-signals-by-using-Spectral-Forecast-v1.0/blob/main/img/Spectral%20Forecast%20in%20VB%20(1).gif?raw=true)

![screenshot](https://github.com/Gagniuc/Mix-signals-by-using-Spectral-Forecast-v1.0/blob/main/img/Spectral%20Forecast%20in%20VB%20(2).gif?raw=true)

<hr>

![screenshot](https://github.com/Gagniuc/Spectral-Forecast-equation-VB6-app/blob/main/img/sf1.png?raw=true)

![screenshot](https://github.com/Gagniuc/Spectral-Forecast-equation-VB6-app/blob/main/img/sf2.png?raw=true)

![screenshot](https://github.com/Gagniuc/Spectral-Forecast-equation-VB6-app/blob/main/img/sf3.png?raw=true)

![screenshot](https://github.com/Gagniuc/Spectral-Forecast-equation-VB6-app/blob/main/img/sf4.png?raw=true)

![screenshot](https://github.com/Gagniuc/Spectral-Forecast-equation-VB6-app/blob/main/img/sf5.png?raw=true)

![screenshot](https://github.com/Gagniuc/Spectral-Forecast-equation-VB6-app/blob/main/img/sf6.png?raw=true)


# References

<i>Paul A. Gagniuc et al. Spectral forecast: A general purpose prediction model as an alternative to classical neural networks. Chaos 30, 033119 (2020).</i>

<i>Paul A. Gagniuc. Algorithms in Bioinformatics: Theory and Implementation. John Wiley & Sons, Hoboken, NJ, USA, 2021, ISBN: 9781119697961.</i>
