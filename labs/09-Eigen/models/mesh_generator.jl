function make_model(grid_type,p)
    gmsh.initialize()
    gmsh.option.setNumber("General.Terminal", 1)


    if grid_type == "test" || grid_type == "rectangle"  # simple square
        
        side_x, side_y, lc = p
        #first we build the rectangular boundary: 
        #gmsh.initialize()
        #gmsh.option.setNumber("General.Terminal", 1)
        gmsh.model.add("rectangle")
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
        gmsh.write("models/rectangle.msh")
        gmsh.finalize()
        model = GmshDiscreteModel("models/rectangle.msh")
 
    end


    if grid_type == "square_circle" # square - circle
        
        side_x, side_y, cy_center_x, cy_center_y, cy_radious, lc = p

        gmsh.model.add("square_circle")
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
        gmsh.write("models/square_circle.msh")
        gmsh.finalize()
        model = GmshDiscreteModel("models/square_circle.msh")
    end

    if grid_type == "circle_circle" # circle - circle
    
        
        cy_center_x, cy_center_y, cy_inner_radious, cy_outer_radious, lc = p
        
        lc_f = lc
        lc = lc/4
        gmsh.model.add("circle_circle")
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
        gmsh.write("models/circle_circle.msh")
        gmsh.finalize()
        model = GmshDiscreteModel("models/circle_circle.msh")
    end
    
    
    if grid_type == "1D" # one dimensional grid
    
        
        x0, x1, lc = p
        
        gmsh.model.add("1D")
        
        gmsh.model.geo.addPoint(x0, 0, 0, lc, 1)
        gmsh.model.geo.addPoint(x1, 0, 0, lc, 2)

        gmsh.model.geo.addLine(1, 2, 1)
        gmsh.model.geo.synchronize()
        
        gmsh.model.geo.addPhysicalGroup(0, [1], 3 )
        gmsh.model.setPhysicalName(0, 3, "left")
        gmsh.model.geo.addPhysicalGroup(0, [2], 4 )
        gmsh.model.setPhysicalName(0, 4, "right")
        
        gmsh.model.geo.addPhysicalGroup(1, [1], 1 )
        gmsh.model.setPhysicalName(1, 1, "segment")
        gmsh.model.geo.synchronize()


        gmsh.model.mesh.generate(1)
        gmsh.write("models/1D.msh")
        
        gmsh.finalize()
        model = GmshDiscreteModel("models/1D.msh")
    end
    
    
    
        if grid_type == "sphere" # ESTE TODAVÍA NO ANDA!
    
        
        center_x, center_y, center_z, radious, lc = p
        
        gmsh.model.add("sphere")
        
        gmsh.model.geo.addSphere(center_x, center_y, center_z, radious, lc, 1)
        
        gmsh.model.geo.addPoint(center_x, center_y, center_z, lc, 1)
        gmsh.model.geo.addPoint(center_x + radious, center_y, center_z, lc, 2)
        gmsh.model.geo.addPoint(center_x, center_y + radious, center_z, lc, 3)
        gmsh.model.geo.addPoint(center_x - radious, center_y, center_z, lc, 4)
        gmsh.model.geo.addPoint(center_x, center_y - radious, center_z, lc, 5)
        gmsh.model.geo.addPoint(center_x, center_y, center_z + radious, lc, 6)
        gmsh.model.geo.addPoint(center_x, center_y, center_z - radious, lc, 7)

        # make the outer circle 
        gmsh.model.geo.addCircleArc(2,1,3,1)
        gmsh.model.geo.addCircleArc(3,1,4,2)
        gmsh.model.geo.addCircleArc(4,1,5,3)
        gmsh.model.geo.addCircleArc(5,1,2,4)
        gmsh.model.geo.addCircleArc(2,1,6,5)
        gmsh.model.geo.addCircleArc(6,1,4,6)
        gmsh.model.geo.addCircleArc(4,1,7,7)
        gmsh.model.geo.addCircleArc(7,1,2,8)
        gmsh.model.geo.addCircleArc(3,1,7,9)
        gmsh.model.geo.addCircleArc(7,1,5,10)
        gmsh.model.geo.addCircleArc(5,1,6,11)
        gmsh.model.geo.addCircleArc(6,1,3,12)


        gmsh.model.geo.addCurveLoop([1, 9, 8], 20) #the outer circle
        #gmsh.model.geo.addRuledSurface(20,1)
        gmsh.model.geo.addCurveLoop([1, -12, -5], 21)
        #gmsh.model.geo.addRuledSurface(21,2)
        gmsh.model.geo.addCurveLoop([2, 7, -9], 22)
        #gmsh.model.geo.addRuledSurface(22,3)
        gmsh.model.geo.addCurveLoop([2, -6, 12], 23)
        #gmsh.model.geo.addRuledSurface(23,4)
        gmsh.model.geo.addCurveLoop([3, -10, -7], 24)
        #gmsh.model.geo.addRuledSurface(24,5)
        gmsh.model.geo.addCurveLoop([3, 11, 6], 25)
        #gmsh.model.geo.addRuledSurface(25,6)
        gmsh.model.geo.addCurveLoop([4, -8, 10], 26)
        #gmsh.model.geo.addRuledSurface(26,7)
        gmsh.model.geo.addCurveLoop([4, 5, 11], 27)
        #gmsh.model.geo.addRuledSurface(27,8)
        
        gmsh.model.geo.synchronize()
        
        #gmsh.model.geo.addSurfaceLoop(In Sphere, 20,21,22,23,24,25,26,27, 30)

        #gmsh.model.geo.addPhysicalGroup(1, [10], 11 )
        gmsh.model.geo.addPhysicalGroup(2, 30)
        gmsh.model.setPhysicalName(2, 30, "sphere")
        gmsh.model.geo.synchronize()

        # add the inner circle

        gmsh.model.mesh.generate(2)
        gmsh.write("models/sphere.msh")
        gmsh.finalize()
        model = GmshDiscreteModel("models/sphere.msh")
    end
    
    

    #gmsh.finalize()
    return model
end