%{
#include "Gamma/Analysis.h"
#include <cassert>
%}

namespace gam {
    template <class Tv=gam::real>
    class ZeroCrossRate : public PCounter {
    public:        
        ZeroCrossRate(int winSize=256);
        float value() const;
        %extend {
            Tv __getitem__(Tv input) { return (*$self)(input); }
        }
   };
}

%template(ZeroCrossRate) gam::ZeroCrossRate<SampleType>;