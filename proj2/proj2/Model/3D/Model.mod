'# MWS Version: Version 2016.7 - Nov 11 2016 - ACIS 25.0.2 -

'# length = mm
'# frequency = GHz
'# time = ns
'# frequency range: fmin = 0 fmax = 25
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
Solver.FrequencyRange "0.0", "25"

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
     .TanDModel "ConstTanD"
     .EnableUserConstTanDModelOrderEps "False"
     .ConstTanDModelOrderEps "1"
     .SetElParametricConductivity "False"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .SigmaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstTanD"
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

'@ define pml specials

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Boundary
     .ReflectionLevel "0.0001" 
     .MinimumDistanceType "Absolute" 
     .MinimumDistancePerWavelengthNewMeshEngine "opendist" 
     .MinimumDistanceReferenceFrequencyType "Center" 
     .FrequencyForMinimumDistance "12.5" 
     .SetAbsoluteDistance "opendist" 
End With

'@ define material: Rogers RT5870 (lossy)

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Material
     .Reset
     .Name "Rogers RT5870 (lossy)"
     .Folder ""
.FrqType "all" 
.Type "Normal" 
.SetMaterialUnit "GHz", "mm"
.Epsilon "2.33" 
.Mue "1.0" 
.Kappa "0.0" 
.TanD "0.0012" 
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
.ThermalConductivity "0.22" 
.SetActiveMaterial "all" 
.Colour "0.94", "0.82", "0.76" 
.Wireframe "False" 
.Transparency "0" 
.Create
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
     .Material "Rogers RT5870 (lossy)" 
     .Xrange "-ts", "0" 
     .Yrange "-az/2", "az/2" 
     .Zrange "-ath/2", "ath/2" 
     .Create
End With

'@ define brick: component1:ring1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Brick
     .Reset 
     .Name "ring1" 
     .Component "component1" 
     .Material "Rogers RT5870 (lossy)" 
     .Xrange "0", "t" 
     .Yrange "-l/2", "(-l/2)+w+s" 
     .Zrange "-w/2", "-3*w/2" 
     .Create
End With

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

'@ change material and color: component1:ring1 to: Copper (annealed)

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Solid.ChangeMaterial "component1:ring1", "Copper (annealed)" 
Solid.SetUseIndividualColor "component1:ring1", 1
Solid.ChangeIndividualColor "component1:ring1", "255", "255", "128"

'@ define brick: component1:ring2

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Brick
     .Reset 
     .Name "ring2" 
     .Component "component1" 
     .Material "Copper (annealed)" 
     .Xrange "0", "t" 
     .Yrange "-l/2", "(-l/2)+w" 
     .Zrange "-3*w/2", "-l/2" 
     .Create
End With

'@ define brick: component1:solid1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Brick
     .Reset 
     .Name "solid1" 
     .Component "component1" 
     .Material "Copper (annealed)" 
     .Xrange "0", "t" 
     .Yrange "-l/2+w", "l/2" 
     .Zrange "-l/2+w", "-l/2" 
     .Create
End With

'@ rename block: component1:solid1 to: component1:ring3

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Solid.Rename "component1:solid1", "ring3"

'@ define brick: component1:ring4

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Brick
     .Reset 
     .Name "ring4" 
     .Component "component1" 
     .Material "Copper (annealed)" 
     .Xrange "0", "t" 
     .Yrange "l/2-w", "l/2" 
     .Zrange "0", "-l/2+w" 
     .Create
End With

'@ boolean add shapes: component1:ring1, component1:ring2

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Solid.Add "component1:ring1", "component1:ring2"

'@ boolean add shapes: component1:ring1, component1:ring3

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Solid.Add "component1:ring1", "component1:ring3"

'@ boolean add shapes: component1:ring1, component1:ring4

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Solid.Add "component1:ring1", "component1:ring4"

'@ pick edge

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Pick.PickEdgeFromId "component1:ring1", "52", "38"

'@ blend edges of: component1:ring1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Solid.BlendEdge "r"

'@ pick edge

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Pick.PickEdgeFromId "component1:ring1", "20", "16"

'@ blend edges of: component1:ring1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Solid.BlendEdge "r+w"

'@ pick edge

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Pick.PickEdgeFromId "component1:ring1", "30", "22"

'@ blend edges of: component1:ring1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Solid.BlendEdge "r+w"

'@ pick edge

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Pick.PickEdgeFromId "component1:ring1", "44", "32"

'@ blend edges of: component1:ring1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Solid.BlendEdge "r" 


'@ pick edge

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Pick.PickEdgeFromId "component1:ring1", "51", "35"

'@ blend edges of: component1:ring1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Solid.BlendEdge "r"

'@ pick edge

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Pick.PickEdgeFromId "component1:ring1", "49", "33"

'@ blend edges of: component1:ring1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Solid.BlendEdge "r"

'@ transform: mirror component1:ring1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Transform 
     .Reset 
     .Name "component1:ring1" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .PlaneNormal "0", "0", "-l/2" 
     .MultipleObjects "True" 
     .GroupObjects "True" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Destination "" 
     .Material "" 
     .Transform "Shape", "Mirror" 
End With

'@ transform: mirror component1:ring1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Transform 
     .Reset 
     .Name "component1:ring1" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .PlaneNormal "0", "0", "-l/2" 
     .MultipleObjects "True" 
     .GroupObjects "True" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Destination "" 
     .Material "" 
     .Transform "Shape", "Mirror" 
End With

'@ define brick: component1:space

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Brick
     .Reset 
     .Name "space" 
     .Component "component1" 
     .Material "Vacuum" 
     .Xrange "-ar/2", "ar/2" 
     .Yrange "-az/2", "az/2" 
     .Zrange "-ath/2", "ath/2" 
     .Create
End With


'@ define material colour: Vacuum

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Material 
     .Name "Vacuum"
     .Folder ""
     .Colour "0.5", "0.8", "1" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "100" 
     .ChangeColour 
End With

'@ define pml specials

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Boundary
     .ReflectionLevel "0.0001" 
     .MinimumDistanceType "Absolute" 
     .MinimumDistancePerWavelengthNewMeshEngine "opendist" 
     .MinimumDistanceReferenceFrequencyType "Center" 
     .FrequencyForMinimumDistance "12.5" 
     .SetAbsoluteDistance "opendist" 
End With

'@ define material colour: Vacuum

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Material 
     .Name "Vacuum"
     .Folder ""
     .Colour "0.5", "0.8", "1" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "82" 
     .ChangeColour 
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
     .ReferencePlaneDistance "-l" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Full" 
     .Orientation "zmin" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "-1.591549430919", "1.591549430919" 
     .Yrange "-1.6666666666667", "1.6666666666667" 
     .Zrange "-4.6666666666667", "-4.6666666666667" 
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
     .ReferencePlaneDistance "-l" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Full" 
     .Orientation "zmax" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "-1.591549430919", "1.591549430919" 
     .Yrange "-1.6666666666667", "1.6666666666667" 
     .Zrange "4.6666666666667", "4.6666666666667" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Create 
End With

'@ set mesh properties (Hexahedral)

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Mesh 
     .MeshType "PBA" 
     .SetCreator "High Frequency"
End With 
With MeshSettings 
     .SetMeshType "Hex" 
     .Set "Version", 1%
     'MAX CELL - WAVELENGTH REFINEMENT 
     .Set "StepsPerWaveNear", "30" 
     .Set "StepsPerWaveFar", "30" 
     .Set "WavelengthRefinementSameAsNear", "1" 
     'MAX CELL - GEOMETRY REFINEMENT 
     .Set "StepsPerBoxNear", "30" 
     .Set "StepsPerBoxFar", "1" 
     .Set "MaxStepNear", "0" 
     .Set "MaxStepFar", "0" 
     .Set "ModelBoxDescrNear", "maxedge" 
     .Set "ModelBoxDescrFar", "maxedge" 
     .Set "UseMaxStepAbsolute", "0" 
     .Set "GeometryRefinementSameAsNear", "0" 
     'MIN CELL 
     .Set "UseRatioLimitGeometry", "1" 
     .Set "RatioLimitGeometry", "15" 
     .Set "MinStepGeometryX", "0" 
     .Set "MinStepGeometryY", "0" 
     .Set "MinStepGeometryZ", "0" 
     .Set "UseSameMinStepGeometryXYZ", "1" 
End With 
With MeshSettings 
     .Set "PlaneMergeVersion", "2" 
End With 
With MeshSettings 
     .SetMeshType "Hex" 
     .Set "FaceRefinementOn", "0" 
     .Set "FaceRefinementPolicy", "2" 
     .Set "FaceRefinementRatio", "2" 
     .Set "FaceRefinementStep", "0" 
     .Set "FaceRefinementNSteps", "2" 
     .Set "EllipseRefinementOn", "0" 
     .Set "EllipseRefinementPolicy", "2" 
     .Set "EllipseRefinementRatio", "2" 
     .Set "EllipseRefinementStep", "0" 
     .Set "EllipseRefinementNSteps", "2" 
     .Set "FaceRefinementBufferLines", "3" 
     .Set "EdgeRefinementOn", "1" 
     .Set "EdgeRefinementPolicy", "1" 
     .Set "EdgeRefinementRatio", "2" 
     .Set "EdgeRefinementStep", "0" 
     .Set "EdgeRefinementBufferLines", "3" 
     .Set "RefineEdgeMaterialGlobal", "0" 
     .Set "RefineAxialEdgeGlobal", "0" 
     .Set "BufferLinesNear", "3" 
     .Set "UseDielectrics", "1" 
     .Set "EquilibrateOn", "0" 
     .Set "Equilibrate", "1.5" 
     .Set "IgnoreThinPanelMaterial", "0" 
End With 
With MeshSettings 
     .SetMeshType "Hex" 
     .Set "SnapToAxialEdges", "1"
     .Set "SnapToPlanes", "1"
     .Set "SnapToSpheres", "1"
     .Set "SnapToEllipses", "1"
     .Set "SnapToCylinders", "1"
     .Set "SnapToCylinderCenters", "1"
     .Set "SnapToEllipseCenters", "1"
End With 
With Discretizer 
     .MeshType "PBA" 
     .PBAType "Fast PBA" 
     .AutomaticPBAType "True" 
     .FPBAAccuracyEnhancement "enable"
     .ConnectivityCheck "False"
     .ConvertGeometryDataAfterMeshing "True" 
     .UsePecEdgeModel "True" 
     .GapDetection "False" 
     .FPBAGapTolerance "1e-3" 
     .PointAccEnhancement "0" 
     .UseSplitComponents "True" 
     .EnableSubgridding "False" 
     .PBAFillLimit "99" 
     .AlwaysExcludePec "False" 
End With

'@ define time domain solver parameters

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Mesh.SetCreator "High Frequency" 
With Solver 
     .Method "Hexahedral"
     .CalculationType "TD-S"
     .StimulationPort "All"
     .StimulationMode "All"
     .SteadyStateLimit "-50.0"
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

'@ define special time domain solver parameters

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
'STEADY STATE
With Solver
     .SteadyStateDurationType "Number of pulses"
     .NumberOfPulseWidths "200"
     .SteadyStateDurationTime "0.622222"
     .SteadyStateDurationTimeAsDistance "186.667"
End With
'GENERAL
With Solver
     .TimeStepStabilityFactor "1.0"
     .RestartAfterInstabilityAbort "True"
     .AutomaticTimeSignalSampling "True"
     .ConsiderExcitationForFreqSamplingRate "False"
     .UseBroadBandPhaseShift "False"
     .SetBroadBandPhaseShiftLowerBoundFac "0.1"
     .SetPortShieldingType "NONE"
     .FrequencySamples "10001"
     .FrequencyLogSamples "0"
     .ConsiderTwoPortReciprocity "True"
     .EnergyBalanceLimit "0.03"
     .TDRComputation "False"
     .TDRShift50Percent "False"
End With
'HEXAHEDRAL
With Solver
     .SetPMLType "CONVPML"
     .UseVariablePMLLayerSizeStandard "False"
     .KeepPMLDepthDuringMeshAdaptationWithVariablePMLLayerSize "False"
     .SetSubcycleState "Automatic"
     .NormalizeToReferenceSignal "False"
     .SetEnhancedPMLStabilization "Automatic"
     .SimplifiedPBAMethod "False"
     .SParaAdjustment "True"
     .PrepareFarfields "True"
     .MonitorFarFieldsNearToModel "False"
     .SetSubgridCycleState "Automatic"
End With
'MATERIAL
With Solver
     .SurfaceImpedanceOrder "10"
     .ActivatePowerLoss1DMonitor "True"
     .PowerLoss1DMonitorPerSolid "False"
     .Use3DFieldMonitorForPowerLoss1DMonitor "True"
     .UseFarFieldMonitorForPowerLoss1DMonitor "False"
     .UseExtraFreqForPowerLoss1DMonitor "False"
     .ResetPowerLoss1DMonitorExtraFreq
     .SetDispNonLinearMaterialMonitor "False"
     .SetTimePowerLossSIMaterialMonitor "False"
     .SetHFTDDispUpdateScheme "Standard"
End With
'AR-FILTER
With Solver
     .UseArfilter "False"
     .ArMaxEnergyDeviation "0.1"
     .ArPulseSkip "1"
End With
'WAVEGUIDE
With Solver
     .WaveguidePortGeneralized "False"
     .WaveguidePortROM "False"
     .DispEpsFullDeembedding "False"
     .SetSamplesFullDeembedding "20"
     .AbsorbUnconsideredModeFields "Automatic"
     .SetModeFreqFactor "0.5"
     .AdaptivePortMeshing "True"
     .AccuracyAdaptivePortMeshing "1"
     .PassesAdaptivePortMeshing "4"
End With
'HEXAHEDRAL TLM
With Solver
     .UseDataId ""
     .UseMeshType "2"
     .UseAbsorbingBoundary "True"
     .UseDoublePrecision "False"
     .ShowResultsInTree "True"
     .AllowMaterialOverlap "True"
     .ExcitePlanewaveNearModel "False"
     .SetGroundPlane "False"
     .GroundPlane "x", "0.0"
     .NumberOfLayers "5"
     .HealCheckAllObjects "False"
     .NormalizeToGaussian "True"
     .TimeSignalSamplingFactor "1"
End With
'TLM POSTPROCESSING
With Solver
     .ResetSettings
     .CalculateFullPatternForFarField "true", "Medium" 
     .CalculatePatternOnCuts "false" 
     .CalculatePatternOnConicalCuts "false" 
     .PhaseReferencePoint "0", "0", "0" 
     .CutsCoPolarAndCrossPolar "true" 
     .CutsThetaAndPhi "false" 
     .CutsAxialRatio "false" 
     .CutsDBs "true" 
     .CutsRelativeMagnitudeAndPhase "false" 
     .CutsAllPolarizations "false" 
     .CutsNormalization "dB-boresight" 
     .CutsResolution "1.0" 
     .CutsExtent "180" 
     .CutsSpacing "45" 
     .CutsPolarizationAndBoresightAxes "Auto", "Auto" 
     .ConicalThetaAndPhi "true" 
     .ConicalAxialRatio "false" 
     .ConicalAllPolarizations "false" 
     .ConicalDBs "true" 
     .ConicalRelativeMagnitudeAndPhase "false" 
     .ConicalNormalization "dB-isotrope" 
     .ConicalResolution "3.0" 
     .Cones "0", "180", "10" 
     .ConeAndFrontAxes "+y", "+z" 
     .CalculateNearFieldOnCylindricalSurfaces "false", "Coarse" 
     .CylinderGridCustomStep "1" 
     .CalculateNearFieldOnCircularCuts "false" 
     .CylinderBaseCenter "0", "0", "0" 
     .CylinderRadius "3" 
     .CylinderHeight "3" 
     .CylinderSpacing "1" 
     .CylinderResolution "2.0" 
     .CylinderAllPolarization "true" 
     .CylinderRadialAngularVerticalComponents "false" 
     .CylinderMagnitudeOfTangentialConponent "false" 
     .CylinderVm "true" 
     .CylinderDBVm "false" 
     .CylinderDBUVm "false" 
     .CylinderAndFrontAxes "+y", "+z" 
     .CalculateSMatrix "true" 
     .CalculateZMatrix "false" 
     .CalculateYMatrix "false" 
     .CalculateZInput "true" 
     .CalculateSWR "false" 
     .CalculateDB "true" 
     .WriteTouchstone "false" 
     .TwoPortDeviceIsLossless "false" 
     .TwoPortDeviceHasIdenticalPorts "false" 
     .TwoPortDeviceIsSymmetric "false" 
     .FrequencyMap "false" 
     .NormalizedSMatrix "false" 
     .NormalizingImpedance "0" 
     .CutoffFrequency "1" 
     .ApplyLinearPrediction "false" 
     .Windowing "None" 
     .InvertDBScale "false" 
     .CalculateMagnitudeAndPhase "true" 
     .AutoFreqStep "true", "1"
     .MultiplyConstantFactor "false", "1"
     .DivideBySignal "false", ""
     .CalculateDBRelativeTo "false", "Unit magnitude"
     .SetExcitationSignal "" 
     .SaveSettings
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

'@ define special time domain solver parameters

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
'STEADY STATE
With Solver
     .SteadyStateDurationType "Number of pulses"
     .NumberOfPulseWidths "200"
     .SteadyStateDurationTime "0.622222"
     .SteadyStateDurationTimeAsDistance "186.667"
End With
'GENERAL
With Solver
     .TimeStepStabilityFactor "1.0"
     .RestartAfterInstabilityAbort "True"
     .AutomaticTimeSignalSampling "True"
     .ConsiderExcitationForFreqSamplingRate "False"
     .UseBroadBandPhaseShift "False"
     .SetBroadBandPhaseShiftLowerBoundFac "0.1"
     .SetPortShieldingType "NONE"
     .FrequencySamples "10001"
     .FrequencyLogSamples "0"
     .ConsiderTwoPortReciprocity "True"
     .EnergyBalanceLimit "0.03"
     .TDRComputation "False"
     .TDRShift50Percent "False"
End With
'HEXAHEDRAL
With Solver
     .SetPMLType "CONVPML"
     .UseVariablePMLLayerSizeStandard "False"
     .KeepPMLDepthDuringMeshAdaptationWithVariablePMLLayerSize "False"
     .SetSubcycleState "Automatic"
     .NormalizeToReferenceSignal "False"
     .SetEnhancedPMLStabilization "Automatic"
     .SimplifiedPBAMethod "False"
     .SParaAdjustment "True"
     .PrepareFarfields "True"
     .MonitorFarFieldsNearToModel "False"
     .SetSubgridCycleState "Automatic"
End With
'MATERIAL
With Solver
     .SurfaceImpedanceOrder "10"
     .ActivatePowerLoss1DMonitor "True"
     .PowerLoss1DMonitorPerSolid "False"
     .Use3DFieldMonitorForPowerLoss1DMonitor "True"
     .UseFarFieldMonitorForPowerLoss1DMonitor "False"
     .UseExtraFreqForPowerLoss1DMonitor "False"
     .ResetPowerLoss1DMonitorExtraFreq
     .SetDispNonLinearMaterialMonitor "False"
     .SetTimePowerLossSIMaterialMonitor "False"
     .SetHFTDDispUpdateScheme "Standard"
End With
'AR-FILTER
With Solver
     .UseArfilter "False"
     .ArMaxEnergyDeviation "0.1"
     .ArPulseSkip "1"
End With
'WAVEGUIDE
With Solver
     .WaveguidePortGeneralized "False"
     .WaveguidePortROM "False"
     .DispEpsFullDeembedding "False"
     .SetSamplesFullDeembedding "20"
     .AbsorbUnconsideredModeFields "Automatic"
     .SetModeFreqFactor "0.5"
     .AdaptivePortMeshing "True"
     .AccuracyAdaptivePortMeshing "1"
     .PassesAdaptivePortMeshing "4"
End With
'HEXAHEDRAL TLM
With Solver
     .UseDataId ""
     .UseMeshType "2"
     .UseAbsorbingBoundary "True"
     .UseDoublePrecision "False"
     .ShowResultsInTree "True"
     .AllowMaterialOverlap "True"
     .ExcitePlanewaveNearModel "False"
     .SetGroundPlane "False"
     .GroundPlane "x", "0.0"
     .NumberOfLayers "5"
     .HealCheckAllObjects "False"
     .NormalizeToGaussian "True"
     .TimeSignalSamplingFactor "1"
End With
'TLM POSTPROCESSING
With Solver
     .ResetSettings
     .CalculateFullPatternForFarField "true", "Medium" 
     .CalculatePatternOnCuts "false" 
     .CalculatePatternOnConicalCuts "false" 
     .PhaseReferencePoint "0", "0", "0" 
     .CutsCoPolarAndCrossPolar "true" 
     .CutsThetaAndPhi "false" 
     .CutsAxialRatio "false" 
     .CutsDBs "true" 
     .CutsRelativeMagnitudeAndPhase "false" 
     .CutsAllPolarizations "false" 
     .CutsNormalization "dB-boresight" 
     .CutsResolution "1.0" 
     .CutsExtent "180" 
     .CutsSpacing "45" 
     .CutsPolarizationAndBoresightAxes "Auto", "Auto" 
     .ConicalThetaAndPhi "true" 
     .ConicalAxialRatio "false" 
     .ConicalAllPolarizations "false" 
     .ConicalDBs "true" 
     .ConicalRelativeMagnitudeAndPhase "false" 
     .ConicalNormalization "dB-isotrope" 
     .ConicalResolution "3.0" 
     .Cones "0", "180", "10" 
     .ConeAndFrontAxes "+y", "+z" 
     .CalculateNearFieldOnCylindricalSurfaces "false", "Coarse" 
     .CylinderGridCustomStep "1" 
     .CalculateNearFieldOnCircularCuts "false" 
     .CylinderBaseCenter "0", "0", "0" 
     .CylinderRadius "3" 
     .CylinderHeight "3" 
     .CylinderSpacing "1" 
     .CylinderResolution "2.0" 
     .CylinderAllPolarization "true" 
     .CylinderRadialAngularVerticalComponents "false" 
     .CylinderMagnitudeOfTangentialConponent "false" 
     .CylinderVm "true" 
     .CylinderDBVm "false" 
     .CylinderDBUVm "false" 
     .CylinderAndFrontAxes "+y", "+z" 
     .CalculateSMatrix "true" 
     .CalculateZMatrix "false" 
     .CalculateYMatrix "false" 
     .CalculateZInput "true" 
     .CalculateSWR "false" 
     .CalculateDB "true" 
     .WriteTouchstone "false" 
     .TwoPortDeviceIsLossless "false" 
     .TwoPortDeviceHasIdenticalPorts "false" 
     .TwoPortDeviceIsSymmetric "false" 
     .FrequencyMap "false" 
     .NormalizedSMatrix "false" 
     .NormalizingImpedance "0" 
     .CutoffFrequency "1" 
     .ApplyLinearPrediction "false" 
     .Windowing "None" 
     .InvertDBScale "false" 
     .CalculateMagnitudeAndPhase "true" 
     .AutoFreqStep "true", "1"
     .MultiplyConstantFactor "false", "1"
     .DivideBySignal "false", ""
     .CalculateDBRelativeTo "false", "Unit magnitude"
     .SetExcitationSignal "" 
     .SaveSettings
End With

'@ change solver type

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
ChangeSolverType "HF Time Domain"

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

'@ add parsweep parameter: Sequence 1:r

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddParameter_ArbitraryPoints "Sequence 1", "r", "0.26" 
End With

'@ add parsweep parameter: Sequence 1:s

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddParameter_ArbitraryPoints "Sequence 1", "s", "1.654" 
End With

'@ add parsweep sequence: Sequence 2

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddSequence "Sequence 2" 
End With

'@ add parsweep parameter: Sequence 2:r

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddParameter_ArbitraryPoints "Sequence 2", "r", "0.254" 
End With

'@ add parsweep parameter: Sequence 2:s

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddParameter_ArbitraryPoints "Sequence 2", "s", "1.677" 
End With

'@ add parsweep sequence: Sequence 3

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddSequence "Sequence 3" 
End With

'@ add parsweep parameter: Sequence 3:r

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddParameter_ArbitraryPoints "Sequence 3", "r", "0.245" 
End With

'@ add parsweep parameter: Sequence 3:s

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddParameter_ArbitraryPoints "Sequence 3", "s", "1.718" 
End With

'@ add parsweep sequence: Sequence 4

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddSequence "Sequence 4" 
End With

'@ add parsweep parameter: Sequence 4:r

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddParameter_ArbitraryPoints "Sequence 4", "r", "0.23" 
End With

'@ add parsweep parameter: Sequence 4:s

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddParameter_ArbitraryPoints "Sequence 4", "s", "1.771" 
End With

'@ add parsweep sequence: Sequence 5

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddSequence "Sequence 5" 
End With

'@ add parsweep parameter: Sequence 5:r

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddParameter_ArbitraryPoints "Sequence 5", "r", "0.208" 
End With

'@ add parsweep parameter: Sequence 5:s

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddParameter_ArbitraryPoints "Sequence 5", "s", "1.825" 
End With

'@ add parsweep sequence: Sequence 6

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddSequence "Sequence 6" 
End With

'@ add parsweep parameter: Sequence 6:r

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddParameter_ArbitraryPoints "Sequence 6", "r", "0.19" 
End With

'@ add parsweep sequence: Sequence 7

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddSequence "Sequence 7" 
End With

'@ add parsweep parameter: Sequence 6:s

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddParameter_ArbitraryPoints "Sequence 6", "s", "1.886" 
End With

'@ add parsweep parameter: Sequence 7:r

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddParameter_ArbitraryPoints "Sequence 7", "r", "0.173" 
End With

'@ add parsweep parameter: Sequence 7:s

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddParameter_ArbitraryPoints "Sequence 7", "s", "1.951" 
End With

'@ add parsweep sequence: Sequence 8

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddSequence "Sequence 8" 
End With

'@ add parsweep parameter: Sequence 8:r

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddParameter_ArbitraryPoints "Sequence 8", "r", "0.148" 
End With

'@ add parsweep parameter: Sequence 8:s

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddParameter_ArbitraryPoints "Sequence 8", "s", "2.027" 
End With

'@ add parsweep sequence: Sequence 9

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddSequence "Sequence 9" 
End With

'@ add parsweep parameter: Sequence 9:r

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddParameter_ArbitraryPoints "Sequence 9", "r", "0.129" 
End With

'@ add parsweep parameter: Sequence 9:s

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddParameter_ArbitraryPoints "Sequence 9", "s", "2.11" 
End With

'@ add parsweep sequence: Sequence 10

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddSequence "Sequence 10" 
End With

'@ add parsweep parameter: Sequence 10:s

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddParameter_ArbitraryPoints "Sequence 10", "s", "0.116" 
End With

'@ delete parsweep parameter: Sequence 10:s

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .DeleteParameter "Sequence 10", "s" 
End With

'@ add parsweep parameter: Sequence 10:r

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddParameter_ArbitraryPoints "Sequence 10", "r", "0.116" 
End With

'@ add parsweep parameter: Sequence 10:s

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .AddParameter_ArbitraryPoints "Sequence 10", "s", "2.199" 
End With

'@ boolean insert shapes: component1:space, component1:ring1

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Solid
     .Version 10
     .Insert "component1:space", "component1:ring1" 
     .Version 1
End With

'@ boolean insert shapes: component1:space, component1:substrate

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Solid
     .Version 10
     .Insert "component1:space", "component1:substrate" 
     .Version 1
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
     .ReferencePlaneDistance "-opendist" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Full" 
     .Orientation "zmin" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "-1.591549430919", "1.591549430919" 
     .Yrange "-1.6666666666667", "1.6666666666667" 
     .Zrange "-4.6666666666667", "-4.6666666666667" 
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
     .ReferencePlaneDistance "-opendist" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Full" 
     .Orientation "zmax" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "-1.591549430919", "1.591549430919" 
     .Yrange "-1.6666666666667", "1.6666666666667" 
     .Zrange "4.6666666666667", "4.6666666666667" 
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
     .MinimumDistanceType "Absolute" 
     .MinimumDistancePerWavelengthNewMeshEngine "opendist" 
     .MinimumDistanceReferenceFrequencyType "Center" 
     .FrequencyForMinimumDistance "12.5" 
     .SetAbsoluteDistance "opendist" 
End With

'@ define special time domain solver parameters

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
'STEADY STATE
With Solver
     .SteadyStateDurationType "Number of pulses"
     .NumberOfPulseWidths "200"
     .SteadyStateDurationTime "0.622222"
     .SteadyStateDurationTimeAsDistance "186.667"
End With
'GENERAL
With Solver
     .TimeStepStabilityFactor "1.0"
     .RestartAfterInstabilityAbort "True"
     .AutomaticTimeSignalSampling "True"
     .ConsiderExcitationForFreqSamplingRate "False"
     .UseBroadBandPhaseShift "False"
     .SetBroadBandPhaseShiftLowerBoundFac "0.1"
     .SetPortShieldingType "NONE"
     .FrequencySamples "10001"
     .FrequencyLogSamples "0"
     .ConsiderTwoPortReciprocity "True"
     .EnergyBalanceLimit "0.03"
     .TDRComputation "False"
     .TDRShift50Percent "False"
End With
'HEXAHEDRAL
With Solver
     .SetPMLType "CONVPML"
     .UseVariablePMLLayerSizeStandard "False"
     .KeepPMLDepthDuringMeshAdaptationWithVariablePMLLayerSize "False"
     .SetSubcycleState "Automatic"
     .NormalizeToReferenceSignal "False"
     .SetEnhancedPMLStabilization "Automatic"
     .SimplifiedPBAMethod "False"
     .SParaAdjustment "True"
     .PrepareFarfields "True"
     .MonitorFarFieldsNearToModel "False"
     .SetSubgridCycleState "Automatic"
End With
'MATERIAL
With Solver
     .SurfaceImpedanceOrder "10"
     .ActivatePowerLoss1DMonitor "True"
     .PowerLoss1DMonitorPerSolid "False"
     .Use3DFieldMonitorForPowerLoss1DMonitor "True"
     .UseFarFieldMonitorForPowerLoss1DMonitor "False"
     .UseExtraFreqForPowerLoss1DMonitor "False"
     .ResetPowerLoss1DMonitorExtraFreq
     .SetDispNonLinearMaterialMonitor "False"
     .SetTimePowerLossSIMaterialMonitor "False"
     .SetHFTDDispUpdateScheme "Standard"
End With
'AR-FILTER
With Solver
     .UseArfilter "False"
     .ArMaxEnergyDeviation "0.1"
     .ArPulseSkip "1"
End With
'WAVEGUIDE
With Solver
     .WaveguidePortGeneralized "False"
     .WaveguidePortROM "False"
     .DispEpsFullDeembedding "False"
     .SetSamplesFullDeembedding "20"
     .AbsorbUnconsideredModeFields "Automatic"
     .SetModeFreqFactor "0.5"
     .AdaptivePortMeshing "True"
     .AccuracyAdaptivePortMeshing "1"
     .PassesAdaptivePortMeshing "4"
End With
'HEXAHEDRAL TLM
With Solver
     .UseDataId ""
     .UseMeshType "2"
     .UseAbsorbingBoundary "True"
     .UseDoublePrecision "False"
     .ShowResultsInTree "True"
     .AllowMaterialOverlap "True"
     .ExcitePlanewaveNearModel "False"
     .SetGroundPlane "False"
     .GroundPlane "x", "0.0"
     .NumberOfLayers "5"
     .HealCheckAllObjects "False"
     .NormalizeToGaussian "True"
     .TimeSignalSamplingFactor "1"
End With
'TLM POSTPROCESSING
With Solver
     .ResetSettings
     .CalculateFullPatternForFarField "true", "Medium" 
     .CalculatePatternOnCuts "false" 
     .CalculatePatternOnConicalCuts "false" 
     .PhaseReferencePoint "0", "0", "0" 
     .CutsCoPolarAndCrossPolar "true" 
     .CutsThetaAndPhi "false" 
     .CutsAxialRatio "false" 
     .CutsDBs "true" 
     .CutsRelativeMagnitudeAndPhase "false" 
     .CutsAllPolarizations "false" 
     .CutsNormalization "dB-boresight" 
     .CutsResolution "1.0" 
     .CutsExtent "180" 
     .CutsSpacing "45" 
     .CutsPolarizationAndBoresightAxes "Auto", "Auto" 
     .ConicalThetaAndPhi "true" 
     .ConicalAxialRatio "false" 
     .ConicalAllPolarizations "false" 
     .ConicalDBs "true" 
     .ConicalRelativeMagnitudeAndPhase "false" 
     .ConicalNormalization "dB-isotrope" 
     .ConicalResolution "3.0" 
     .Cones "0", "180", "10" 
     .ConeAndFrontAxes "+y", "+z" 
     .CalculateNearFieldOnCylindricalSurfaces "false", "Coarse" 
     .CylinderGridCustomStep "1" 
     .CalculateNearFieldOnCircularCuts "false" 
     .CylinderBaseCenter "0", "0", "0" 
     .CylinderRadius "3" 
     .CylinderHeight "3" 
     .CylinderSpacing "1" 
     .CylinderResolution "2.0" 
     .CylinderAllPolarization "true" 
     .CylinderRadialAngularVerticalComponents "false" 
     .CylinderMagnitudeOfTangentialConponent "false" 
     .CylinderVm "true" 
     .CylinderDBVm "false" 
     .CylinderDBUVm "false" 
     .CylinderAndFrontAxes "+y", "+z" 
     .CalculateSMatrix "true" 
     .CalculateZMatrix "false" 
     .CalculateYMatrix "false" 
     .CalculateZInput "true" 
     .CalculateSWR "false" 
     .CalculateDB "true" 
     .WriteTouchstone "false" 
     .TwoPortDeviceIsLossless "false" 
     .TwoPortDeviceHasIdenticalPorts "false" 
     .TwoPortDeviceIsSymmetric "false" 
     .FrequencyMap "false" 
     .NormalizedSMatrix "false" 
     .NormalizingImpedance "0" 
     .CutoffFrequency "1" 
     .ApplyLinearPrediction "false" 
     .Windowing "None" 
     .InvertDBScale "false" 
     .CalculateMagnitudeAndPhase "true" 
     .AutoFreqStep "true", "1"
     .MultiplyConstantFactor "false", "1"
     .DivideBySignal "false", ""
     .CalculateDBRelativeTo "false", "Unit magnitude"
     .SetExcitationSignal "" 
     .SaveSettings
End With

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

'@ define special time domain solver parameters

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
'STEADY STATE
With Solver
     .SteadyStateDurationType "Number of pulses"
     .NumberOfPulseWidths "200"
     .SteadyStateDurationTime "0.622222"
     .SteadyStateDurationTimeAsDistance "186.667"
End With
'GENERAL
With Solver
     .TimeStepStabilityFactor "1.0"
     .RestartAfterInstabilityAbort "True"
     .AutomaticTimeSignalSampling "True"
     .ConsiderExcitationForFreqSamplingRate "False"
     .UseBroadBandPhaseShift "False"
     .SetBroadBandPhaseShiftLowerBoundFac "0.1"
     .SetPortShieldingType "NONE"
     .FrequencySamples "10001"
     .FrequencyLogSamples "0"
     .ConsiderTwoPortReciprocity "True"
     .EnergyBalanceLimit "0.03"
     .TDRComputation "False"
     .TDRShift50Percent "False"
End With
'HEXAHEDRAL
With Solver
     .SetPMLType "CONVPML"
     .UseVariablePMLLayerSizeStandard "False"
     .KeepPMLDepthDuringMeshAdaptationWithVariablePMLLayerSize "False"
     .SetSubcycleState "Automatic"
     .NormalizeToReferenceSignal "False"
     .SetEnhancedPMLStabilization "Automatic"
     .SimplifiedPBAMethod "False"
     .SParaAdjustment "True"
     .PrepareFarfields "True"
     .MonitorFarFieldsNearToModel "False"
     .SetSubgridCycleState "Automatic"
End With
'MATERIAL
With Solver
     .SurfaceImpedanceOrder "10"
     .ActivatePowerLoss1DMonitor "True"
     .PowerLoss1DMonitorPerSolid "False"
     .Use3DFieldMonitorForPowerLoss1DMonitor "True"
     .UseFarFieldMonitorForPowerLoss1DMonitor "False"
     .UseExtraFreqForPowerLoss1DMonitor "False"
     .ResetPowerLoss1DMonitorExtraFreq
     .SetDispNonLinearMaterialMonitor "False"
     .SetTimePowerLossSIMaterialMonitor "False"
     .SetHFTDDispUpdateScheme "Standard"
End With
'AR-FILTER
With Solver
     .UseArfilter "False"
     .ArMaxEnergyDeviation "0.1"
     .ArPulseSkip "1"
End With
'WAVEGUIDE
With Solver
     .WaveguidePortGeneralized "False"
     .WaveguidePortROM "False"
     .DispEpsFullDeembedding "False"
     .SetSamplesFullDeembedding "20"
     .AbsorbUnconsideredModeFields "Automatic"
     .SetModeFreqFactor "0.5"
     .AdaptivePortMeshing "True"
     .AccuracyAdaptivePortMeshing "1"
     .PassesAdaptivePortMeshing "4"
End With
'HEXAHEDRAL TLM
With Solver
     .UseDataId ""
     .UseMeshType "2"
     .UseAbsorbingBoundary "True"
     .UseDoublePrecision "False"
     .ShowResultsInTree "True"
     .AllowMaterialOverlap "True"
     .ExcitePlanewaveNearModel "False"
     .SetGroundPlane "False"
     .GroundPlane "x", "0.0"
     .NumberOfLayers "5"
     .HealCheckAllObjects "False"
     .NormalizeToGaussian "True"
     .TimeSignalSamplingFactor "1"
End With
'TLM POSTPROCESSING
With Solver
     .ResetSettings
     .CalculateFullPatternForFarField "true", "Medium" 
     .CalculatePatternOnCuts "false" 
     .CalculatePatternOnConicalCuts "false" 
     .PhaseReferencePoint "0", "0", "0" 
     .CutsCoPolarAndCrossPolar "true" 
     .CutsThetaAndPhi "false" 
     .CutsAxialRatio "false" 
     .CutsDBs "true" 
     .CutsRelativeMagnitudeAndPhase "false" 
     .CutsAllPolarizations "false" 
     .CutsNormalization "dB-boresight" 
     .CutsResolution "1.0" 
     .CutsExtent "180" 
     .CutsSpacing "45" 
     .CutsPolarizationAndBoresightAxes "Auto", "Auto" 
     .ConicalThetaAndPhi "true" 
     .ConicalAxialRatio "false" 
     .ConicalAllPolarizations "false" 
     .ConicalDBs "true" 
     .ConicalRelativeMagnitudeAndPhase "false" 
     .ConicalNormalization "dB-isotrope" 
     .ConicalResolution "3.0" 
     .Cones "0", "180", "10" 
     .ConeAndFrontAxes "+y", "+z" 
     .CalculateNearFieldOnCylindricalSurfaces "false", "Coarse" 
     .CylinderGridCustomStep "1" 
     .CalculateNearFieldOnCircularCuts "false" 
     .CylinderBaseCenter "0", "0", "0" 
     .CylinderRadius "3" 
     .CylinderHeight "3" 
     .CylinderSpacing "1" 
     .CylinderResolution "2.0" 
     .CylinderAllPolarization "true" 
     .CylinderRadialAngularVerticalComponents "false" 
     .CylinderMagnitudeOfTangentialConponent "false" 
     .CylinderVm "true" 
     .CylinderDBVm "false" 
     .CylinderDBUVm "false" 
     .CylinderAndFrontAxes "+y", "+z" 
     .CalculateSMatrix "true" 
     .CalculateZMatrix "false" 
     .CalculateYMatrix "false" 
     .CalculateZInput "true" 
     .CalculateSWR "false" 
     .CalculateDB "true" 
     .WriteTouchstone "false" 
     .TwoPortDeviceIsLossless "false" 
     .TwoPortDeviceHasIdenticalPorts "false" 
     .TwoPortDeviceIsSymmetric "false" 
     .FrequencyMap "false" 
     .NormalizedSMatrix "false" 
     .NormalizingImpedance "0" 
     .CutoffFrequency "1" 
     .ApplyLinearPrediction "false" 
     .Windowing "None" 
     .InvertDBScale "false" 
     .CalculateMagnitudeAndPhase "true" 
     .AutoFreqStep "true", "1"
     .MultiplyConstantFactor "false", "1"
     .DivideBySignal "false", ""
     .CalculateDBRelativeTo "false", "Unit magnitude"
     .SetExcitationSignal "" 
     .SaveSettings
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

'@ set mesh properties (Hexahedral)

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Mesh 
     .MeshType "PBA" 
     .SetCreator "High Frequency"
End With 
With MeshSettings 
     .SetMeshType "Hex" 
     .Set "Version", 1%
     'MAX CELL - WAVELENGTH REFINEMENT 
     .Set "StepsPerWaveNear", "30" 
     .Set "StepsPerWaveFar", "30" 
     .Set "WavelengthRefinementSameAsNear", "1" 
     'MAX CELL - GEOMETRY REFINEMENT 
     .Set "StepsPerBoxNear", "30" 
     .Set "StepsPerBoxFar", "1" 
     .Set "MaxStepNear", "0" 
     .Set "MaxStepFar", "0" 
     .Set "ModelBoxDescrNear", "maxedge" 
     .Set "ModelBoxDescrFar", "maxedge" 
     .Set "UseMaxStepAbsolute", "0" 
     .Set "GeometryRefinementSameAsNear", "0" 
     'MIN CELL 
     .Set "UseRatioLimitGeometry", "1" 
     .Set "RatioLimitGeometry", "15" 
     .Set "MinStepGeometryX", "0" 
     .Set "MinStepGeometryY", "0" 
     .Set "MinStepGeometryZ", "0" 
     .Set "UseSameMinStepGeometryXYZ", "1" 
End With 
With MeshSettings 
     .Set "PlaneMergeVersion", "2" 
End With 
With MeshSettings 
     .SetMeshType "Hex" 
     .Set "FaceRefinementOn", "0" 
     .Set "FaceRefinementPolicy", "2" 
     .Set "FaceRefinementRatio", "2" 
     .Set "FaceRefinementStep", "0" 
     .Set "FaceRefinementNSteps", "2" 
     .Set "EllipseRefinementOn", "0" 
     .Set "EllipseRefinementPolicy", "2" 
     .Set "EllipseRefinementRatio", "2" 
     .Set "EllipseRefinementStep", "0" 
     .Set "EllipseRefinementNSteps", "2" 
     .Set "FaceRefinementBufferLines", "3" 
     .Set "EdgeRefinementOn", "1" 
     .Set "EdgeRefinementPolicy", "1" 
     .Set "EdgeRefinementRatio", "2" 
     .Set "EdgeRefinementStep", "0" 
     .Set "EdgeRefinementBufferLines", "3" 
     .Set "RefineEdgeMaterialGlobal", "0" 
     .Set "RefineAxialEdgeGlobal", "0" 
     .Set "BufferLinesNear", "3" 
     .Set "UseDielectrics", "1" 
     .Set "EquilibrateOn", "0" 
     .Set "Equilibrate", "1.5" 
     .Set "IgnoreThinPanelMaterial", "0" 
End With 
With MeshSettings 
     .SetMeshType "Hex" 
     .Set "SnapToAxialEdges", "1"
     .Set "SnapToPlanes", "1"
     .Set "SnapToSpheres", "1"
     .Set "SnapToEllipses", "1"
     .Set "SnapToCylinders", "1"
     .Set "SnapToCylinderCenters", "1"
     .Set "SnapToEllipseCenters", "1"
End With 
With Discretizer 
     .MeshType "PBA" 
     .PBAType "Fast PBA" 
     .AutomaticPBAType "True" 
     .FPBAAccuracyEnhancement "enable"
     .ConnectivityCheck "False"
     .ConvertGeometryDataAfterMeshing "True" 
     .UsePecEdgeModel "True" 
     .GapDetection "False" 
     .FPBAGapTolerance "1e-3" 
     .PointAccEnhancement "0" 
     .UseSplitComponents "True" 
     .EnableSubgridding "False" 
     .PBAFillLimit "99" 
     .AlwaysExcludePec "False" 
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

'@ define special time domain solver parameters

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
'STEADY STATE
With Solver
     .SteadyStateDurationType "Number of pulses"
     .NumberOfPulseWidths "200"
     .SteadyStateDurationTime "0.622222"
     .SteadyStateDurationTimeAsDistance "186.667"
End With
'GENERAL
With Solver
     .TimeStepStabilityFactor "1.0"
     .RestartAfterInstabilityAbort "True"
     .AutomaticTimeSignalSampling "True"
     .ConsiderExcitationForFreqSamplingRate "False"
     .UseBroadBandPhaseShift "False"
     .SetBroadBandPhaseShiftLowerBoundFac "0.1"
     .SetPortShieldingType "NONE"
     .FrequencySamples "10001"
     .FrequencyLogSamples "0"
     .ConsiderTwoPortReciprocity "True"
     .EnergyBalanceLimit "0.03"
     .TDRComputation "False"
     .TDRShift50Percent "False"
End With
'HEXAHEDRAL
With Solver
     .SetPMLType "CONVPML"
     .UseVariablePMLLayerSizeStandard "False"
     .KeepPMLDepthDuringMeshAdaptationWithVariablePMLLayerSize "False"
     .SetSubcycleState "Automatic"
     .NormalizeToReferenceSignal "False"
     .SetEnhancedPMLStabilization "Automatic"
     .SimplifiedPBAMethod "False"
     .SParaAdjustment "True"
     .PrepareFarfields "True"
     .MonitorFarFieldsNearToModel "False"
     .SetSubgridCycleState "Automatic"
End With
'MATERIAL
With Solver
     .SurfaceImpedanceOrder "10"
     .ActivatePowerLoss1DMonitor "True"
     .PowerLoss1DMonitorPerSolid "False"
     .Use3DFieldMonitorForPowerLoss1DMonitor "True"
     .UseFarFieldMonitorForPowerLoss1DMonitor "False"
     .UseExtraFreqForPowerLoss1DMonitor "False"
     .ResetPowerLoss1DMonitorExtraFreq
     .SetDispNonLinearMaterialMonitor "False"
     .SetTimePowerLossSIMaterialMonitor "False"
     .SetHFTDDispUpdateScheme "Standard"
End With
'AR-FILTER
With Solver
     .UseArfilter "False"
     .ArMaxEnergyDeviation "0.1"
     .ArPulseSkip "1"
End With
'WAVEGUIDE
With Solver
     .WaveguidePortGeneralized "False"
     .WaveguidePortROM "False"
     .DispEpsFullDeembedding "False"
     .SetSamplesFullDeembedding "20"
     .AbsorbUnconsideredModeFields "Automatic"
     .SetModeFreqFactor "0.5"
     .AdaptivePortMeshing "True"
     .AccuracyAdaptivePortMeshing "1"
     .PassesAdaptivePortMeshing "4"
End With
'HEXAHEDRAL TLM
With Solver
     .UseDataId ""
     .UseMeshType "2"
     .UseAbsorbingBoundary "True"
     .UseDoublePrecision "False"
     .ShowResultsInTree "True"
     .AllowMaterialOverlap "True"
     .ExcitePlanewaveNearModel "False"
     .SetGroundPlane "False"
     .GroundPlane "x", "0.0"
     .NumberOfLayers "5"
     .HealCheckAllObjects "False"
     .NormalizeToGaussian "True"
     .TimeSignalSamplingFactor "1"
End With
'TLM POSTPROCESSING
With Solver
     .ResetSettings
     .CalculateFullPatternForFarField "true", "Medium" 
     .CalculatePatternOnCuts "false" 
     .CalculatePatternOnConicalCuts "false" 
     .PhaseReferencePoint "0", "0", "0" 
     .CutsCoPolarAndCrossPolar "true" 
     .CutsThetaAndPhi "false" 
     .CutsAxialRatio "false" 
     .CutsDBs "true" 
     .CutsRelativeMagnitudeAndPhase "false" 
     .CutsAllPolarizations "false" 
     .CutsNormalization "dB-boresight" 
     .CutsResolution "1.0" 
     .CutsExtent "180" 
     .CutsSpacing "45" 
     .CutsPolarizationAndBoresightAxes "Auto", "Auto" 
     .ConicalThetaAndPhi "true" 
     .ConicalAxialRatio "false" 
     .ConicalAllPolarizations "false" 
     .ConicalDBs "true" 
     .ConicalRelativeMagnitudeAndPhase "false" 
     .ConicalNormalization "dB-isotrope" 
     .ConicalResolution "3.0" 
     .Cones "0", "180", "10" 
     .ConeAndFrontAxes "+y", "+z" 
     .CalculateNearFieldOnCylindricalSurfaces "false", "Coarse" 
     .CylinderGridCustomStep "1" 
     .CalculateNearFieldOnCircularCuts "false" 
     .CylinderBaseCenter "0", "0", "0" 
     .CylinderRadius "3" 
     .CylinderHeight "3" 
     .CylinderSpacing "1" 
     .CylinderResolution "2.0" 
     .CylinderAllPolarization "true" 
     .CylinderRadialAngularVerticalComponents "false" 
     .CylinderMagnitudeOfTangentialConponent "false" 
     .CylinderVm "true" 
     .CylinderDBVm "false" 
     .CylinderDBUVm "false" 
     .CylinderAndFrontAxes "+y", "+z" 
     .CalculateSMatrix "true" 
     .CalculateZMatrix "false" 
     .CalculateYMatrix "false" 
     .CalculateZInput "true" 
     .CalculateSWR "false" 
     .CalculateDB "true" 
     .WriteTouchstone "false" 
     .TwoPortDeviceIsLossless "false" 
     .TwoPortDeviceHasIdenticalPorts "false" 
     .TwoPortDeviceIsSymmetric "false" 
     .FrequencyMap "false" 
     .NormalizedSMatrix "false" 
     .NormalizingImpedance "0" 
     .CutoffFrequency "1" 
     .ApplyLinearPrediction "false" 
     .Windowing "None" 
     .InvertDBScale "false" 
     .CalculateMagnitudeAndPhase "true" 
     .AutoFreqStep "true", "1"
     .MultiplyConstantFactor "false", "1"
     .DivideBySignal "false", ""
     .CalculateDBRelativeTo "false", "Unit magnitude"
     .SetExcitationSignal "" 
     .SaveSettings
End With

'@ edit parsweep parameter: Sequence 4:r

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With ParameterSweep
     .DeleteParameter "Sequence 4", "r" 
     .AddParameter_ArbitraryPoints "Sequence 4", "r", "0.23" 
End With

'@ define special time domain solver parameters

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
'STEADY STATE
With Solver
     .SteadyStateDurationType "Number of pulses"
     .NumberOfPulseWidths "300"
     .SteadyStateDurationTime "0.622222"
     .SteadyStateDurationTimeAsDistance "186.667"
End With

'GENERAL
With Solver
     .TimeStepStabilityFactor "1.0"
     .RestartAfterInstabilityAbort "True"
     .AutomaticTimeSignalSampling "True"
     .ConsiderExcitationForFreqSamplingRate "False"
     .UseBroadBandPhaseShift "False"
     .SetBroadBandPhaseShiftLowerBoundFac "0.1"
     .SetPortShieldingType "NONE"
     .FrequencySamples "10001"
     .FrequencyLogSamples "0"
     .ConsiderTwoPortReciprocity "True"
     .EnergyBalanceLimit "0.03"
     .TDRComputation "False"
     .TDRShift50Percent "False"
End With

'HEXAHEDRAL
With Solver
     .SetPMLType "CONVPML"
     .UseVariablePMLLayerSizeStandard "False"
     .KeepPMLDepthDuringMeshAdaptationWithVariablePMLLayerSize "False"
     .SetSubcycleState "Automatic"
     .NormalizeToReferenceSignal "False"
     .SetEnhancedPMLStabilization "Automatic"
     .SimplifiedPBAMethod "False"
     .SParaAdjustment "True"
     .PrepareFarfields "True"
     .MonitorFarFieldsNearToModel "False"
     .SetSubgridCycleState "Automatic"
End With

'MATERIAL
With Solver
     .SurfaceImpedanceOrder "10"
     .ActivatePowerLoss1DMonitor "True"
     .PowerLoss1DMonitorPerSolid "False"
     .Use3DFieldMonitorForPowerLoss1DMonitor "True"
     .UseFarFieldMonitorForPowerLoss1DMonitor "False"
     .UseExtraFreqForPowerLoss1DMonitor "False"
     .ResetPowerLoss1DMonitorExtraFreq
     .SetDispNonLinearMaterialMonitor "False"
     .SetTimePowerLossSIMaterialMonitor "False"
     .SetHFTDDispUpdateScheme "Standard"
End With

'AR-FILTER
With Solver
     .UseArfilter "False"
     .ArMaxEnergyDeviation "0.1"
     .ArPulseSkip "1"
End With

'WAVEGUIDE
With Solver
     .WaveguidePortGeneralized "False"
     .WaveguidePortROM "False"
     .DispEpsFullDeembedding "False"
     .SetSamplesFullDeembedding "20"
     .AbsorbUnconsideredModeFields "Automatic"
     .SetModeFreqFactor "0.5"
     .AdaptivePortMeshing "True"
     .AccuracyAdaptivePortMeshing "1"
     .PassesAdaptivePortMeshing "4"
End With

'HEXAHEDRAL TLM
With Solver
     .UseDataId ""
     .UseMeshType "2"
     .UseAbsorbingBoundary "True"
     .UseDoublePrecision "False"
     .ShowResultsInTree "True"
     .AllowMaterialOverlap "True"
     .ExcitePlanewaveNearModel "False"
     .SetGroundPlane "False"
     .GroundPlane "x", "0.0"
     .NumberOfLayers "5"
     .HealCheckAllObjects "False"
     .NormalizeToGaussian "True"
     .TimeSignalSamplingFactor "1"
End With

'TLM POSTPROCESSING
With Solver
     .ResetSettings
     .CalculateFullPatternForFarField "true", "Medium" 
     .CalculatePatternOnCuts "false" 
     .CalculatePatternOnConicalCuts "false" 
     .PhaseReferencePoint "0", "0", "0" 
     .CutsCoPolarAndCrossPolar "true" 
     .CutsThetaAndPhi "false" 
     .CutsAxialRatio "false" 
     .CutsDBs "true" 
     .CutsRelativeMagnitudeAndPhase "false" 
     .CutsAllPolarizations "false" 
     .CutsNormalization "dB-boresight" 
     .CutsResolution "1.0" 
     .CutsExtent "180" 
     .CutsSpacing "45" 
     .CutsPolarizationAndBoresightAxes "Auto", "Auto" 
     .ConicalThetaAndPhi "true" 
     .ConicalAxialRatio "false" 
     .ConicalAllPolarizations "false" 
     .ConicalDBs "true" 
     .ConicalRelativeMagnitudeAndPhase "false" 
     .ConicalNormalization "dB-isotrope" 
     .ConicalResolution "3.0" 
     .Cones "0", "180", "10" 
     .ConeAndFrontAxes "+y", "+z" 
     .CalculateNearFieldOnCylindricalSurfaces "false", "Coarse" 
     .CylinderGridCustomStep "1" 
     .CalculateNearFieldOnCircularCuts "false" 
     .CylinderBaseCenter "0", "0", "0" 
     .CylinderRadius "3" 
     .CylinderHeight "3" 
     .CylinderSpacing "1" 
     .CylinderResolution "2.0" 
     .CylinderAllPolarization "true" 
     .CylinderRadialAngularVerticalComponents "false" 
     .CylinderMagnitudeOfTangentialConponent "false" 
     .CylinderVm "true" 
     .CylinderDBVm "false" 
     .CylinderDBUVm "false" 
     .CylinderAndFrontAxes "+y", "+z" 
     .CalculateSMatrix "true" 
     .CalculateZMatrix "false" 
     .CalculateYMatrix "false" 
     .CalculateZInput "true" 
     .CalculateSWR "false" 
     .CalculateDB "true" 
     .WriteTouchstone "false" 
     .TwoPortDeviceIsLossless "false" 
     .TwoPortDeviceHasIdenticalPorts "false" 
     .TwoPortDeviceIsSymmetric "false" 
     .FrequencyMap "false" 
     .NormalizedSMatrix "false" 
     .NormalizingImpedance "0" 
     .CutoffFrequency "1" 
     .ApplyLinearPrediction "false" 
     .Windowing "None" 
     .InvertDBScale "false" 
     .CalculateMagnitudeAndPhase "true" 
     .AutoFreqStep "true", "1"
     .MultiplyConstantFactor "false", "1"
     .DivideBySignal "false", ""
     .CalculateDBRelativeTo "false", "Unit magnitude"
     .SetExcitationSignal "" 
     .SaveSettings
End With



'@ define frequency range

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
Solver.FrequencyRange "0", "25" 


'@ define pml specials

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Boundary
     .ReflectionLevel "0.0001" 
     .MinimumDistanceType "Absolute" 
     .MinimumDistancePerWavelengthNewMeshEngine "opendist" 
     .MinimumDistanceReferenceFrequencyType "Center" 
     .FrequencyForMinimumDistance "12.5" 
     .SetAbsoluteDistance "opendist" 
End With


'@ define boundaries

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
With Boundary
     .Xmin "electric"
     .Xmax "electric"
     .Ymin "magnetic"
     .Ymax "open"
     .Zmin "expanded open"
     .Zmax "expanded open"
     .Xsymmetry "none"
     .Ysymmetry "none"
     .Zsymmetry "none"
     .ApplyInAllDirections "False"
End With


'@ define special time domain solver parameters

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
'STEADY STATE
With Solver
     .SteadyStateDurationType "Number of pulses"
     .NumberOfPulseWidths "200"
     .SteadyStateDurationTime "0.622222"
     .SteadyStateDurationTimeAsDistance "186.667"
End With

'GENERAL
With Solver
     .TimeStepStabilityFactor "1.0"
     .RestartAfterInstabilityAbort "True"
     .AutomaticTimeSignalSampling "True"
     .ConsiderExcitationForFreqSamplingRate "False"
     .UseBroadBandPhaseShift "False"
     .SetBroadBandPhaseShiftLowerBoundFac "0.1"
     .SetPortShieldingType "NONE"
     .FrequencySamples "10001"
     .FrequencyLogSamples "0"
     .ConsiderTwoPortReciprocity "True"
     .EnergyBalanceLimit "0.03"
     .TDRComputation "False"
     .TDRShift50Percent "False"
End With

'HEXAHEDRAL
With Solver
     .SetPMLType "CONVPML"
     .UseVariablePMLLayerSizeStandard "False"
     .KeepPMLDepthDuringMeshAdaptationWithVariablePMLLayerSize "False"
     .SetSubcycleState "Automatic"
     .NormalizeToReferenceSignal "False"
     .SetEnhancedPMLStabilization "Automatic"
     .SimplifiedPBAMethod "False"
     .SParaAdjustment "True"
     .PrepareFarfields "True"
     .MonitorFarFieldsNearToModel "False"
     .SetSubgridCycleState "Automatic"
End With

'MATERIAL
With Solver
     .SurfaceImpedanceOrder "10"
     .ActivatePowerLoss1DMonitor "True"
     .PowerLoss1DMonitorPerSolid "False"
     .Use3DFieldMonitorForPowerLoss1DMonitor "True"
     .UseFarFieldMonitorForPowerLoss1DMonitor "False"
     .UseExtraFreqForPowerLoss1DMonitor "False"
     .ResetPowerLoss1DMonitorExtraFreq
     .SetDispNonLinearMaterialMonitor "False"
     .SetTimePowerLossSIMaterialMonitor "False"
     .SetHFTDDispUpdateScheme "Standard"
End With

'AR-FILTER
With Solver
     .UseArfilter "False"
     .ArMaxEnergyDeviation "0.1"
     .ArPulseSkip "1"
End With

'WAVEGUIDE
With Solver
     .WaveguidePortGeneralized "False"
     .WaveguidePortROM "False"
     .DispEpsFullDeembedding "False"
     .SetSamplesFullDeembedding "20"
     .AbsorbUnconsideredModeFields "Automatic"
     .SetModeFreqFactor "0.5"
     .AdaptivePortMeshing "True"
     .AccuracyAdaptivePortMeshing "1"
     .PassesAdaptivePortMeshing "4"
End With

'HEXAHEDRAL TLM
With Solver
     .UseDataId ""
     .UseMeshType "2"
     .UseAbsorbingBoundary "True"
     .UseDoublePrecision "False"
     .ShowResultsInTree "True"
     .AllowMaterialOverlap "True"
     .ExcitePlanewaveNearModel "False"
     .SetGroundPlane "False"
     .GroundPlane "x", "0.0"
     .NumberOfLayers "5"
     .HealCheckAllObjects "False"
     .NormalizeToGaussian "True"
     .TimeSignalSamplingFactor "1"
End With

'TLM POSTPROCESSING
With Solver
     .ResetSettings
     .CalculateFullPatternForFarField "true", "Medium" 
     .CalculatePatternOnCuts "false" 
     .CalculatePatternOnConicalCuts "false" 
     .PhaseReferencePoint "0", "0", "0" 
     .CutsCoPolarAndCrossPolar "true" 
     .CutsThetaAndPhi "false" 
     .CutsAxialRatio "false" 
     .CutsDBs "true" 
     .CutsRelativeMagnitudeAndPhase "false" 
     .CutsAllPolarizations "false" 
     .CutsNormalization "dB-boresight" 
     .CutsResolution "1.0" 
     .CutsExtent "180" 
     .CutsSpacing "45" 
     .CutsPolarizationAndBoresightAxes "Auto", "Auto" 
     .ConicalThetaAndPhi "true" 
     .ConicalAxialRatio "false" 
     .ConicalAllPolarizations "false" 
     .ConicalDBs "true" 
     .ConicalRelativeMagnitudeAndPhase "false" 
     .ConicalNormalization "dB-isotrope" 
     .ConicalResolution "3.0" 
     .Cones "0", "180", "10" 
     .ConeAndFrontAxes "+y", "+z" 
     .CalculateNearFieldOnCylindricalSurfaces "false", "Coarse" 
     .CylinderGridCustomStep "1" 
     .CalculateNearFieldOnCircularCuts "false" 
     .CylinderBaseCenter "0", "0", "0" 
     .CylinderRadius "3" 
     .CylinderHeight "3" 
     .CylinderSpacing "1" 
     .CylinderResolution "2.0" 
     .CylinderAllPolarization "true" 
     .CylinderRadialAngularVerticalComponents "false" 
     .CylinderMagnitudeOfTangentialConponent "false" 
     .CylinderVm "true" 
     .CylinderDBVm "false" 
     .CylinderDBUVm "false" 
     .CylinderAndFrontAxes "+y", "+z" 
     .CalculateSMatrix "true" 
     .CalculateZMatrix "false" 
     .CalculateYMatrix "false" 
     .CalculateZInput "true" 
     .CalculateSWR "false" 
     .CalculateDB "true" 
     .WriteTouchstone "false" 
     .TwoPortDeviceIsLossless "false" 
     .TwoPortDeviceHasIdenticalPorts "false" 
     .TwoPortDeviceIsSymmetric "false" 
     .FrequencyMap "false" 
     .NormalizedSMatrix "false" 
     .NormalizingImpedance "0" 
     .CutoffFrequency "1" 
     .ApplyLinearPrediction "false" 
     .Windowing "None" 
     .InvertDBScale "false" 
     .CalculateMagnitudeAndPhase "true" 
     .AutoFreqStep "true", "1"
     .MultiplyConstantFactor "false", "1"
     .DivideBySignal "false", ""
     .CalculateDBRelativeTo "false", "Unit magnitude"
     .SetExcitationSignal "" 
     .SaveSettings
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


'@ change solver type

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
ChangeSolverType "HF Time Domain" 


'@ define special time domain solver parameters

'[VERSION]2016.7|25.0.2|20161111[/VERSION]
'STEADY STATE
With Solver
     .SteadyStateDurationType "Number of pulses"
     .NumberOfPulseWidths "200"
     .SteadyStateDurationTime "0.622222"
     .SteadyStateDurationTimeAsDistance "186.667"
End With

'GENERAL
With Solver
     .TimeStepStabilityFactor "1.0"
     .RestartAfterInstabilityAbort "True"
     .AutomaticTimeSignalSampling "True"
     .ConsiderExcitationForFreqSamplingRate "False"
     .UseBroadBandPhaseShift "False"
     .SetBroadBandPhaseShiftLowerBoundFac "0.1"
     .SetPortShieldingType "NONE"
     .FrequencySamples "10001"
     .FrequencyLogSamples "0"
     .ConsiderTwoPortReciprocity "True"
     .EnergyBalanceLimit "0.03"
     .TDRComputation "False"
     .TDRShift50Percent "False"
End With

'HEXAHEDRAL
With Solver
     .SetPMLType "CONVPML"
     .UseVariablePMLLayerSizeStandard "False"
     .KeepPMLDepthDuringMeshAdaptationWithVariablePMLLayerSize "False"
     .SetSubcycleState "Automatic"
     .NormalizeToReferenceSignal "False"
     .SetEnhancedPMLStabilization "Automatic"
     .SimplifiedPBAMethod "False"
     .SParaAdjustment "True"
     .PrepareFarfields "True"
     .MonitorFarFieldsNearToModel "False"
     .SetSubgridCycleState "Automatic"
End With

'MATERIAL
With Solver
     .SurfaceImpedanceOrder "10"
     .ActivatePowerLoss1DMonitor "True"
     .PowerLoss1DMonitorPerSolid "False"
     .Use3DFieldMonitorForPowerLoss1DMonitor "True"
     .UseFarFieldMonitorForPowerLoss1DMonitor "False"
     .UseExtraFreqForPowerLoss1DMonitor "False"
     .ResetPowerLoss1DMonitorExtraFreq
     .SetDispNonLinearMaterialMonitor "False"
     .SetTimePowerLossSIMaterialMonitor "False"
     .SetHFTDDispUpdateScheme "Standard"
End With

'AR-FILTER
With Solver
     .UseArfilter "False"
     .ArMaxEnergyDeviation "0.1"
     .ArPulseSkip "1"
End With

'WAVEGUIDE
With Solver
     .WaveguidePortGeneralized "False"
     .WaveguidePortROM "False"
     .DispEpsFullDeembedding "False"
     .SetSamplesFullDeembedding "20"
     .AbsorbUnconsideredModeFields "Automatic"
     .SetModeFreqFactor "0.5"
     .AdaptivePortMeshing "True"
     .AccuracyAdaptivePortMeshing "1"
     .PassesAdaptivePortMeshing "4"
End With

'HEXAHEDRAL TLM
With Solver
     .UseDataId ""
     .UseMeshType "2"
     .UseAbsorbingBoundary "True"
     .UseDoublePrecision "False"
     .ShowResultsInTree "True"
     .AllowMaterialOverlap "True"
     .ExcitePlanewaveNearModel "False"
     .SetGroundPlane "False"
     .GroundPlane "x", "0.0"
     .NumberOfLayers "5"
     .HealCheckAllObjects "False"
     .NormalizeToGaussian "True"
     .TimeSignalSamplingFactor "1"
End With

'TLM POSTPROCESSING
With Solver
     .ResetSettings
     .CalculateFullPatternForFarField "true", "Medium" 
     .CalculatePatternOnCuts "false" 
     .CalculatePatternOnConicalCuts "false" 
     .PhaseReferencePoint "0", "0", "0" 
     .CutsCoPolarAndCrossPolar "true" 
     .CutsThetaAndPhi "false" 
     .CutsAxialRatio "false" 
     .CutsDBs "true" 
     .CutsRelativeMagnitudeAndPhase "false" 
     .CutsAllPolarizations "false" 
     .CutsNormalization "dB-boresight" 
     .CutsResolution "1.0" 
     .CutsExtent "180" 
     .CutsSpacing "45" 
     .CutsPolarizationAndBoresightAxes "Auto", "Auto" 
     .ConicalThetaAndPhi "true" 
     .ConicalAxialRatio "false" 
     .ConicalAllPolarizations "false" 
     .ConicalDBs "true" 
     .ConicalRelativeMagnitudeAndPhase "false" 
     .ConicalNormalization "dB-isotrope" 
     .ConicalResolution "3.0" 
     .Cones "0", "180", "10" 
     .ConeAndFrontAxes "+y", "+z" 
     .CalculateNearFieldOnCylindricalSurfaces "false", "Coarse" 
     .CylinderGridCustomStep "1" 
     .CalculateNearFieldOnCircularCuts "false" 
     .CylinderBaseCenter "0", "0", "0" 
     .CylinderRadius "3" 
     .CylinderHeight "3" 
     .CylinderSpacing "1" 
     .CylinderResolution "2.0" 
     .CylinderAllPolarization "true" 
     .CylinderRadialAngularVerticalComponents "false" 
     .CylinderMagnitudeOfTangentialConponent "false" 
     .CylinderVm "true" 
     .CylinderDBVm "false" 
     .CylinderDBUVm "false" 
     .CylinderAndFrontAxes "+y", "+z" 
     .CalculateSMatrix "true" 
     .CalculateZMatrix "false" 
     .CalculateYMatrix "false" 
     .CalculateZInput "true" 
     .CalculateSWR "false" 
     .CalculateDB "true" 
     .WriteTouchstone "false" 
     .TwoPortDeviceIsLossless "false" 
     .TwoPortDeviceHasIdenticalPorts "false" 
     .TwoPortDeviceIsSymmetric "false" 
     .FrequencyMap "false" 
     .NormalizedSMatrix "false" 
     .NormalizingImpedance "0" 
     .CutoffFrequency "1" 
     .ApplyLinearPrediction "false" 
     .Windowing "None" 
     .InvertDBScale "false" 
     .CalculateMagnitudeAndPhase "true" 
     .AutoFreqStep "true", "1"
     .MultiplyConstantFactor "false", "1"
     .DivideBySignal "false", ""
     .CalculateDBRelativeTo "false", "Unit magnitude"
     .SetExcitationSignal "" 
     .SaveSettings
End With



