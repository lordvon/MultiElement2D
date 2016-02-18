//Gmsh script
ce=0;//current entity.


//Airfoil parameters.
BASEDIM = 0.5;//base dimension, m, to base all other dimensions off of.
CHORD = {0.1,1,0.25};//element chords as a factor of BASEDIM.


//Grid parameters.
ELEMENTSIZE = 0.1*BASEDIM;//element size at the airfoil surface.
BBSIZE = 10*BASEDIM;//element size at the boundary.

//bounding box.
BBDIM = 20*CHORD;//bounding box dimension (square).


Function square//in: dim,size, out: points,lines
	Point(ce++)={dim/2,dim/2,0,size};
	Point(ce++)={dim/2,-dim/2,0,size};
	Point(ce++)={-dim/2,-dim/2,0,size};
	Point(ce++)={-dim/2,dim/2,0,size};
Return

//bounding box.
dim=BBDIM;size=BBSIZE;Call square;