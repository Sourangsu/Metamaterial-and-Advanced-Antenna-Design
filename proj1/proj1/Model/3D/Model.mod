'# MWS Version: Version 2016.7 - Nov 11 2016 - ACIS 25.0.2 -

'# length = mm
'# frequency = GHz
'# time = ns
'# frequency range: fmin = 0.1 fmax = 70
'# created = '[VERSION]2016.7|25.0.2|20161111[/VERSION]


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

'@ define frequency range

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Solver.FrequencyRange "0.1", "70"

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

'@ define material: Spleen

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Material
     .Reset
     .Name "Spleen"
     .Folder ""
     .FrqType "all"
     .Type "Normal"
     .SetMaterialUnit "GHz", "mm"
     .Epsilon "1"
     .Mue "1"
     .Sigma "0.0"
     .TanD "0.0"
     .TanDFreq "0.0"
     .TanDGiven "False"
     .TanDModel "ConstSigma"
     .ConstTanDModelOrderEps "1"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .SigmaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstSigma"
     .ConstTanDModelOrderMue "1"
     .DispModelEps "None"
     .DispModelMue "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .MaximalOrderNthModelFitEps "4"
     .ErrorLimitNthModelFitEps "0.005"
     .DispersiveFittingSchemeMue "Nth Order"
     .AddDispersionFittingValueEps "0.1", "90.65882266103", "144.085554317072", "1.0"
     .AddDispersionFittingValueEps "0.2", "72.7367025514297", "80.9597980588213", "1.0"
     .AddDispersionFittingValueEps "0.3", "66.4910204788658", "58.0642797059284", "1.0"
     .AddDispersionFittingValueEps "0.4", "63.2237444757493", "46.1020632920982", "1.0"
     .AddDispersionFittingValueEps "0.422222222222222", "62.6930018085738", "44.1776642846127", "1.0"
     .AddDispersionFittingValueEps "0.5", "61.1760593341038", "38.737684770473", "1.0"
     .AddDispersionFittingValueEps "0.6", "59.7511292516237", "33.7568878053306", "1.0"
     .AddDispersionFittingValueEps "0.7", "58.6885461287069", "30.1771219287398", "1.0"
     .AddDispersionFittingValueEps "0.744444444444444", "58.2954378277217", "28.8942093372873", "1.0"
     .AddDispersionFittingValueEps "0.8", "57.8558990087601", "27.4933273392168", "1.0"
     .AddDispersionFittingValueEps "0.9", "57.1784767362345", "25.4183769623651", "1.0"
     .AddDispersionFittingValueEps "1.06666666666667", "56.2784251264336", "22.8647687434868", "1.0"
     .AddDispersionFittingValueEps "1.38888888888889", "55.0109277306059", "19.8157325138851", "1.0"
     .AddDispersionFittingValueEps "1.71111111111111", "54.0724496155543", "18.1052451659886", "1.0"
     .AddDispersionFittingValueEps "2.03333333333333", "53.3043986291895", "17.1082371704721", "1.0"
     .AddDispersionFittingValueEps "2.35555555555556", "52.633605047937", "16.5332280487715", "1.0"
     .AddDispersionFittingValueEps "2.67777777777778", "52.02180380177", "16.2254763456007", "1.0"
     .AddDispersionFittingValueEps "3", "51.4472298677963", "16.0950402135463", "1.0"
     .UseGeneralDispersionEps "True"
     .UseGeneralDispersionMue "False"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .Rho "1020"
     .ThermalType "Normal"
     .ThermalConductivity "0.543"
     .HeatCapacity "3.7"
     .MetabolicRate "15000"
     .BloodFlow "82000"
     .VoxelConvection "0"
     .MechanicsType "Unused"
     .Colour "0.627451", "0.941176", "0.784314" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "False" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .Create
End With

'@ new component: component1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Component.New "component1"

'@ define brick: component1:solid1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Brick
     .Reset 
     .Name "solid1" 
     .Component "component1" 
     .Material "Spleen" 
     .Xrange "0", "1" 
     .Yrange "0", "1" 
     .Zrange "0", "1" 
     .Create
End With

'@ define boundaries

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Boundary
     .Xmin "magnetic"
     .Xmax "magnetic"
     .Ymin "electric"
     .Ymax "electric"
     .Zmin "expanded open"
     .Zmax "expanded open"
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
     .Orientation "zmin" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "0", "1" 
     .Yrange "0", "1" 
     .Zrange "-2.138319957204", "-2.138319957204" 
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
     .Orientation "zmax" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "0", "1" 
     .Yrange "0", "1" 
     .Zrange "3.138319957204", "3.138319957204" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Create 
End With

'@ set 3d mesh adaptation properties

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With MeshAdaption3D
    .SetType "Time" 
    .SetAdaptionStrategy "ExpertSystem" 
    .MinPasses "2" 
    .MaxPasses "6" 
    .MeshIncrement "5" 
    .ClearStopCriteria
    .AddSParameterStopCriterion "True", "0.1", "70", "0.0015", "1", "True" 
    .Add0DResultStopCriterion "", "0.02", "1", "False" 
End With

'@ define time domain solver parameters

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Mesh.SetCreator "High Frequency" 
With Solver 
     .Method "Hexahedral"
     .CalculationType "TD-S"
     .StimulationPort "1"
     .StimulationMode "1"
     .SteadyStateLimit "-50.0"
     .MeshAdaption "True"
     .CalculateModesOnly "False"
     .SParaSymmetry "False"
     .StoreTDResultsInCache  "False"
     .FullDeembedding "False"
     .SuperimposePLWExcitation "False"
     .UseSensitivityAnalysis "False"
End With

'@ set 3d mesh adaptation results

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With MeshSettings
   .SetMeshType "Hex"
   .Set "StepsPerWaveNear", "30"
   .Set "StepsPerWaveFar", "30"
   .Set "StepsPerBoxNear", "35"
   .Set "StepsPerBoxFar", "16"
End With

'@ deactivate transient solver mesh adaptation

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Solver.MeshAdaption "False"

'@ define pml specials

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Boundary
     .ReflectionLevel "0.0001" 
     .MinimumDistanceType "Fraction" 
     .MinimumDistancePerWavelengthNewMeshEngine "4" 
     .MinimumDistanceReferenceFrequencyType "Center" 
     .FrequencyForMinimumDistance "35.05" 
     .SetAbsoluteDistance "0.0" 
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
     .ReferencePlaneDistance "-l" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Full" 
     .Orientation "zmin" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "0", "1" 
     .Yrange "0", "1" 
     .Zrange "-2.138319957204", "-2.138319957204" 
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
     .ReferencePlaneDistance "-l" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Full" 
     .Orientation "zmax" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "0", "1" 
     .Yrange "0", "1" 
     .Zrange "3.138319957204", "3.138319957204" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Shield "none" 
     .Modify 
End With

'@ define time domain solver parameters

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Mesh.SetCreator "High Frequency" 
With Solver 
     .Method "Hexahedral"
     .CalculationType "TD-S"
     .StimulationPort "1"
     .StimulationMode "1"
     .SteadyStateLimit "-50.0"
     .MeshAdaption "False"
     .CalculateModesOnly "False"
     .SParaSymmetry "False"
     .StoreTDResultsInCache  "False"
     .FullDeembedding "False"
     .SuperimposePLWExcitation "False"
     .UseSensitivityAnalysis "False"
End With

'@ change solver type

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
ChangeSolverType "HF Time Domain"

'@ modify port: 2

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Port 
     .Reset 
     .LoadContentForModify "2" 
     .Label "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "l" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Full" 
     .Orientation "zmax" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "0", "1" 
     .Yrange "0", "1" 
     .Zrange "3.138319957204", "3.138319957204" 
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
     .ReferencePlaneDistance "-l" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Full" 
     .Orientation "zmax" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "0", "1" 
     .Yrange "0", "1" 
     .Zrange "3.138319957204", "3.138319957204" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Shield "none" 
     .Modify 
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
     .ReferencePlaneDistance "-l/4" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Full" 
     .Orientation "zmin" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "0", "1" 
     .Yrange "0", "1" 
     .Zrange "-2.138319957204", "-2.138319957204" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Shield "none" 
     .Modify 
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
     .ReferencePlaneDistance "-l" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Full" 
     .Orientation "zmin" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "0", "1" 
     .Yrange "0", "1" 
     .Zrange "-2.138319957204", "-2.138319957204" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Shield "none" 
     .Modify 
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
     .ReferencePlaneDistance "-l/2" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Full" 
     .Orientation "zmin" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "0", "1" 
     .Yrange "0", "1" 
     .Zrange "-2.138319957204", "-2.138319957204" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Shield "none" 
     .Modify 
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
     .ReferencePlaneDistance "-l" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Full" 
     .Orientation "zmin" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "0", "1" 
     .Yrange "0", "1" 
     .Zrange "-2.138319957204", "-2.138319957204" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Shield "none" 
     .Modify 
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
     .ReferencePlaneDistance "l" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Full" 
     .Orientation "zmin" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "0", "1" 
     .Yrange "0", "1" 
     .Zrange "-2.138319957204", "-2.138319957204" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Shield "none" 
     .Modify 
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
     .ReferencePlaneDistance "-l" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Full" 
     .Orientation "zmin" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "0", "1" 
     .Yrange "0", "1" 
     .Zrange "-2.138319957204", "-2.138319957204" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Shield "none" 
     .Modify 
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
     .ReferencePlaneDistance "-2.13830242510499" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Full" 
     .Orientation "zmin" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "0", "1" 
     .Yrange "0", "1" 
     .Zrange "-2.138319957204", "-2.138319957204" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Shield "none" 
     .Modify 
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
     .ReferencePlaneDistance "-2.13830242500499" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Full" 
     .Orientation "zmin" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "0", "1" 
     .Yrange "0", "1" 
     .Zrange "-2.138319957204", "-2.138319957204" 
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
     .ReferencePlaneDistance "-2.13830242500499" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Full" 
     .Orientation "zmax" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "0", "1" 
     .Yrange "0", "1" 
     .Zrange "3.138319957204", "3.138319957204" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Shield "none" 
     .Modify 
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
     .ReferencePlaneDistance "-2.03830242500499" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Full" 
     .Orientation "zmin" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "0", "1" 
     .Yrange "0", "1" 
     .Zrange "-2.138319957204", "-2.138319957204" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Shield "none" 
     .Modify 
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
     .ReferencePlaneDistance "-l" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Full" 
     .Orientation "zmin" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "0", "1" 
     .Yrange "0", "1" 
     .Zrange "-2.138319957204", "-2.138319957204" 
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
     .ReferencePlaneDistance "-l" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Full" 
     .Orientation "zmax" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "0", "1" 
     .Yrange "0", "1" 
     .Zrange "3.138319957204", "3.138319957204" 
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
     .FrequencyForMinimumDistance "35.05" 
     .SetAbsoluteDistance "l" 
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
     .ReferencePlaneDistance "l" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Full" 
     .Orientation "zmin" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "0", "1" 
     .Yrange "0", "1" 
     .Zrange "-2.138319957204", "-2.138319957204" 
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
     .ReferencePlaneDistance "l" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Full" 
     .Orientation "zmax" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "0", "1" 
     .Yrange "0", "1" 
     .Zrange "3.138319957204", "3.138319957204" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Shield "none" 
     .Modify 
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
     .ReferencePlaneDistance "-l" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Full" 
     .Orientation "zmin" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "0", "1" 
     .Yrange "0", "1" 
     .Zrange "-2.138319957204", "-2.138319957204" 
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
     .ReferencePlaneDistance "-l" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Full" 
     .Orientation "zmax" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "0", "1" 
     .Yrange "0", "1" 
     .Zrange "3.138319957204", "3.138319957204" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Shield "none" 
     .Modify 
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
     .ReferencePlaneDistance "l" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Full" 
     .Orientation "zmin" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "0", "1" 
     .Yrange "0", "1" 
     .Zrange "-2.138319957204", "-2.138319957204" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Shield "none" 
     .Modify 
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
     .ReferencePlaneDistance "-l" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Full" 
     .Orientation "zmin" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "0", "1" 
     .Yrange "0", "1" 
     .Zrange "-2.138319957204", "-2.138319957204" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Shield "none" 
     .Modify 
End With

'@ define time domain solver parameters

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Mesh.SetCreator "High Frequency" 
With Solver 
     .Method "Hexahedral"
     .CalculationType "TD-S"
     .StimulationPort "1"
     .StimulationMode "1"
     .SteadyStateLimit "-50.0"
     .MeshAdaption "True"
     .CalculateModesOnly "False"
     .SParaSymmetry "False"
     .StoreTDResultsInCache  "False"
     .FullDeembedding "False"
     .SuperimposePLWExcitation "False"
     .UseSensitivityAnalysis "False"
End With

'@ set 3d mesh adaptation results

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With MeshSettings
   .SetMeshType "Hex"
   .Set "StepsPerWaveNear", "40"
   .Set "StepsPerWaveFar", "40"
   .Set "StepsPerBoxNear", "45"
   .Set "StepsPerBoxFar", "26"
End With

'@ deactivate transient solver mesh adaptation

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Solver.MeshAdaption "False"

'@ define time domain solver parameters

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Mesh.SetCreator "High Frequency" 
With Solver 
     .Method "Hexahedral"
     .CalculationType "TD-S"
     .StimulationPort "1"
     .StimulationMode "1"
     .SteadyStateLimit "-80.0"
     .MeshAdaption "False"
     .CalculateModesOnly "False"
     .SParaSymmetry "False"
     .StoreTDResultsInCache  "False"
     .FullDeembedding "False"
     .SuperimposePLWExcitation "False"
     .UseSensitivityAnalysis "False"
End With

'@ define material: Water (sea)

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Material
     .Reset
     .Name "Water (sea)"
     .Folder ""
.FrqType "all" 
.Type "Normal" 
.SetMaterialUnit "GHz", "mm"
.Epsilon "74" 
.Mue "0.999991" 
.Kappa "3.53" 
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
.Rho "1025" 
.ThermalType "Normal" 
.ThermalConductivity "0.6" 
.HeatCapacity "4.2"
.Colour "0", "0.501961", "0.752941" 
.Wireframe "False" 
.Transparency "48" 
.Create
End With

'@ define sphere: component1:inclusion

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Sphere 
     .Reset 
     .Name "inclusion" 
     .Component "component1" 
     .Material "Water (sea)" 
     .Axis "z" 
     .CenterRadius "0.4" 
     .TopRadius "0" 
     .BottomRadius "0" 
     .Center "0.5", "0.5", "0.5" 
     .Segments "0" 
     .Create 
End With

'@ boolean insert shapes: component1:solid1, component1:inclusion

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Solid.Insert "component1:solid1", "component1:inclusion"

'@ define time domain solver parameters

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Mesh.SetCreator "High Frequency" 
With Solver 
     .Method "Hexahedral"
     .CalculationType "TD-S"
     .StimulationPort "1"
     .StimulationMode "1"
     .SteadyStateLimit "-60.0"
     .MeshAdaption "True"
     .CalculateModesOnly "False"
     .SParaSymmetry "False"
     .StoreTDResultsInCache  "False"
     .FullDeembedding "False"
     .SuperimposePLWExcitation "False"
     .UseSensitivityAnalysis "False"
End With

'@ set 3d mesh adaptation results

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With MeshSettings
   .SetMeshType "Hex"
   .Set "StepsPerWaveNear", "45"
   .Set "StepsPerWaveFar", "45"
   .Set "StepsPerBoxNear", "50"
   .Set "StepsPerBoxFar", "31"
End With

'@ deactivate transient solver mesh adaptation

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Solver.MeshAdaption "False" 

'@ define time domain solver parameters

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Mesh.SetCreator "High Frequency" 

With Solver 
     .Method "Hexahedral"
     .CalculationType "TD-S"
     .StimulationPort "1"
     .StimulationMode "1"
     .SteadyStateLimit "-60.0"
     .MeshAdaption "False"
     .CalculateModesOnly "False"
     .SParaSymmetry "False"
     .StoreTDResultsInCache  "False"
     .FullDeembedding "False"
     .SuperimposePLWExcitation "False"
     .UseSensitivityAnalysis "False"
End With


