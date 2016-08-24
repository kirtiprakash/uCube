/*
                    uCube: Modular 3D-printable optomechanical kit
                     Copyright (C) 2016 Mihails Delmans
                              m.delmans@gmail.com
                              
                                     v.1.0
    
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
    
    
                                    uCubeParts.scad
                                Collection of uCube parts
                                   
*/

module uTubeLensFace(r1 = 19.2, r2 = 18.2, h1=8){
        union(){
            uFace();
            translate([0, 0, -0.5*size - d ])  difference(){
                cube([size - 2*faceGap, size - 2*faceGap, size + 1.5*d], center = true);
                translate([0, 0, -0.75*d]) rotate([90,0,0])cylinder(size, r2, r2, center = true);
                translate([0, 0.5*size, -0.75*d]) rotate([90,0,0])cylinder(h1*2, r1, r1, center = true);
            }
        }
}