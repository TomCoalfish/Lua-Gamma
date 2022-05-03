
%{
#include "Gamma/Analysis.h"
#include <cassert>
%}


namespace gam 
{
    template<class Tv=gam::real>
    class ZeroCross{
    public:

        ZeroCross(Tv prev = Tv(0));

        /// Detect zero crossing

        /// \returns 
        ///		 0 if no zero crossing,
        ///		-1 if a negative (falling) zero crossing, or	
        ///		 1 if a positive (rising) zero crossing.
        int operator()(Tv input){
            int pzc = int((input > Tv(0)) && (mPrev <= Tv(0)));
            int nzc =-int((input < Tv(0)) && (mPrev >= Tv(0)));
            mPrev = input;
            return pzc + nzc;
        }

        %extend {
            int __getitem__(Tv input) { return (*$self)(input); }

            bool zero_cross(Tv input) { return (*$self)(input) == 0; }
            bool negative(Tv input) { return (*$self)(input) < 0; }
        }
    };
}