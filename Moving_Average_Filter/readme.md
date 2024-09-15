# Digital Filters
## Introduction

 - Digital filters are algorithms used to process discrete signals to enhance or suppress certain aspects of the data. They work by manipulating a sequence of digital data points to achieve a desired outcome, such as removing noise, smoothing data, or extracting specific features , There are two main types:

**Finite Impulse Response (FIR) Filters**

- These filters have a finite duration impulse response. They are known for their stability and linear phase response, making them suitable for applications where phase distortion must be minimized.

**Infinite Impulse Response (IIR) Filters**

- These filters have an infinite duration impulse response due to feedback mechanisms. They are often more computationally efficient than FIR filters but can be less stable and may introduce phase distortion.

FIR are easier to design with an enough number of taps while IIR are more complex and have stability concerns but more efficient.
The number of taps are determined by the transition width 
Famous Example of a FIR Filter is Moving-average filter.
Convolution can be though of as a filtering process as when we filter a signal we simply take the impulse response of this filter and convolve it with the signal.

and there are other types as :
- Multi-rate filters
- Adaptive filters

**Weighted Moving Average Filters**

- weighted moving average filters are a type of digital filter used to smooth time-series data by averaging values over a specified window, but with different weights applied to each value. This means that more recent or relevant data points can be given more influence than older ones.

- Window Size: 
The filter uses a window of a fixed number of data points.

- Weights: 
Each data point within the window is multiplied by a weight, which determines its importance.
Averaging: The weighted values are summed and then divided by the sum of the weights to produce the filtered output.

## FIR Filters Realizations

- Direct Form

![FIR_Dirct_Form](Moving_Average_Filter/image/dirct_form.png)

*Figure 1: Dirct_Form*


- Transposed Form

![FIR_Transposed_Form](/image/transposed_form.png)

*Figure 2: Transposed_Form*

- Symmetric Form

## Design Methodology 

- we need to design a weighted moving average filter in direct-form with H = [1  0.5  0.25  0.125] with Fs = 100 MHz.

![Weighted Moving Average Filter](image\weighted.png)

*Figure 3: Weighted Moving Average Filter*

## Testing 

- we test this Weighted Moving Average Filter by applying input file in Hexadecimal and observe the output in Hexadecimal file.

## Wave_form

![wave_form](image\wave_form.png)

*Figure 4: Wave_Form*

- After we applying an input we waits about 3 clock cycles to output the data_out as shown in the wave.










