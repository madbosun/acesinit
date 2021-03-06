C  Copyright (c) 2003-2010 University of Florida
C
C  This program is free software; you can redistribute it and/or modify
C  it under the terms of the GNU General Public License as published by
C  the Free Software Foundation; either version 2 of the License, or
C  (at your option) any later version.

C  This program is distributed in the hope that it will be useful,
C  but WITHOUT ANY WARRANTY; without even the implied warranty of
C  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
C  GNU General Public License for more details.

C  The GNU General Public License is included in this distribution
C  in the file COPYRIGHT.
      Subroutine Bohr2angs(R, NX)
C 
      Implicit Double Precision (A-H, O-Z)
      Dimension R(NX)
C
      ATOR = DACOS(-1.0D0)/180.0D0
      ATOB = 0.529177249D0
c
      Do IDeg = 8, NX-1, 3
         If (Ideg .NE. 8) R(Ideg + 1) = R(Ideg + 1)/ATOR
                          R(ideg) = R(Ideg)/ATOR
      Enddo

      Do IDeg = 4, NX-2, 3
         R(Ideg) =  R(Ideg)*ATOB
      Enddo

      Return
      End
