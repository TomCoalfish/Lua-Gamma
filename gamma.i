%module gamma
%{
#define GAMMA_H_INC_ALL
#include "Gamma/Gamma.h"
#include "Gamma/Voices.h"
using namespace gam;
using namespace gam::phsInc;
%}

%include "modules/std_gamma.i"
%include "modules/envfollow.i"
%include "modules/zerocross.i"
%include "modules/pcounter.i"
%include "modules/maxabs.i"
%include "modules/silencedetect.i"
%include "modules/threshold.i"
%include "modules/zerocrossrate.i"