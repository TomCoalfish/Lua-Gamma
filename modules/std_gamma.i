
%include "stdint.i"
%include "std_vector.i"

%inline %{
typedef float SampleType;
%}


%template(stdvector) std::vector<SampleType>;
%template(realvector) std::vector<gam::real>;
