# LuaJIT-Gamma
Gamma wrapper

# Gcc is kind of retarded
* It requires this-> to access some things in classes inherited from
* It isn't supposed to it should understand that if you inherit a class you should have all the members in it
* But it doesn't because it is retarded
* So nothing really works the way it ought to
* it also can't find a class that inherited from directly above it
* gcc is retarded about it and you have to deal with it
