function make_model(grid_type,p)
    gmsh.initialize()
    gmsh.option.setNumber("General.Terminal", 1)


    if grid_type == "test" || grid_type == "rectangle"  # simple square
        
        name, side_x, side_y, lc = p
        #first we build the rectangular boundary: 
        #gmsh.initialize()
        #gmsh.option.setNumber("General.Terminal", 1)
        gmsh.model.add("$name")
        #lc = 1e-2
        #lc = 1e-1
        lc_x = lc
        lc_y = lc*side_y/side_x
        gmsh.model.geo.addPoint(0, 0, 0, lc_x, 1)
        gmsh.model.geo.addPoint(side_x, 0,  0, lc_x, 2)
        gmsh.model.geo.addPoint(side_x, side_y, 0, lc_y, 3)
        gmsh.model.geo.addPoint(0, side_y, 0, lc_y, 4)

        # make the square boundary
        gmsh.model.geo.addLine(1, 2, 1)
        gmsh.model.geo.addLine(2, 3, 2)
        gmsh.model.geo.addLine(3, 4, 3)
        gmsh.model.geo.addLine(4, 1, 4)

        gmsh.model.geo.addCurveLoop([1, 2, 3, 4], 10) #the rectangle
        gmsh.model.geo.synchronize()

        #gmsh.model.geo.addPhysicalGroup(1, [10], 11 )
        gmsh.model.geo.addPhysicalGroup(1, [1, 2, 3, 4], 11 )
        gmsh.model.setPhysicalName(1, 11, "ext")
        gmsh.model.geo.synchronize()

        # make the surface

        gmsh.model.geo.addPlaneSurface([10], 100) #the surface
        gmsh.model.geo.synchronize()

        gmsh.model.addPhysicalGroup(2, [100], 101)
        gmsh.model.setPhysicalName(2, 101, "surface")
        gmsh.model.geo.synchronize()

        gmsh.model.mesh.generate(2)
        gmsh.write("models/$name.msh")
        gmsh.finalize()
        model = GmshDiscreteModel("models/$name.msh")
 
    end


    if grid_type == "square_circle" # square - circle
        
        name, side_x, side_y, cy_center_x, cy_center_y, cy_radious, lc = p

        gmsh.model.add(name)
        #lc = 1e-2
        #lc = 1e-1
        gmsh.model.geo.addPoint(0, 0, 0, lc, 1)
        gmsh.model.geo.addPoint(side_x, 0,  0, lc, 2)
        gmsh.model.geo.addPoint(side_x, side_y, 0, lc, 3)
        gmsh.model.geo.addPoint(0, side_y, 0, lc, 4)

        # make the square boundary
        gmsh.model.geo.addLine(1, 2, 1)
        gmsh.model.geo.addLine(2, 3, 2)
        gmsh.model.geo.addLine(3, 4, 3)
        gmsh.model.geo.addLine(4, 1, 4)

        gmsh.model.geo.addCurveLoop([1, 2, 3, 4], 10) #the rectangle
        gmsh.model.geo.synchronize()

        #gmsh.model.geo.addPhysicalGroup(1, [10], 11 )
        gmsh.model.geo.addPhysicalGroup(1, [1, 2, 3, 4], 11 )
        gmsh.model.setPhysicalName(1, 11, "ext")
        gmsh.model.geo.synchronize()

        # add the circle

        lc_f = lc/4;
        gmsh.model.geo.addPoint(cy_center_x, cy_center_y, 0, lc_f, 5)
        gmsh.model.geo.addPoint(cy_center_x + cy_radious, cy_center_y, 0, lc_f, 6)
        gmsh.model.geo.addPoint(cy_center_x , cy_center_y + cy_radious, 0, lc_f, 7)
        gmsh.model.geo.addPoint(cy_center_x - cy_radious, cy_center_y, 0, lc_f, 8)
        gmsh.model.geo.addPoint(cy_center_x, cy_center_y - cy_radious, 0, lc_f, 9)

        gmsh.model.geo.addCircleArc(6,5,7,5)
        gmsh.model.geo.addCircleArc(7,5,8,6)
        gmsh.model.geo.addCircleArc(8,5,9,7)
        gmsh.model.geo.addCircleArc(9,5,6,8)

        gmsh.model.geo.addCurveLoop([5, 6, 7, 8], 12) #the circle
        gmsh.model.geo.synchronize()

        gmsh.model.geo.addPhysicalGroup(1, [5, 6, 7, 8], 12 )
        gmsh.model.setPhysicalName(1, 12, "circle")
        gmsh.model.geo.synchronize()

        # make the surface

        gmsh.model.geo.addPlaneSurface([10,12], 100) #the surface
        gmsh.model.geo.synchronize()

        gmsh.model.addPhysicalGroup(2, [100], 101)
        gmsh.model.setPhysicalName(2, 101, "surface")
        gmsh.model.geo.synchronize()

        gmsh.model.mesh.generate(2)
        gmsh.write("models/$name.msh")
        gmsh.finalize()
        model = GmshDiscreteModel("models/$name.msh")
    end

    if grid_type == "circle_circle" # circle - circle
    
        
        cy_center_x, cy_center_y, cy_inner_radious, cy_outer_radious, lc = p
        
        lc_f = lc
        lc = lc/4
        gmsh.model.add("$name")
        #lc = 1e-2
        #lc = lc/4
        gmsh.model.geo.addPoint(cy_center_x, cy_center_y, 0, lc, 1)
        gmsh.model.geo.addPoint(cy_center_x + cy_inner_radious, cy_center_y, 0, lc, 2)
        gmsh.model.geo.addPoint(cy_center_x , cy_center_y + cy_inner_radious, 0, lc, 3)
        gmsh.model.geo.addPoint(cy_center_x - cy_inner_radious, cy_center_y, 0, lc, 4)
        gmsh.model.geo.addPoint(cy_center_x, cy_center_y - cy_inner_radious, 0, lc, 5)


        # make the outer circle 
        gmsh.model.geo.addCircleArc(2,1,3,1)
        gmsh.model.geo.addCircleArc(3,1,4,2)
        gmsh.model.geo.addCircleArc(4,1,5,3)
        gmsh.model.geo.addCircleArc(5,1,2,4)


        gmsh.model.geo.addCurveLoop([1, 2, 3, 4], 10) #the outer circle
        gmsh.model.geo.synchronize()

        #gmsh.model.geo.addPhysicalGroup(1, [10], 11 )
        gmsh.model.geo.addPhysicalGroup(1, [1, 2, 3, 4], 11 )
        gmsh.model.setPhysicalName(1, 11, "inner")
        gmsh.model.geo.synchronize()

        # add the inner circle

        #lc_f = lc*4;
        gmsh.model.geo.addPoint(cy_center_x, cy_center_y, 0, lc_f, 6)
        gmsh.model.geo.addPoint(cy_center_x + cy_outer_radious, cy_center_y, 0, lc_f, 7)
        gmsh.model.geo.addPoint(cy_center_x , cy_center_y + cy_outer_radious, 0, lc_f, 8)
        gmsh.model.geo.addPoint(cy_center_x - cy_outer_radious, cy_center_y, 0, lc_f, 9)
        gmsh.model.geo.addPoint(cy_center_x, cy_center_y - cy_outer_radious, 0, lc_f, 10)

        gmsh.model.geo.addCircleArc(7,6,8,5)
        gmsh.model.geo.addCircleArc(8,6,9,6)
        gmsh.model.geo.addCircleArc(9,6,10,7)
        gmsh.model.geo.addCircleArc(10,6,7,8)

        gmsh.model.geo.addCurveLoop([5, 6, 7, 8], 12) #the circle
        gmsh.model.geo.synchronize()

        gmsh.model.geo.addPhysicalGroup(1, [5, 6, 7, 8], 12 )
        gmsh.model.setPhysicalName(1, 12, "outer")
        gmsh.model.geo.synchronize()

        # make the surface

        gmsh.model.geo.addPlaneSurface([10,12], 100) #the surface
        gmsh.model.geo.synchronize()

        gmsh.model.addPhysicalGroup(2, [100], 101)
        gmsh.model.setPhysicalName(2, 101, "surface")
        gmsh.model.geo.synchronize()

        gmsh.model.mesh.generate(2)
        gmsh.write("models/$name.msh")
        gmsh.finalize()
        model = GmshDiscreteModel("models/$name.msh")
    end
    
    
    #======================= Nuevo dominio =======================#
    
    
    if grid_type == "rectangle_hole_square" # square - circle
        
        name, side_x, side_y, cy_center_x, cy_center_y, cy_radious, rec_base, rec_top, rec_left, rec_right, lc = p
        gmsh.model.add(name)
        #lc = 1e-2
        #lc = 1e-1
        gmsh.model.geo.addPoint(0, 0, 0, lc, 1)
        gmsh.model.geo.addPoint(side_x, 0,  0, lc, 2)
        gmsh.model.geo.addPoint(side_x, side_y, 0, lc, 3)
        gmsh.model.geo.addPoint(0, side_y, 0, lc, 4)

        # make the square boundary
        gmsh.model.geo.addLine(1, 2, 1)
        gmsh.model.geo.addLine(2, 3, 2)
        gmsh.model.geo.addLine(3, 4, 3)
        gmsh.model.geo.addLine(4, 1, 4)

        gmsh.model.geo.addCurveLoop([1, 2, 3, 4], 100) #the rectangle
        gmsh.model.geo.synchronize()

        #gmsh.model.geo.addPhysicalGroup(1, [10], 11 )
        gmsh.model.geo.addPhysicalGroup(1, [1, 2, 3, 4], 101 )
        gmsh.model.setPhysicalName(1, 101, "ext")
        gmsh.model.geo.synchronize()

        # add the circle
        
        lc_f = lc/4;
        gmsh.model.geo.addPoint(cy_center_x, cy_center_y, 0, lc_f, 5)
        gmsh.model.geo.addPoint(cy_center_x + cy_radious, cy_center_y, 0, lc_f, 6)
        gmsh.model.geo.addPoint(cy_center_x , cy_center_y + cy_radious, 0, lc_f, 7)
        gmsh.model.geo.addPoint(cy_center_x - cy_radious, cy_center_y, 0, lc_f, 8)
        gmsh.model.geo.addPoint(cy_center_x, cy_center_y - cy_radious, 0, lc_f, 9)

        gmsh.model.geo.addCircleArc(6,5,7,5)
        gmsh.model.geo.addCircleArc(7,5,8,6)
        gmsh.model.geo.addCircleArc(8,5,9,7)
        gmsh.model.geo.addCircleArc(9,5,6,8)

        gmsh.model.geo.addCurveLoop([5, 6, 7, 8], 102) #the circle
        gmsh.model.geo.synchronize()

        gmsh.model.geo.addPhysicalGroup(1, [5, 6, 7, 8], 103 )
        gmsh.model.setPhysicalName(1, 103, "inner_circle")
        gmsh.model.geo.synchronize()
        
        # add the square
        
        lc_f = lc/4;
        gmsh.model.geo.addPoint(rec_left, rec_base, 0, lc_f, 10)
        gmsh.model.geo.addPoint(rec_left, rec_top,  0, lc_f, 11)
        gmsh.model.geo.addPoint(rec_right, rec_top, 0, lc_f, 12)
        gmsh.model.geo.addPoint(rec_right, rec_base, 0, lc_f, 13)

        # make the square boundary
        gmsh.model.geo.addLine(10, 11, 10)
        gmsh.model.geo.addLine(11, 12, 11)
        gmsh.model.geo.addLine(12, 13, 12)
        gmsh.model.geo.addLine(13, 10, 13)

        gmsh.model.geo.addCurveLoop([10, 11, 12, 13], 104) #the rectangle
        gmsh.model.geo.synchronize()

        #gmsh.model.geo.addPhysicalGroup(1, [10], 11 )
        gmsh.model.geo.addPhysicalGroup(1, [10, 11, 12, 13], 105 )
        gmsh.model.setPhysicalName(1, 105, "inner_square")
        gmsh.model.geo.synchronize()

        # make the surface

        gmsh.model.geo.addPlaneSurface([100, 102, 104], 1000) #the surface
        gmsh.model.geo.synchronize()

        gmsh.model.addPhysicalGroup(2, [1000], 1001)
        gmsh.model.setPhysicalName(2, 1001, "surface")
        gmsh.model.geo.synchronize()

        gmsh.model.mesh.generate(2)
        gmsh.write("models/$name.msh")
        gmsh.finalize()
        model = GmshDiscreteModel("models/$name.msh")
    end
    

    #gmsh.finalize()
    return model
end