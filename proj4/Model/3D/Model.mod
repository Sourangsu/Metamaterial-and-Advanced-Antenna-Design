'# MWS Version: Version 2016.7 - Nov 11 2016 - ACIS 25.0.2 -

'# length = mm
'# frequency = GHz
'# time = ns
'# frequency range: fmin = 0 fmax = 3
'# created = '[VERSION]2016.7|25.0.2|20161111[/VERSION]


'@ use template: Antenna - Planar.cfg

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
'set the units
With Units
    .Geometry "mm"
    .Frequency "GHz"
    .Voltage "V"
    .Resistance "Ohm"
    .Inductance "NanoH"
    .TemperatureUnit  "Kelvin"
    .Time "ns"
    .Current "A"
    .Conductance "Siemens"
    .Capacitance "PikoF"
End With
'----------------------------------------------------------------------------
Plot.DrawBox True
With Background
     .Type "Normal"
     .Epsilon "1.0"
     .Mue "1.0"
     .XminSpace "0.0"
     .XmaxSpace "0.0"
     .YminSpace "0.0"
     .YmaxSpace "0.0"
     .ZminSpace "0.0"
     .ZmaxSpace "0.0"
End With
With Boundary
     .Xmin "expanded open"
     .Xmax "expanded open"
     .Ymin "expanded open"
     .Ymax "expanded open"
     .Zmin "expanded open"
     .Zmax "expanded open"
     .Xsymmetry "none"
     .Ysymmetry "none"
     .Zsymmetry "none"
End With
' optimize mesh settings for planar structures
With Mesh
     .MergeThinPECLayerFixpoints "True"
     .RatioLimit "20"
     .AutomeshRefineAtPecLines "True", "6"
     .FPBAAvoidNonRegUnite "True"
     .ConsiderSpaceForLowerMeshLimit "False"
     .MinimumStepNumber "5"
     .AnisotropicCurvatureRefinement "True"
     .AnisotropicCurvatureRefinementFSM "True"
End With
With MeshSettings
     .SetMeshType "Hex"
     .Set "RatioLimitGeometry", "20"
     .Set "EdgeRefinementOn", "1"
     .Set "EdgeRefinementRatio", "6"
End With
With MeshSettings
     .SetMeshType "HexTLM"
     .Set "RatioLimitGeometry", "20"
End With
With MeshSettings
     .SetMeshType "Tet"
     .Set "VolMeshGradation", "1.5"
     .Set "SrfMeshGradation", "1.5"
End With
' change mesh adaption scheme to energy
' 		(planar structures tend to store high energy
'     	 locally at edges rather than globally in volume)
MeshAdaption3D.SetAdaptionStrategy "Energy"
' switch on FD-TET setting for accurate farfields
FDSolver.ExtrudeOpenBC "True"
PostProcess1D.ActivateOperation "vswr", "true"
PostProcess1D.ActivateOperation "yz-matrices", "true"
'----------------------------------------------------------------------------
'set the frequency range
Solver.FrequencyRange "0", "3"
'----------------------------------------------------------------------------
With MeshSettings
     .SetMeshType "Hex"
     .Set "Version", 1%
End With
With Mesh
     .MeshType "PBA"
End With
'set the solver type
ChangeSolverType("HF Time Domain")

'@ new component: component1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Component.New "component1"

'@ define brick: component1:shape

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Brick
     .Reset 
     .Name "shape" 
     .Component "component1" 
     .Material "Vacuum" 
     .Xrange "-w/2", "w/2" 
     .Yrange "-h/2", "h/2" 
     .Zrange "-t_body", "t_glass" 
     .Create
End With

'@ pick edge

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Pick.PickEdgeFromId "component1:shape", "2", "2"

'@ pick edge

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Pick.PickEdgeFromId "component1:shape", "12", "2"

'@ pick edge

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Pick.PickEdgeFromId "component1:shape", "11", "3"

'@ pick edge

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Pick.PickEdgeFromId "component1:shape", "8", "8"

'@ pick edge

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Pick.PickEdgeFromId "component1:shape", "1", "1"

'@ pick edge

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Pick.PickEdgeFromId "component1:shape", "5", "5"

'@ pick edge

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Pick.PickEdgeFromId "component1:shape", "10", "1"

'@ pick edge

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Pick.PickEdgeFromId "component1:shape", "4", "4"

'@ pick edge

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Pick.PickEdgeFromId "component1:shape", "3", "3"

'@ pick edge

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Pick.PickEdgeFromId "component1:shape", "7", "7"

'@ pick edge

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Pick.PickEdgeFromId "component1:shape", "9", "4"

'@ pick edge

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Pick.PickEdgeFromId "component1:shape", "6", "6"

'@ blend edges of: component1:shape

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Solid.BlendEdge "r"

'@ paste structure data: 1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With SAT 
     .Reset 
     .FileName "*1.cby" 
     .SubProjectScaleFactor "0.001" 
     .ImportToActiveCoordinateSystem "True" 
     .ScaleToUnit "True" 
     .Curves "False" 
     .Read 
End With

'@ define material: Aluminum

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Material
     .Reset
     .Name "Aluminum"
     .Folder ""
.FrqType "static" 
.Type "Normal" 
.SetMaterialUnit "Hz", "mm" 
.Epsilon "1" 
.Mue "1.0" 
.Kappa "3.56e+007" 
.TanD "0.0" 
.TanDFreq "0.0" 
.TanDGiven "False" 
.TanDModel "ConstTanD" 
.KappaM "0" 
.TanDM "0.0" 
.TanDMFreq "0.0" 
.TanDMGiven "False" 
.TanDMModel "ConstTanD" 
.DispModelEps "None" 
.DispModelMue "None" 
.DispersiveFittingSchemeEps "General 1st" 
.DispersiveFittingSchemeMue "General 1st" 
.UseGeneralDispersionEps "False" 
.UseGeneralDispersionMue "False" 
.FrqType "all" 
.Type "Lossy metal" 
.MaterialUnit "Frequency", "GHz"
.MaterialUnit "Geometry", "mm"
.MaterialUnit "Time", "s"
.MaterialUnit "Temperature", "Kelvin"
.Mue "1.0" 
.Sigma "3.56e+007" 
.Rho "2700.0" 
.ThermalType "Normal" 
.ThermalConductivity "237.0" 
.HeatCapacity "0.9"
.MetabolicRate "0"
.BloodFlow "0"
.VoxelConvection "0"
.MechanicsType "Isotropic"
.YoungsModulus "69"
.PoissonsRatio "0.33"
.ThermalExpansionRate "23"
.ReferenceCoordSystem "Global"
.CoordSystemType "Cartesian"
.NLAnisotropy "False"
.NLAStackingFactor "1"
.NLADirectionX "1"
.NLADirectionY "0"
.NLADirectionZ "0"
.Colour "1", "1", "0" 
.Wireframe "False" 
.Reflection "False" 
.Allowoutline "True" 
.Transparentoutline "False" 
.Transparency "0" 
.Create
End With

'@ define brick: component1:body

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Brick
     .Reset 
     .Name "body" 
     .Component "component1" 
     .Material "Aluminum" 
     .Xrange "-w/2", "w/2" 
     .Yrange "-h/2", "h/2" 
     .Zrange "-t_body", "0" 
     .Create
End With

'@ boolean intersect shapes: component1:body, component1:shape

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Solid.Intersect "component1:body", "component1:shape"

'@ define material: Quartz (Fused) (lossy)

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Material
     .Reset
     .Name "Quartz (Fused) (lossy)"
     .Folder ""
.FrqType "all" 
.Type "Normal" 
.SetMaterialUnit "MHz", "mm"
.Epsilon "3.75" 
.Mue "1.0" 
.Kappa "0.0" 
.TanD "0.0004" 
.TanDFreq "1.0" 
.TanDGiven "True" 
.TanDModel "ConstTanD" 
.KappaM "0.0" 
.TanDM "0.0" 
.TanDMFreq "0.0" 
.TanDMGiven "False" 
.TanDMModel "ConstKappa" 
.DispModelEps "None" 
.DispModelMue "None" 
.DispersiveFittingSchemeEps "General 1st" 
.DispersiveFittingSchemeMue "General 1st" 
.UseGeneralDispersionEps "False" 
.UseGeneralDispersionMue "False" 
.Rho "2200.0" 
.ThermalType "Normal" 
.ThermalConductivity "5" 
.HeatCapacity "0.7"
.SetActiveMaterial "all" 
.MechanicsType "Isotropic"
.YoungsModulus "75"
.PoissonsRatio "0.17"
.ThermalExpansionRate "0.5"
.Colour "0.94", "0.82", "0.76" 
.Wireframe "False" 
.Transparency "0" 
.Create
End With

'@ define brick: component1:glass

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Brick
     .Reset 
     .Name "glass" 
     .Component "component1" 
     .Material "Quartz (Fused) (lossy)" 
     .Xrange "-w/2", "w/2" 
     .Yrange "-h/2", "h/2" 
     .Zrange "0", "t_glass" 
     .Create
End With

'@ boolean intersect shapes: component1:glass, component1:shape_1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Solid.Intersect "component1:glass", "component1:shape_1"

'@ define material colour: Aluminum

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Material 
     .Name "Aluminum"
     .Folder ""
     .Colour "0.752941", "0.752941", "0.752941" 
     .Wireframe "False" 
     .Reflection "True" 
     .Allowoutline "False" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .ChangeColour 
End With

'@ define material colour: Quartz (Fused) (lossy)

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Material 
     .Name "Quartz (Fused) (lossy)"
     .Folder ""
     .Colour "0", "0", "0" 
     .Wireframe "False" 
     .Reflection "True" 
     .Allowoutline "False" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .ChangeColour 
End With

'@ define material: Indium Tin Oxide (optical)

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Material
     .Reset
     .Name "Indium Tin Oxide (optical)"
     .Folder ""
     .FrqType "all"
     .Type "Normal"
     .SetMaterialUnit "THz", "m"
     .Epsilon "1"
     .Mue "1"
     .Sigma "0"
     .TanD "0.0"
     .TanDFreq "0.0"
     .TanDGiven "False"
     .TanDModel "ConstTanD"
     .ConstTanDModelOrderEps "1"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .SigmaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstTanD"
     .ConstTanDModelOrderMue "1"
     .DispModelEps "None"
     .DispModelMue "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .MaximalOrderNthModelFitEps "4"
     .ErrorLimitNthModelFitEps "0.05"
     .UseOnlyDataInSimFreqRangeNthModelEps "False"
     .DispersiveFittingSchemeMue "Nth Order"
     .AddDispersionFittingValueEps "352.9411765", "3.106493423", "0.292305276", "1.0"
     .AddDispersionFittingValueEps "357.1428571", "3.116953332", "0.289255779", "1.0"
     .AddDispersionFittingValueEps "361.4457831", "3.127781127", "0.286158973", "1.0"
     .AddDispersionFittingValueEps "365.8536585", "3.13898916", "0.283014225", "1.0"
     .AddDispersionFittingValueEps "370.3703704", "3.150600573", "0.279821468", "1.0"
     .AddDispersionFittingValueEps "375", "3.162631605", "0.276580364", "1.0"
     .AddDispersionFittingValueEps "379.7468354", "3.175102236", "0.273290745", "1.0"
     .AddDispersionFittingValueEps "384.6153846", "3.18803623", "0.269952746", "1.0"
     .AddDispersionFittingValueEps "389.6103896", "3.201454022", "0.266566355", "1.0"
     .AddDispersionFittingValueEps "394.7368421", "3.21538346", "0.263132076", "1.0"
     .AddDispersionFittingValueEps "400", "3.229845515", "0.259650153", "1.0"
     .AddDispersionFittingValueEps "405.4054054", "3.244868629", "0.256121375", "1.0"
     .AddDispersionFittingValueEps "410.9589041", "3.260485205", "0.252546884", "1.0"
     .AddDispersionFittingValueEps "416.6666667", "3.276724431", "0.248927851", "1.0"
     .AddDispersionFittingValueEps "422.5352113", "3.293619517", "0.24526587", "1.0"
     .AddDispersionFittingValueEps "428.5714286", "3.311200482", "0.241562797", "1.0"
     .AddDispersionFittingValueEps "434.7826087", "3.329512396", "0.237821307", "1.0"
     .AddDispersionFittingValueEps "441.1764706", "3.348589972", "0.234044177", "1.0"
     .AddDispersionFittingValueEps "447.761194", "3.368479482", "0.230235159", "1.0"
     .AddDispersionFittingValueEps "454.5454545", "3.389220541", "0.226398268", "1.0"
     .AddDispersionFittingValueEps "461.5384615", "3.410864514", "0.222538677", "1.0"
     .AddDispersionFittingValueEps "468.75", "3.433459904", "0.218662226", "1.0"
     .AddDispersionFittingValueEps "476.1904762", "3.457063505", "0.214776067", "1.0"
     .AddDispersionFittingValueEps "483.8709677", "3.481736857", "0.210888435", "1.0"
     .AddDispersionFittingValueEps "491.8032787", "3.507535132", "0.20700886", "1.0"
     .AddDispersionFittingValueEps "500", "3.534529644", "0.203148808", "1.0"
     .AddDispersionFittingValueEps "508.4745763", "3.562789326", "0.199321377", "1.0"
     .AddDispersionFittingValueEps "517.2413793", "3.592388332", "0.195542022", "1.0"
     .AddDispersionFittingValueEps "526.3157895", "3.623410023", "0.191828797", "1.0"
     .AddDispersionFittingValueEps "535.7142857", "3.655939583", "0.188202712", "1.0"
     .AddDispersionFittingValueEps "545.4545455", "3.69006799", "0.18468828", "1.0"
     .AddDispersionFittingValueEps "555.5555556", "3.725892236", "0.181314094", "1.0"
     .AddDispersionFittingValueEps "566.0377358", "3.763515563", "0.178113553", "1.0"
     .AddDispersionFittingValueEps "576.9230769", "3.803043819", "0.175125526", "1.0"
     .AddDispersionFittingValueEps "588.2352941", "3.844593465", "0.172395736", "1.0"
     .AddDispersionFittingValueEps "600", "3.888288032", "0.16997756", "1.0"
     .AddDispersionFittingValueEps "612.244898", "3.934254457", "0.167933416", "1.0"
     .AddDispersionFittingValueEps "625", "3.982619296", "0.166336597", "1.0"
     .AddDispersionFittingValueEps "638.2978723", "4.033524873", "0.165273228", "1.0"
     .AddDispersionFittingValueEps "652.173913", "4.087105601", "0.164844404", "1.0"
     .AddDispersionFittingValueEps "666.6666667", "4.143504054", "0.165169534", "1.0"
     .AddDispersionFittingValueEps "681.8181818", "4.202854864", "0.166389186", "1.0"
     .AddDispersionFittingValueEps "697.6744186", "4.265296781", "0.168669894", "1.0"
     .AddDispersionFittingValueEps "714.2857143", "4.330951888", "0.172208654", "1.0"
     .AddDispersionFittingValueEps "731.7073171", "4.399912133", "0.17723901", "1.0"
     .AddDispersionFittingValueEps "750", "4.472263092", "0.184039031", "1.0"
     .AddDispersionFittingValueEps "769.2307692", "4.54803615", "0.192939579", "1.0"
     .AddDispersionFittingValueEps "789.4736842", "4.627196667", "0.204335314", "1.0"
     .AddDispersionFittingValueEps "810.8108108", "4.709631074", "0.218697851", "1.0"
     .AddDispersionFittingValueEps "833.3333333", "4.795106414", "0.236591682", "1.0"
     .AddDispersionFittingValueEps "857.1428571", "4.883231377", "0.258693067", "1.0"
     .AddDispersionFittingValueEps "882.3529412", "4.973369638", "0.285812061", "1.0"
     .AddDispersionFittingValueEps "909.0909091", "5.064587818", "0.318919857", "1.0"
     .AddDispersionFittingValueEps "937.5", "5.15553574", "0.359179658", "1.0"
     .AddDispersionFittingValueEps "967.7419355", "5.244282414", "0.407979571", "1.0"
     .AddDispersionFittingValueEps "1000", "5.32811502", "0.466970131", "1.0"
     .AddDispersionFittingValueEps "1034.482759", "5.403268652", "0.538096794", "1.0"
     .AddDispersionFittingValueEps "1071.428571", "5.464555007", "0.623625097", "1.0"
     .AddDispersionFittingValueEps "1111.111111", "5.504835017", "0.72613373", "1.0"
     .AddDispersionFittingValueEps "1153.846154", "5.514385171", "0.84845365", "1.0"
     .AddDispersionFittingValueEps "1200", "5.480003205", "0.993482984", "1.0"
     .UseGeneralDispersionEps "True"
     .UseGeneralDispersionMue "False"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .Rho "0"
     .ThermalType "Normal"
     .ThermalConductivity "0"
     .HeatCapacity "0"
     .MetabolicRate "0"
     .BloodFlow "0"
     .VoxelConvection "0"
     .MechanicsType "Unused"
     .Colour "1", "0", "1" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .Create
End With

'@ define brick: component1:patch

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Brick
     .Reset 
     .Name "patch" 
     .Component "component1" 
     .Material "Indium Tin Oxide (optical)" 
     .Xrange "-s/2", "s/2" 
     .Yrange "-s/2", "s/2" 
     .Zrange "z-t/2", "z+t/2" 
     .Create
End With

'@ boolean insert shapes: component1:glass, component1:patch

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Solid.Insert "component1:glass", "component1:patch"

'@ define discrete port: 1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With DiscretePort 
     .Reset 
     .PortNumber "1" 
     .Type "SParameter" 
     .Label "" 
     .Impedance "50.0" 
     .VoltagePortImpedance "0.0" 
     .Voltage "1.0" 
     .Current "1.0" 
     .SetP1 "False", "0.0", "0.0", "0.0" 
     .SetP2 "False", "0.0", "0.0", "z" 
     .InvertDirection "False" 
     .LocalCoordinates "False" 
     .Monitor "True" 
     .Radius "0.0" 
     .Wire "" 
     .Position "end1" 
     .Create 
End With

'@ define time domain solver parameters

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Mesh.SetCreator "High Frequency" 
With Solver 
     .Method "Hexahedral"
     .CalculationType "TD-S"
     .StimulationPort "1"
     .StimulationMode "All"
     .SteadyStateLimit "-40.0"
     .MeshAdaption "False"
     .CalculateModesOnly "False"
     .SParaSymmetry "False"
     .StoreTDResultsInCache  "False"
     .FullDeembedding "False"
     .SuperimposePLWExcitation "False"
     .UseSensitivityAnalysis "False"
End With

'@ delete shape: component1:patch

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Solid.Delete "component1:patch" 


'@ delete material: Indium Tin Oxide (optical)

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Material.Delete "Indium Tin Oxide (optical)"


'@ define material: ITO

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Material 
     .Reset 
     .Name "ITO"
     .Folder ""
     .FrqType "all"
     .Type "Lossy metal"
     .MaterialUnit "Frequency", "GHz"
     .MaterialUnit "Geometry", "mm"
     .MaterialUnit "Time", "ns"
     .MaterialUnit "Temperature", "Kelvin"
     .Mue "1"
     .Sigma "5E5"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .Rho "0"
     .ThermalType "Normal"
     .ThermalConductivity "0"
     .HeatCapacity "0"
     .DynamicViscosity "0"
     .Emissivity "0"
     .MetabolicRate "0"
     .BloodFlow "0"
     .VoxelConvection "0"
     .MechanicsType "Unused"
     .Colour "0", "1", "1" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .Create
End With 


'@ define brick: component1:patch

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Brick
     .Reset 
     .Name "patch" 
     .Component "component1" 
     .Material "ITO" 
     .Xrange "-s/2", "s/2" 
     .Yrange "-s/2", "s/2" 
     .Zrange "z-t/2", "z+t/2" 
     .Create
End With


'@ delete port: port1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Port.Delete "1" 


'@ define discrete port: 1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With DiscretePort 
     .Reset 
     .PortNumber "1" 
     .Type "SParameter" 
     .Label "" 
     .Impedance "0.629253" 
     .VoltagePortImpedance "0.0" 
     .Voltage "1.0" 
     .Current "1.0" 
     .SetP1 "False", "0.0", "0.0", "z/2" 
     .SetP2 "False", "0.0", "0.0", "z" 
     .InvertDirection "False" 
     .LocalCoordinates "False" 
     .Monitor "True" 
     .Radius "0.0" 
     .Wire "" 
     .Position "end1" 
     .Create 
End With


'@ define lumped element: Folder1:element1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With LumpedElement
     .Reset 
     .SetName "element1" 
     .Folder "Folder1" 
     .SetType "RLCSerial" 
     .SetR  "0.5" 
     .SetL  "0" 
     .SetC  "8.4112571e-12" 
     .SetGs "0" 
     .SetI0 "1e-14" 
     .SetT  "300" 
     .SetP1 "False", "0", "0", "0" 
     .SetP2 "False", "0", "0", "z/2" 
     .SetInvert "False" 
     .SetMonitor "True" 
     .SetRadius "0.0" 
     .Wire "" 
     .Position "end1" 
     .Create
End With


'@ define time domain solver parameters

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Mesh.SetCreator "High Frequency" 

With Solver 
     .Method "Hexahedral"
     .CalculationType "TD-S"
     .StimulationPort "1"
     .StimulationMode "All"
     .SteadyStateLimit "-80.0"
     .MeshAdaption "False"
     .CalculateModesOnly "False"
     .SParaSymmetry "False"
     .StoreTDResultsInCache  "False"
     .FullDeembedding "False"
     .SuperimposePLWExcitation "False"
     .UseSensitivityAnalysis "False"
End With


'@ define farfield monitor: farfield (f=f)

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Monitor 
     .Reset 
     .Name "farfield (f=f)" 
     .Domain "Frequency" 
     .FieldType "Farfield" 
     .Frequency "f" 
     .ExportFarfieldSource "False" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-18.1", "18.1", "-21", "21", "-9", "1" 
     .SetSubvolumeOffset "10", "10", "10", "10", "10", "10" 
     .SetSubvolumeOffsetType "FractionOfWavelength" 
     .Create 
End With 


'@ farfield plot options

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With FarfieldPlot 
     .Plottype "3D" 
     .Vary "angle1" 
     .Theta "90" 
     .Phi "90" 
     .Step "1" 
     .Step2 "1" 
     .SetLockSteps "True" 
     .SetPlotRangeOnly "False" 
     .SetThetaStart "0" 
     .SetThetaEnd "180" 
     .SetPhiStart "0" 
     .SetPhiEnd "360" 
     .SetTheta360 "False" 
     .SymmetricRange "False" 
     .SetTimeDomainFF "False" 
     .SetFrequency "2.14" 
     .SetTime "0" 
     .SetColorByValue "True" 
     .DrawStepLines "False" 
     .DrawIsoLongitudeLatitudeLines "False" 
     .ShowStructure "False" 
     .ShowStructureProfile "False" 
     .SetStructureTransparent "False" 
     .SetFarfieldTransparent "False" 
     .SetSpecials "enablepolarextralines" 
     .SetPlotMode "Directivity" 
     .Distance "1" 
     .UseFarfieldApproximation "True" 
     .SetScaleLinear "True" 
     .SetLogRange "40" 
     .SetLogNorm "0" 
     .DBUnit "0" 
     .EnableFixPlotMaximum "False" 
     .SetFixPlotMaximumValue "1" 
     .SetInverseAxialRatio "False" 
     .SetAxesType "user" 
     .SetAntennaType "unknown" 
     .Phistart "1.000000e+000", "0.000000e+000", "0.000000e+000" 
     .Thetastart "0.000000e+000", "0.000000e+000", "1.000000e+000" 
     .PolarizationVector "0.000000e+000", "1.000000e+000", "0.000000e+000" 
     .SetCoordinateSystemType "spherical" 
     .SetAutomaticCoordinateSystem "True" 
     .SetPolarizationType "Linear" 
     .SlantAngle 0.000000e+000 
     .Origin "bbox" 
     .Userorigin "0.000000e+000", "0.000000e+000", "0.000000e+000" 
     .SetUserDecouplingPlane "False" 
     .UseDecouplingPlane "False" 
     .DecouplingPlaneAxis "X" 
     .DecouplingPlanePosition "0.000000e+000" 
     .LossyGround "False" 
     .GroundEpsilon "1" 
     .GroundKappa "0" 
     .EnablePhaseCenterCalculation "False" 
     .SetPhaseCenterAngularLimit "3.000000e+001" 
     .SetPhaseCenterComponent "boresight" 
     .SetPhaseCenterPlane "both" 
     .ShowPhaseCenter "True" 
     .StoreSettings
End With 


