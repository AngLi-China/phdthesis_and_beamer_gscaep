#!MC 1410

$!MACROFUNCTION NAME = "GetXXYY"
# xx = a1 * x + a2
$!VarSet |xx| = |x|
$!VarSet |xx| *= |a1|
$!VarSet |xx| += |a2|
# yy = b1 * y + b2
$!VarSet |yy| = |y|
$!VarSet |yy| *= |b1|
$!VarSet |yy| += |b2|
$!ENDMACROFUNCTION

$!VarSet |xmin| = 1
$!VarSet |xmax| = 7
$!VarSet |ymin| = 1E-13
$!VarSet |ymax| = 1E-2
$!VarSet |width| = 9
$!VarSet |height| = 6
$!VarSet |left| = 11
$!VarSet |right| = 3
$!VarSet |top| = 2
$!VarSet |bottom| = 10
$!VarSet |x| = 45
$!VarSet |y| = 35

$!VarSet |rright| = 100
$!VarSet |rright| -=|right|
$!VarSet |ttop| = 100
$!VarSet |ttop| -= |top|

# xx = a1 * x + a2
$!VarSet |a1| = 100
$!VarSet |a1| -= |left|
$!VarSet |a1| -= |right|
$!VarSet |temp| = |xmax|
$!VarSet |temp| -= |xmin|
$!VarSet |a1| /= |temp|
$!VarSet |temp| = |xmin|
$!VarSet |temp| *= |a1|
$!VarSet |a2| = |left|
$!VarSet |a2| -= |temp|

# yy = b1 * y + b2
$!VarSet |b1| = 100
$!VarSet |b1| -= |bottom|
$!VarSet |b1| -= |top|
$!VarSet |temp| = |ymax|
$!VarSet |temp| -= |ymin|
$!VarSet |b1| /= |temp|
$!VarSet |temp| = |ymin|
$!VarSet |temp| *= |b1|
$!VarSet |b2| = |bottom|
$!VarSet |b2| -= |temp|

### Main Frame ###
$!ReadDataSet  '"Ex1_data.dat"'
$!FrameLayout 
  ShowBorder = No
  ShowHeader = No
  XYPos{ X = 0 Y = 0.5 }
  Width = |width|
  Height = |height|
$!ActiveLineMaps  =  [1-4,7-9]
$!GlobalLinePlot 
  Legend { Show = Yes TextShape { Height = 4 } Box { Margin = 1 } XYPos { X = 40 Y = 50 } }
$!LineMap  [1]
  Name = 'HC-4'
  Assign { Zone = 1 XAxisVar = 1 YAxisVar = 2 }
  Lines { Color = Custom38 LineThickness = 0.2 LinePattern = Solid }
  Symbols { SymbolShape { GeomShape = Del } Color = Custom38 FillMode = UseLineColor Size = 2 }
$!LineMap  [2]
  Name = 'WHC-4'
  Assign { Zone = 2 XAxisVar = 1 YAxisVar = 2 }
  Lines { Color = Custom38 LineThickness = 0.2 LinePattern = Dashed }
  Symbols { SymbolShape { GeomShape = Del } Color = Custom38 FillMode = UseLineColor Size = 2 }
$!LineMap  [3]
  Name = 'HHC-4'
  Assign { Zone = 3 XAxisVar = 1 YAxisVar = 2 }
  Lines { Color = Custom38 LineThickness = 0.2 LinePattern = DashDotDot }
  Symbols { SymbolShape { GeomShape = Del } Color = Custom38 FillMode = UseLineColor Size = 2 }
$!LineMap  [4]
  Name = 'HC-6'
  Assign { Zone = 4 XAxisVar = 1 YAxisVar = 2 }
  Lines { Color = Custom40 LineThickness = 0.2 LinePattern = Solid }
  Symbols { SymbolShape { GeomShape = Circle } Color = Custom40 FillMode = UseLineColor Size = 2 }
$!LineMap  [5]
  Name = 'WHC-6'
  Assign { Zone = 5 XAxisVar = 1 YAxisVar = 2 }
  Lines { Color = Custom40 LineThickness = 0.2 LinePattern = Dashed }
  Symbols { SymbolShape { GeomShape = Circle } Color = Custom40 FillMode = UseLineColor Size = 2 }
$!LineMap  [6]
  Name = 'HHC-6'
  Assign { Zone = 6 XAxisVar = 1 YAxisVar = 2 }
  Lines { Color = Custom40 LineThickness = 0.2 LinePattern = DashDotDot }
  Symbols { SymbolShape { GeomShape = Circle } Color = Custom40 FillMode = UseLineColor Size = 2 }
$!LineMap  [7]
  Name = 'HC-8'
  Assign { Zone = 7 XAxisVar = 1 YAxisVar = 2 }
  Lines { Color = Black LineThickness = 0.2 LinePattern = Solid }
  Symbols { SymbolShape { GeomShape = Diamond } Color = Black FillMode = UseLineColor Size = 2 }
$!LineMap  [8]
  Name = 'WHC-8'
  Assign { Zone = 8 XAxisVar = 1 YAxisVar = 2 }
  Lines { Color = Black LineThickness = 0.2 LinePattern = Dashed }
  Symbols { SymbolShape { GeomShape = Diamond } Color = Black FillMode = UseLineColor Size = 2 }
$!LineMap  [9]
  Name = 'HHC-8'
  Assign { Zone = 9 XAxisVar = 1 YAxisVar = 2 }
  Lines { Color = Black LineThickness = 0.2 LinePattern = DashDotDot }
  Symbols { SymbolShape { GeomShape = Diamond } Color = Black FillMode = UseLineColor Size = 2 }
$!XYLineAxis 
  GridArea { DrawBorder = Yes LineThickness = 0.2 FillColor = Custom40 }
  ViewportPosition { X1 = |left| Y1 = |bottom| X2 = |rright| Y2 = |ttop| }
  XDetail 1 { 
    RangeMin = 1E-4
    RangeMax = 5
    AutoGrid = Yes
    GRSpacing = 1
    Ticks { ShowOnAxisLine = No ShowOnGridBorderMin = Yes ShowOnGridBorderMax = Yes Length = 1 LineThickness = 0.1 MinorLength = 0 } 
    TickLabel { TextShape { Height = 4 } NumFormat{Formatting = CustomLabel} Offset = 2 }
    Title { TitleMode = UseText Text = 'CPU time (s)' TextShape { IsBold = No Height = 5.2 } Offset = 6 } 
    AxisLine { Show = No }
    CoordScale = Log
  } 
  YDetail 1 { 
    RangeMin = 1e-12
    RangeMax = 1e-2
    AutoGrid = Yes
    CoordScale = Log
    Ticks { ShowOnAxisLine = No ShowOnGridBorderMin = Yes ShowOnGridBorderMax = Yes Length = 1 LineThickness = 0.1 MinorLength = 0 } 
    TickLabel { TextShape { Height = 4 } } 
    Title { TitleMode = UseText Text = 'L<sup><math>%</math></sup> error' TextShape { IsBold = No Height = 5.2 } Offset = 7 } 
    AxisLine { Show = No }
  } 
$!LinePlotLayers ShowSymbols = Yes
### Export ###
$!ExportSetup ExportFormat = EPS
$!ExportSetup EPSPreviewImage{ImageType = None}
$!ExportSetup ExportFName = 'Time-1D.eps'
$!Export
 ExportRegion = AllFrames

### Main Frame ###
$!ReadDataSet  '"Ex1_data.dat"'
$!FrameLayout 
  ShowBorder = No
  ShowHeader = No
  XYPos{ X = 0 Y = 0.5 }
  Width = |width|
  Height = |height|
$!ActiveLineMaps  =  [10-15]
$!GlobalLinePlot 
  Legend { Show = Yes TextShape { Height = 4 } Box { Margin = 1 } XYPos { X = 40 Y = 50 } }
$!LineMap  [10]
  Name = 'HC-4'
  Assign { Zone = 10 XAxisVar = 1 YAxisVar = 2 }
  Lines { Color = Custom38 LineThickness = 0.2 LinePattern = Solid }
  Symbols { SymbolShape { GeomShape = Del } Color = Custom38 FillMode = UseLineColor Size = 2 }
$!LineMap  [11]
  Name = 'WHC-4'
  Assign { Zone = 11 XAxisVar = 1 YAxisVar = 2 }
  Lines { Color = Custom38 LineThickness = 0.2 LinePattern = Dashed }
  Symbols { SymbolShape { GeomShape = Del } Color = Custom38 FillMode = UseLineColor Size = 2 }
$!LineMap  [12]
  Name = 'HHC-4'
  Assign { Zone = 12 XAxisVar = 1 YAxisVar = 2 }
  Lines { Color = Custom38 LineThickness = 0.2 LinePattern = DashDotDot }
  Symbols { SymbolShape { GeomShape = Del } Color = Custom38 FillMode = UseLineColor Size = 2 }
$!LineMap  [13]
  Name = 'HC-8'
  Assign { Zone = 13 XAxisVar = 1 YAxisVar = 2 }
  Lines { Color = Black LineThickness = 0.2 LinePattern = Solid }
  Symbols { SymbolShape { GeomShape = Diamond } Color = Black FillMode = UseLineColor Size = 2 }
$!LineMap  [14]
  Name = 'WHC-8'
  Assign { Zone = 14 XAxisVar = 1 YAxisVar = 2 }
  Lines { Color = Black LineThickness = 0.2 LinePattern = Dashed }
  Symbols { SymbolShape { GeomShape = Diamond } Color = Black FillMode = UseLineColor Size = 2 }
$!LineMap  [15]
  Name = 'HHC-8'
  Assign { Zone = 15 XAxisVar = 1 YAxisVar = 2 }
  Lines { Color = Black LineThickness = 0.2 LinePattern = DashDotDot }
  Symbols { SymbolShape { GeomShape = Diamond } Color = Black FillMode = UseLineColor Size = 2 }
$!XYLineAxis 
  GridArea { DrawBorder = Yes LineThickness = 0.2 FillColor = Custom40 }
  ViewportPosition { X1 = |left| Y1 = |bottom| X2 = |rright| Y2 = |ttop| }
  XDetail 1 { 
    RangeMin = 1E-2
    RangeMax = 1E3
    AutoGrid = Yes
    GRSpacing = 1
    Ticks { ShowOnAxisLine = No ShowOnGridBorderMin = Yes ShowOnGridBorderMax = Yes Length = 1 LineThickness = 0.1 MinorLength = 0 } 
    TickLabel { TextShape { Height = 4 } NumFormat{Formatting = CustomLabel} Offset = 2 }
    Title { TitleMode = UseText Text = 'CPU time (s)' TextShape { IsBold = No Height = 5.2 } Offset = 6 } 
    AxisLine { Show = No }
    CoordScale = Log
  } 
  YDetail 1 { 
    RangeMin = 1e-11
    RangeMax = 1e-2
    AutoGrid = Yes
    CoordScale = Log
    Ticks { ShowOnAxisLine = No ShowOnGridBorderMin = Yes ShowOnGridBorderMax = Yes Length = 1 LineThickness = 0.1 MinorLength = 0 } 
    TickLabel { TextShape { Height = 4 } } 
    Title { TitleMode = UseText Text = 'L<sup><math>%</math></sup> error' TextShape { IsBold = No Height = 5.2 } Offset = 7 } 
    AxisLine { Show = No }
  } 
$!LinePlotLayers ShowSymbols = Yes
### Export ###
$!ExportSetup ExportFormat = EPS
$!ExportSetup EPSPreviewImage{ImageType = None}
$!ExportSetup ExportFName = 'Time-2D.eps'
$!Export
 ExportRegion = AllFrames