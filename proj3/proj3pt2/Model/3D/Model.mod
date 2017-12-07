'# MWS Version: Version 2016.7 - Nov 11 2016 - ACIS 25.0.2 -

'# length = mm
'# frequency = GHz
'# time = ns
'# frequency range: fmin = 0.0 fmax = 40.0
'# created = '[VERSION]2016.7|25.0.2|20161111[/VERSION]


'@ define background

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Background 
     .ResetBackground 
     .XminSpace "0.0" 
     .XmaxSpace "0.0" 
     .YminSpace "0.0" 
     .YmaxSpace "0.0" 
     .ZminSpace "0.0" 
     .ZmaxSpace "0.0" 
     .ApplyInAllDirections "False" 
End With 
With Material 
     .Reset 
     .FrqType "all"
     .Type "Normal"
     .MaterialUnit "Frequency", "Hz"
     .MaterialUnit "Geometry", "m"
     .MaterialUnit "Time", "s"
     .MaterialUnit "Temperature", "Kelvin"
     .Epsilon "1"
     .Mue "1"
     .Sigma "0.0"
     .TanD "0.0"
     .TanDFreq "0.0"
     .TanDGiven "False"
     .TanDModel "ConstSigma"
     .EnableUserConstTanDModelOrderEps "False"
     .ConstTanDModelOrderEps "1"
     .SetElParametricConductivity "False"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .SigmaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstSigma"
     .EnableUserConstTanDModelOrderMue "False"
     .ConstTanDModelOrderMue "1"
     .SetMagParametricConductivity "False"
     .DispModelEps  "None"
     .DispModelMue "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .MaximalOrderNthModelFitEps "10"
     .ErrorLimitNthModelFitEps "0.1"
     .UseOnlyDataInSimFreqRangeNthModelEps "False"
     .DispersiveFittingSchemeMue "Nth Order"
     .MaximalOrderNthModelFitMue "10"
     .ErrorLimitNthModelFitMue "0.1"
     .UseOnlyDataInSimFreqRangeNthModelMue "False"
     .UseGeneralDispersionEps "False"
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
     .DynamicViscosity "0"
     .Emissivity "0"
     .MetabolicRate "0"
     .BloodFlow "0"
     .VoxelConvection "0"
     .MechanicsType "Unused"
     .Colour "0.6", "0.6", "0.6" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .ChangeBackgroundMaterial
End With

'@ define frequency range

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Solver.FrequencyRange "0.0", "40.0"

'@ define units

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Units 
     .Geometry "mm" 
     .Frequency "GHz" 
     .Time "ns" 
     .TemperatureUnit "Kelvin" 
     .Voltage "V" 
     .Current "A" 
     .Resistance "Ohm" 
     .Conductance "Siemens" 
     .Capacitance "PikoF" 
     .Inductance "NanoH" 
End With

'@ new component: component1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Component.New "component1"

'@ define brick: component1:substrate

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Brick
     .Reset 
     .Name "substrate" 
     .Component "component1" 
     .Material "Vacuum" 
     .Xrange "-Wt/2", "Wt/2" 
     .Yrange "-H", "0" 
     .Zrange "-w-a2/2", "w+(N-1/2)*a2" 
     .Create
End With

'@ define material: Rogers RO3003 (lossy)

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Material
     .Reset
     .Name "Rogers RO3003 (lossy)"
     .Folder ""
.FrqType "all" 
.Type "Normal" 
.SetMaterialUnit "GHz", "mm"
.Epsilon "3" 
.Mue "1.0" 
.Kappa "0.0" 
.TanD "0.0010" 
.TanDFreq "10.0" 
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
.Rho "0.0" 
.ThermalType "Normal" 
.ThermalConductivity "0.5" 
.SetActiveMaterial "all" 
.Colour "0.94", "0.82", "0.76" 
.Wireframe "False" 
.Transparency "0" 
.Create
End With

'@ change material: component1:substrate to: Rogers RO3003 (lossy)

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Solid.ChangeMaterial "component1:substrate", "Rogers RO3003 (lossy)"

'@ define material: Copper (annealed)

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Material
     .Reset
     .Name "Copper (annealed)"
     .Folder ""
     .FrqType "static" 
     .Type "Normal" 
     .SetMaterialUnit "Hz", "mm" 
     .Epsilon "1" 
     .Mue "1.0" 
     .Kappa "5.8e+007" 
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
     .DispersiveFittingSchemeEps "Nth Order" 
     .DispersiveFittingSchemeMue "Nth Order" 
     .UseGeneralDispersionEps "False" 
     .UseGeneralDispersionMue "False" 
     .FrqType "all" 
     .Type "Lossy metal" 
     .SetMaterialUnit "GHz", "mm" 
     .Mue "1.0" 
     .Kappa "5.8e+007" 
     .Rho "8930.0" 
     .ThermalType "Normal" 
     .ThermalConductivity "401.0" 
     .HeatCapacity "0.39" 
     .MetabolicRate "0" 
     .BloodFlow "0" 
     .VoxelConvection "0" 
     .MechanicsType "Isotropic" 
     .YoungsModulus "120" 
     .PoissonsRatio "0.33" 
     .ThermalExpansionRate "17" 
     .Colour "1", "1", "0" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .Create
End With

'@ define brick: component1:microstrip

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Brick
     .Reset 
     .Name "microstrip" 
     .Component "component1" 
     .Material "Copper (annealed)" 
     .Xrange "-w/2", "w/2" 
     .Yrange "0", "t" 
     .Zrange "-w-a2/2", "w+(N-1/2)*a2" 
     .Create
End With

'@ define boundaries

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Boundary
     .Xmin "expanded open"
     .Xmax "expanded open"
     .Ymin "expanded open"
     .Ymax "expanded open"
     .Zmin "open"
     .Zmax "open"
     .Xsymmetry "none"
     .Ysymmetry "none"
     .Zsymmetry "none"
     .ApplyInAllDirections "False"
End With

'@ define port: 1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Port 
     .Reset 
     .PortNumber "1" 
     .Label "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Full" 
     .Orientation "zmax" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "-8.817405725", "8.817405725" 
     .Yrange "-5.267405725", "3.764405725" 
     .Zrange "5.045", "5.045" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Create 
End With

'@ define port: 2

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Port 
     .Reset 
     .PortNumber "2" 
     .Label "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Full" 
     .Orientation "zmin" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "-8.817405725", "8.817405725" 
     .Yrange "-5.267405725", "3.764405725" 
     .Zrange "-3.935", "-3.935" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Create 
End With

'@ define port: 3

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Port 
     .Reset 
     .PortNumber "3" 
     .Label "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Full" 
     .Orientation "zmin" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "-8.817405725", "8.817405725" 
     .Yrange "-5.267405725", "3.764405725" 
     .Zrange "-3.935", "-3.935" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Create 
End With

'@ define time domain solver parameters

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Mesh.SetCreator "High Frequency" 
With Solver 
     .Method "Hexahedral"
     .CalculationType "TD-S"
     .StimulationPort "All"
     .StimulationMode "All"
     .SteadyStateLimit "-30.0"
     .MeshAdaption "False"
     .AutoNormImpedance "False"
     .NormingImpedance "50"
     .CalculateModesOnly "False"
     .SParaSymmetry "False"
     .StoreTDResultsInCache  "False"
     .FullDeembedding "False"
     .SuperimposePLWExcitation "False"
     .UseSensitivityAnalysis "False"
End With

'@ delete port: port3

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Port.Delete "3"

'@ define time domain solver parameters

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Mesh.SetCreator "High Frequency" 
With Solver 
     .Method "Hexahedral"
     .CalculationType "TD-S"
     .StimulationPort "1"
     .StimulationMode "1"
     .SteadyStateLimit "-50"
     .MeshAdaption "False"
     .CalculateModesOnly "False"
     .SParaSymmetry "False"
     .StoreTDResultsInCache  "False"
     .FullDeembedding "False"
     .SuperimposePLWExcitation "False"
     .UseSensitivityAnalysis "False"
End With

'@ modify port: 1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Port 
     .Reset 
     .LoadContentForModify "1" 
     .Label "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Full" 
     .Orientation "zmax" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "-8.817405725", "8.817405725" 
     .Yrange "-5.267405725", "3.764405725" 
     .Zrange "5.045", "5.045" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Shield "none" 
     .Modify 
End With

'@ modify port: 2

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Port 
     .Reset 
     .LoadContentForModify "2" 
     .Label "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Full" 
     .Orientation "zmin" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "-8.817405725", "8.817405725" 
     .Yrange "-5.267405725", "3.764405725" 
     .Zrange "-3.935", "-3.935" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Shield "none" 
     .Modify 
End With

'@ define pml specials

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Boundary
     .ReflectionLevel "0.0001" 
     .MinimumDistanceType "Fraction" 
     .MinimumDistancePerWavelengthNewMeshEngine "4" 
     .MinimumDistanceReferenceFrequencyType "Center" 
     .FrequencyForMinimumDistance "20" 
     .SetAbsoluteDistance "0.0" 
End With

'@ delete material: PEC

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Material.Delete "PEC"

'@ define frequency range

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Solver.FrequencyRange "0.0", "40.0"

'@ define brick: component1:solid1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Brick
     .Reset 
     .Name "solid1" 
     .Component "component1" 
     .Material "Copper (annealed)" 
     .Xrange "g/2+wi+(d-g-4*wi)/2", "g/2+wi+(d-g-4*wi)/2+wi" 
     .Yrange "0", "t" 
     .Zrange "-d/2", "d/2" 
     .Create
End With

'@ define brick: component1:solid2

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Brick
     .Reset 
     .Name "solid2" 
     .Component "component1" 
     .Material "Copper (annealed)" 
     .Xrange "g/2+wi", "g/2+wi+(d-g-4*wi)/2" 
     .Yrange "0", "t" 
     .Zrange "-wi/2", "wi/2" 
     .Create
End With

'@ define brick: component1:solid3

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Brick
     .Reset 
     .Name "solid3" 
     .Component "component1" 
     .Material "Copper (annealed)" 
     .Xrange "g/2", "g/2+wi" 
     .Yrange "0", "t" 
     .Zrange "-l/2", "l/2" 
     .Create
End With

'@ define brick: component1:solid4

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Brick
     .Reset 
     .Name "solid4" 
     .Component "component1" 
     .Material "Copper (annealed)" 
     .Xrange "0", "g/2+wi+(d-g-4*wi)/2" 
     .Yrange "0", "t" 
     .Zrange "-d/2", "-d/2+wi" 
     .Create
End With

'@ define brick: component1:solid5

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Brick
     .Reset 
     .Name "solid5" 
     .Component "component1" 
     .Material "Copper (annealed)" 
     .Xrange "0", "g/2+wi+(d-g-4*wi)/2" 
     .Yrange "0", "t" 
     .Zrange "d/2", "d/2-wi" 
     .Create
End With

'@ boolean add shapes: component1:solid1, component1:solid2

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Solid.Add "component1:solid1", "component1:solid2"

'@ boolean add shapes: component1:solid1, component1:solid3

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Solid.Add "component1:solid1", "component1:solid3"

'@ boolean add shapes: component1:solid1, component1:solid4

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Solid.Add "component1:solid1", "component1:solid4"

'@ boolean add shapes: component1:solid1, component1:solid5

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Solid.Add "component1:solid1", "component1:solid5"

'@ transform: mirror component1:solid1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Transform 
     .Reset 
     .Name "component1:solid1" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .PlaneNormal "-l", "0", "0" 
     .MultipleObjects "True" 
     .GroupObjects "True" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Destination "" 
     .Material "" 
     .Transform "Shape", "Mirror" 
End With

'@ delete port: port1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Port.Delete "1"

'@ delete port: port2

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Port.Delete "2"

'@ transform: translate component1:solid1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
If N>1 Then
With Transform 
     .Reset 
     .Name "component1:solid1" 
     .Vector "0", "0", "a2" 
     .UsePickedPoints "False" 
     .InvertPickedPoints "False" 
     .MultipleObjects "True" 
     .GroupObjects "True" 
     .Repetitions "N-1" 
     .MultipleSelection "False" 
     .Destination "" 
     .Material "" 
     .Transform "Shape", "Translate" 
End With 
End If

'@ boolean subtract shapes: component1:microstrip, component1:solid1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Solid.Subtract "component1:microstrip", "component1:solid1"

'@ change solver type

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
ChangeSolverType "HF Time Domain"

'@ rename block: component1:microstrip to: component1:trace

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Solid.Rename "component1:microstrip", "trace"

'@ define brick: component1:solid1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Brick
     .Reset 
     .Name "solid1" 
     .Component "component1" 
     .Material "Copper (annealed)" 
     .Xrange "-Wt/2", "Wt/2" 
     .Yrange "-1.01*H", "-H" 
     .Zrange "-w-a2/2", "w+(N-1/2)*a2" 
     .Create
End With
Dim i As Integer
For i = 1 To N
With Material 
     .Reset 
     .Name "LC"&CStr(i)
     .Epsilon "eps"&CStr(i)
     .Mue "1"
     .TanD "0.001"
     .TanDFreq "20"
     .TanDGiven "True"
     .Create
End With
With Brick
     .Reset 
     .Name "LC"&CStr(i)
     .Component "component1" 
     .Material "LC"&CStr(i) 
     .Xrange "-a2/2", "a2/2" 
     .Yrange "0", "t+tLC" 
     .Zrange -3*a2/2+i*a2,-a2/2+i*a2
     .Create
End With
With Solid 
     .Version 9
     .Insert "component1:LC"&CStr(i), "component1:trace" 
     .Version 1
End With 
Next i

'@ define port: 1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Port 
     .Reset 
     .PortNumber "1" 
     .Label "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Full" 
     .Orientation "zmax" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "-8.817405725", "8.817405725" 
     .Yrange "-5.282605725", "3.814405725" 
     .Zrange "3.9355555555555", "3.9355555555555" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Create 
End With

'@ define port: 2

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Port 
     .Reset 
     .PortNumber "2" 
     .Label "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Full" 
     .Orientation "zmin" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "-8.817405725", "8.817405725" 
     .Yrange "-5.282605725", "3.814405725" 
     .Zrange "-3.9355555555555", "-3.9355555555555" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Create 
End With

'@ define time domain solver parameters

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Mesh.SetCreator "High Frequency" 
With Solver 
     .Method "Hexahedral"
     .CalculationType "TD-S"
     .StimulationPort "1"
     .StimulationMode "1"
     .SteadyStateLimit "-40"
     .MeshAdaption "False"
     .CalculateModesOnly "False"
     .SParaSymmetry "False"
     .StoreTDResultsInCache  "False"
     .FullDeembedding "False"
     .SuperimposePLWExcitation "False"
     .UseSensitivityAnalysis "False"
End With

'@ define farfield monitor: farfield (f=f1)

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Monitor 
     .Reset 
     .Name "farfield (f=f1)" 
     .Domain "Frequency" 
     .FieldType "Farfield" 
     .Frequency "f1" 
     .ExportFarfieldSource "False" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-5.07", "5.07", "-1.5352", "0.067", "-3.9355555555555", "3.9355555555555" 
     .SetSubvolumeOffset "10", "10", "10", "10", "10", "10" 
     .SetSubvolumeOffsetType "FractionOfWavelength" 
     .Create 
End With

'@ define monitor: e-field (f=f1;x=0)

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Monitor 
     .Reset 
     .Name "e-field (f=f1;x=0)" 
     .Dimension "Volume" 
     .Domain "Frequency" 
     .FieldType "Efield" 
     .Frequency "f1" 
     .UseSubvolume "True" 
     .Coordinates "Calculation" 
     .SetSubvolume "-8.817405725", "8.817405725", "-5.282605725", "3.814405725", "-3.9355555555555", "3.9355555555555" 
     .SetSubvolumeOffset "0.0", "0.0", "0.0", "0.0", "0.0", "0.0" 
     .PlaneNormal "x" 
     .PlanePosition "0" 
     .Create 
End With

'@ set parametersweep options

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
    .SetSimulationType "Transient" 
End With

'@ add parsweep sequence: Sequence 1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddSequence "Sequence 1" 
End With

'@ add parsweep parameter: Sequence 1:eps1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddParameter_Stepwidth "Sequence 1", "eps1", "3", "5", "0.1" 
End With

'@ define boundaries

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Boundary
     .Xmin "expanded open"
     .Xmax "expanded open"
     .Ymin "expanded open"
     .Ymax "expanded open"
     .Zmin "open"
     .Zmax "open"
     .Xsymmetry "magnetic"
     .Ysymmetry "none"
     .Zsymmetry "none"
     .ApplyInAllDirections "False"
End With

'@ edit parsweep parameter: Sequence 1:eps1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .DeleteParameter "Sequence 1", "eps1" 
     .AddParameter_Stepwidth "Sequence 1", "eps1", "3", "5", "0.1" 
End With

'@ farfield plot options

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With FarfieldPlot 
     .Plottype "Cartesian" 
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
     .SetFrequency "-1" 
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
     .SetScaleLinear "False" 
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

'@ set optimizer parameters

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Optimizer
  .SetMinMaxAuto "15" 
  .SetAlwaysStartFromCurrent "True" 
  .ResetParameterList
  .SelectParameter "a1", "False" 
  .SetParameterInit "10/3" 
  .SetParameterMin "3" 
  .SetParameterMax "3.6667" 
  .SetParameterAnchors "5" 
  .SelectParameter "eps1", "True" 
  .SetParameterInit "4" 
  .SetParameterMin "3.4" 
  .SetParameterMax "4.6" 
  .SetParameterAnchors "5" 
  .SelectParameter "eps2", "True" 
  .SetParameterInit "4" 
  .SetParameterMin "3.4" 
  .SetParameterMax "4.6" 
  .SetParameterAnchors "5" 
  .SelectParameter "eps3", "True" 
  .SetParameterInit "4" 
  .SetParameterMin "3.4" 
  .SetParameterMax "4.6" 
  .SetParameterAnchors "5" 
  .SelectParameter "eps4", "True" 
  .SetParameterInit "4" 
  .SetParameterMin "3.4" 
  .SetParameterMax "4.6" 
  .SetParameterAnchors "5" 
  .SelectParameter "eps5", "True" 
  .SetParameterInit "4" 
  .SetParameterMin "3.4" 
  .SetParameterMax "4.6" 
  .SetParameterAnchors "5" 
  .SelectParameter "eps6", "True" 
  .SetParameterInit "4" 
  .SetParameterMin "3.4" 
  .SetParameterMax "4.6" 
  .SetParameterAnchors "5" 
  .SelectParameter "eps7", "True" 
  .SetParameterInit "4" 
  .SetParameterMin "3.4" 
  .SetParameterMax "4.6" 
  .SetParameterAnchors "5" 
  .SelectParameter "eps8", "True" 
  .SetParameterInit "4" 
  .SetParameterMin "3.4" 
  .SetParameterMax "4.6" 
  .SetParameterAnchors "5" 
  .SelectParameter "eps9", "True" 
  .SetParameterInit "4" 
  .SetParameterMin "3.4" 
  .SetParameterMax "4.6" 
  .SetParameterAnchors "5" 
  .SelectParameter "eps10", "True" 
  .SetParameterInit "4" 
  .SetParameterMin "3.4" 
  .SetParameterMax "4.6" 
  .SetParameterAnchors "5" 
  .SelectParameter "eps11", "True" 
  .SetParameterInit "4" 
  .SetParameterMin "3.4" 
  .SetParameterMax "4.6" 
  .SetParameterAnchors "5" 
  .SelectParameter "eps12", "True" 
  .SetParameterInit "4" 
  .SetParameterMin "3.4" 
  .SetParameterMax "4.6" 
  .SetParameterAnchors "5" 
  .SelectParameter "eps13", "True" 
  .SetParameterInit "4" 
  .SetParameterMin "3.4" 
  .SetParameterMax "4.6" 
  .SetParameterAnchors "5" 
  .SelectParameter "eps14", "True" 
  .SetParameterInit "4" 
  .SetParameterMin "3.4" 
  .SetParameterMax "4.6" 
  .SetParameterAnchors "5" 
  .SelectParameter "eps15", "True" 
  .SetParameterInit "4" 
  .SetParameterMin "3.4" 
  .SetParameterMax "4.6" 
  .SetParameterAnchors "5" 
  .SelectParameter "f1", "False" 
  .SetParameterInit "37.158" 
  .SetParameterMin "33.442" 
  .SetParameterMax "40.874" 
  .SetParameterAnchors "5" 
  .SelectParameter "H", "False" 
  .SetParameterInit "1.52" 
  .SetParameterMin "1.368" 
  .SetParameterMax "1.672" 
  .SetParameterAnchors "5" 
  .SelectParameter "N", "False" 
  .SetParameterInit "15" 
  .SetParameterMin "13.5" 
  .SetParameterMax "16.5" 
  .SetParameterAnchors "5" 
  .SelectParameter "ph", "False" 
  .SetParameterInit "90" 
  .SetParameterMin "81" 
  .SetParameterMax "99" 
  .SetParameterAnchors "5" 
  .SelectParameter "s", "False" 
  .SetParameterInit "1/3" 
  .SetParameterMin "0.3" 
  .SetParameterMax "0.36667" 
  .SetParameterAnchors "5" 
  .SelectParameter "t", "False" 
  .SetParameterInit "0.017" 
  .SetParameterMin "0.0153" 
  .SetParameterMax "0.0187" 
  .SetParameterAnchors "5" 
  .SelectParameter "th", "False" 
  .SetParameterInit "100" 
  .SetParameterMin "81" 
  .SetParameterMax "99" 
  .SetParameterAnchors "5" 
  .SelectParameter "tLC", "False" 
  .SetParameterInit "0.05" 
  .SetParameterMin "0.045" 
  .SetParameterMax "0.055" 
  .SetParameterAnchors "5" 
  .SelectParameter "w", "False" 
  .SetParameterInit "3.38" 
  .SetParameterMin "3.042" 
  .SetParameterMax "3.718" 
  .SetParameterAnchors "5" 
End With

'@ set optimizer settings

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Optimizer 
  .SetOptimizerType "Genetic_Algorithm" 
  .SetSimulationType "Time Domain Solver" 
  .SetAccuracy "0.01" 
  .SetNumRefinements "1" 
  .SetGenerationSize "16", "Genetic_Algorithm" 
  .SetGenerationSize "30", "Particle_Swarm" 
  .SetMaxIt "30", "Genetic_Algorithm" 
  .SetMaxIt "15", "Particle_Swarm" 
  .SetMaxEval "3000", "CMAES" 
  .SetUseMaxEval "True", "CMAES" 
  .SetSigma "0.2", "CMAES" 
  .SetSeed "1", "CMAES" 
  .SetSeed "1", "Genetic_Algorithm" 
  .SetSeed "1", "Particle_Swarm" 
  .SetSeed "1", "Nelder_Mead_Simplex" 
  .SetMaxEval "500", "Trust_Region" 
  .SetUseMaxEval "False", "Trust_Region" 
  .SetSigma "0.2", "Trust_Region" 
  .SetDomainAccuracy "0.01", "Trust_Region" 
  .SetFiniteDiff "0", "Trust_Region" 
  .SetMaxEval "250", "Nelder_Mead_Simplex" 
  .SetUseMaxEval "False", "Nelder_Mead_Simplex" 
  .SetUseInterpolation "No_Interpolation", "Genetic_Algorithm" 
  .SetUseInterpolation "No_Interpolation", "Particle_Swarm" 
  .SetInitialDistribution "Latin_Hyper_Cube", "Genetic_Algorithm" 
  .SetInitialDistribution "Latin_Hyper_Cube", "Particle_Swarm" 
  .SetInitialDistribution "Noisy_Latin_Hyper_Cube", "Nelder_Mead_Simplex" 
  .SetUsePreDefPointInInitDistribution "True", "Nelder_Mead_Simplex" 
  .SetUsePreDefPointInInitDistribution "True", "CMAES" 
  .SetGoalFunctionLevel "0", "Genetic_Algorithm" 
  .SetGoalFunctionLevel "0", "Particle_Swarm" 
  .SetGoalFunctionLevel "0", "Nelder_Mead_Simplex" 
  .SetMutaionRate "60", "Genetic_Algorithm" 
  .SetMinSimplexSize "1e-6" 
  .SetGoalSummaryType "Sum_All_Goals" 
  .SetUseDataOfPreviousCalculations "False" 
  .SetDataStorageStrategy "None" 
  .SetOptionMoveMesh "False" 
End With

'@ add optimizer goals: 0D Result / 0

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Optimizer 
  .AddGoal "0D Result" 
  .SetGoalOperator "<" 
  .SetGoalTarget "100.0" 
  .UseSlope "False" 
  .SetGoalTargetMax "0.0" 
  .SetGoalWeight "1.0" 
  .SetGoalNormNew "Diff" 
  .SetGoalTemplateBased0DResultName "Directivity,Theta=th,Phi=ph" 
End With

'@ set optimizer settings

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Optimizer 
  .SetOptimizerType "Genetic_Algorithm" 
  .SetSimulationType "Time Domain Solver" 
  .SetAccuracy "0.01" 
  .SetNumRefinements "1" 
  .SetGenerationSize "16", "Genetic_Algorithm" 
  .SetGenerationSize "30", "Particle_Swarm" 
  .SetMaxIt "30", "Genetic_Algorithm" 
  .SetMaxIt "15", "Particle_Swarm" 
  .SetMaxEval "3000", "CMAES" 
  .SetUseMaxEval "True", "CMAES" 
  .SetSigma "0.2", "CMAES" 
  .SetSeed "1", "CMAES" 
  .SetSeed "1", "Genetic_Algorithm" 
  .SetSeed "1", "Particle_Swarm" 
  .SetSeed "1", "Nelder_Mead_Simplex" 
  .SetMaxEval "500", "Trust_Region" 
  .SetUseMaxEval "False", "Trust_Region" 
  .SetSigma "0.2", "Trust_Region" 
  .SetDomainAccuracy "0.01", "Trust_Region" 
  .SetFiniteDiff "0", "Trust_Region" 
  .SetMaxEval "250", "Nelder_Mead_Simplex" 
  .SetUseMaxEval "False", "Nelder_Mead_Simplex" 
  .SetUseInterpolation "No_Interpolation", "Genetic_Algorithm" 
  .SetUseInterpolation "No_Interpolation", "Particle_Swarm" 
  .SetInitialDistribution "Latin_Hyper_Cube", "Genetic_Algorithm" 
  .SetInitialDistribution "Latin_Hyper_Cube", "Particle_Swarm" 
  .SetInitialDistribution "Noisy_Latin_Hyper_Cube", "Nelder_Mead_Simplex" 
  .SetUsePreDefPointInInitDistribution "True", "Nelder_Mead_Simplex" 
  .SetUsePreDefPointInInitDistribution "True", "CMAES" 
  .SetGoalFunctionLevel "0", "Genetic_Algorithm" 
  .SetGoalFunctionLevel "0", "Particle_Swarm" 
  .SetGoalFunctionLevel "0", "Nelder_Mead_Simplex" 
  .SetMutaionRate "60", "Genetic_Algorithm" 
  .SetMinSimplexSize "1e-6" 
  .SetGoalSummaryType "Sum_All_Goals" 
  .SetUseDataOfPreviousCalculations "False" 
  .SetDataStorageStrategy "None" 
  .SetOptionMoveMesh "False" 
End With

'@ farfield plot options

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With FarfieldPlot 
     .Plottype "Cartesian" 
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
     .SetTheta360 "True" 
     .SymmetricRange "True" 
     .SetTimeDomainFF "False" 
     .SetFrequency "37.158" 
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

'@ delete parsweep parameter: Sequence 1:eps1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .DeleteParameter "Sequence 1", "eps1" 
End With

'@ delete parsweep sequence: Sequence 1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .DeleteSequence "Sequence 1" 
End With

'@ add parsweep sequence: Sequence 1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddSequence "Sequence 1" 
End With

'@ add parsweep parameter: Sequence 1:eps1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddParameter_Stepwidth "Sequence 1", "eps1", "3", "5", "0.1" 
End With

'@ set optimizer settings

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Optimizer 
  .SetOptimizerType "Genetic_Algorithm" 
  .SetSimulationType "Time Domain Solver" 
  .SetAccuracy "0.01" 
  .SetNumRefinements "1" 
  .SetGenerationSize "16", "Genetic_Algorithm" 
  .SetGenerationSize "30", "Particle_Swarm" 
  .SetMaxIt "30", "Genetic_Algorithm" 
  .SetMaxIt "15", "Particle_Swarm" 
  .SetMaxEval "3000", "CMAES" 
  .SetUseMaxEval "True", "CMAES" 
  .SetSigma "0.2", "CMAES" 
  .SetSeed "1", "CMAES" 
  .SetSeed "1", "Genetic_Algorithm" 
  .SetSeed "1", "Particle_Swarm" 
  .SetSeed "1", "Nelder_Mead_Simplex" 
  .SetMaxEval "500", "Trust_Region" 
  .SetUseMaxEval "False", "Trust_Region" 
  .SetSigma "0.2", "Trust_Region" 
  .SetDomainAccuracy "0.01", "Trust_Region" 
  .SetFiniteDiff "0", "Trust_Region" 
  .SetMaxEval "250", "Nelder_Mead_Simplex" 
  .SetUseMaxEval "False", "Nelder_Mead_Simplex" 
  .SetUseInterpolation "No_Interpolation", "Genetic_Algorithm" 
  .SetUseInterpolation "No_Interpolation", "Particle_Swarm" 
  .SetInitialDistribution "Latin_Hyper_Cube", "Genetic_Algorithm" 
  .SetInitialDistribution "Latin_Hyper_Cube", "Particle_Swarm" 
  .SetInitialDistribution "Noisy_Latin_Hyper_Cube", "Nelder_Mead_Simplex" 
  .SetUsePreDefPointInInitDistribution "True", "Nelder_Mead_Simplex" 
  .SetUsePreDefPointInInitDistribution "True", "CMAES" 
  .SetGoalFunctionLevel "0", "Genetic_Algorithm" 
  .SetGoalFunctionLevel "0", "Particle_Swarm" 
  .SetGoalFunctionLevel "0", "Nelder_Mead_Simplex" 
  .SetMutaionRate "60", "Genetic_Algorithm" 
  .SetMinSimplexSize "1e-6" 
  .SetGoalSummaryType "Sum_All_Goals" 
  .SetUseDataOfPreviousCalculations "False" 
  .SetDataStorageStrategy "None" 
  .SetOptionMoveMesh "False" 
End With

'@ delete all optimizer goals

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Optimizer.DeleteAllGoals

'@ add optimizer goals: 0D Result / 0

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Optimizer 
  .AddGoal "0D Result" 
  .SetGoalOperator ">" 
  .SetGoalTarget "100.0" 
  .UseSlope "False" 
  .SetGoalTargetMax "0.0" 
  .SetGoalWeight "1.0" 
  .SetGoalNormNew "Diff" 
  .SetGoalTemplateBased0DResultName "Directivity,Theta=th,Phi=ph" 
End With

'@ farfield plot options

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With FarfieldPlot 
     .Plottype "Polar" 
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
     .SetTheta360 "True" 
     .SymmetricRange "True" 
     .SetTimeDomainFF "False" 
     .SetFrequency "37.32" 
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


