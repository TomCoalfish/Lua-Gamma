# LuaJIT-Gamma-Modular
Gamma modular wrapper

# Monolithic Wrapper
* Originally I wrapped it all in a single interface. I didn't particurly like it much, it was all just experiment to see how it worked.

# Modular Wrapper
* The new wrapper will be modular, instead of everything being in a single interface there are now interfaces for different things in the Gamma library. I think it is more intuitive and makes it easier to use it.

# Some things won't be wrapped for now
* Voices, scheduler, audio system stuff. Some things like arrays and other utilities for c++ are for the library, don't have a huge usefulness to a scripter. If it isn't needed to use the library then I don't bother to wrap it. 
