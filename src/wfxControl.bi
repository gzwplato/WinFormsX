'    WinFormsX - Windows GUI Framework for the FreeBASIC Compiler
'    Copyright (C) 2018 Paul Squires, PlanetSquires Software
'
'    This program is free software: you can redistribute it and/or modify
'    it under the terms of the GNU General Public License as published by
'    the Free Software Foundation, either version 3 of the License, or
'    (at your option) any later version.
'
'    This program is distributed in the hope that it will be useful,
'    but WITHOUT any WARRANTY; without even the implied warranty of
'    MERCHANTABILITY or FITNESS for A PARTICULAR PURPOSE.  See the
'    GNU General Public License for more details.


type wfxForm_ as wfxForm    ' forward reference

Type wfxControl Extends Object
   protected:
      _CtrlType    As Long
      _CtrlName    As CWSTR
      _CtrlID      As Long
      _Text        as CWSTR
      _Size        as wfxSize 
      _Location    as wfxPoint
      _Parent      as wfxForm_ ptr
      _hWindow     as hwnd
      _Focused     as Boolean = False
      _Enabled     as Boolean = True
      _Visible     as Boolean = True
      _TabStop     as boolean = true
      _BackColor   As COLORREF = Colors.SystemControl
      _hBackBrush  As HBRUSH = CreateSolidBrush(Colors.SystemControl)
      _ForeColor   As COLORREF = Colors.SystemControlText
      _bIsTracking as Boolean = false    ' mouse tracking for Enter/Leave
      _AllowDrop   As Boolean = False
      _Tag         As CWSTR
      _hFont       As HFONT
      _FontString  As CWSTR
      _wfxFontPtr  As wfxFont Ptr
      
   Public:
      Declare Property hWindow() As hwnd
      Declare Property hWindow( ByVal nValue as hwnd )
      Declare Property CtrlType() As Long
      Declare Property CtrlType( ByVal nValue As Long )
      Declare Property Name() As CWSTR 
      Declare Property Name( ByRef cwzValue As wstring )
      Declare Property Tag() As CWSTR 
      Declare Property Tag( ByRef cwzValue As wstring )
      Declare Property Font() As wfxFont 
      Declare Property Font( ByVal wfxFontPtr As wfxFont Ptr )
      Declare Property AllowDrop() As boolean
      Declare Property AllowDrop( ByVal nValue As boolean )
      Declare Property Focused() As boolean
      Declare Property Focused( ByVal nValue As Boolean)
      Declare Property CtrlID() As Long
      Declare Property CtrlID( ByVal nValue As Long )
      Declare Property hBackBrush() As HBRUSH   ' internal get
      Declare Property BackColor() As COLORREF
      Declare Property BackColor( ByVal nValue As COLORREF )
      Declare Property ForeColor() As COLORREF
      Declare Property ForeColor( ByVal nValue As COLORREF )
      Declare Property IsTracking() As boolean
      Declare Property IsTracking( ByVal nValue As Boolean)
      Declare Property Enabled() As boolean
      Declare Property Enabled( ByVal nValue As Boolean)
      Declare Property Visible() As boolean
      Declare Property Visible( ByVal nValue As Boolean)
      Declare Property TabStop() As boolean
      Declare Property TabStop( ByVal nValue As Boolean)
      Declare Property Text() As CWSTR
      Declare Property Text( byref nValue as wstring )
      Declare Property Left() As Long
      Declare Property Left( ByVal nValue As Long )
      Declare Property Top() As Long
      Declare Property Top( ByVal nValue As Long )
      Declare Property Width() As Long
      Declare Property Width( ByVal nValue As Long )
      Declare Property Height() As Long
      Declare Property Height( ByVal nValue As Long )
      Declare Property Size() As wfxSize
      declare property Size( byval nWidth as long, byval nHeight as long )
      Declare Property Location() As wfxPoint
      declare property Location( byval xPos as long, byval yPos as long )
      Declare Property Parent() As wfxForm_ ptr
      Declare Property Parent( ByVal pForm as wfxForm_ ptr )
      declare function Refresh() as long
      declare function SetBounds( byval xPos as long, byval yPos as long, byval nWidth as long, byval nHeight as long ) as long
      declare function Hide() As long
      Declare Function SelectNextControl( ByVal bForward As boolean ) As boolean
      Declare Abstract Function Show(ByVal hWndParent As HWnd = 0) As Long

      declare constructor ()
      Declare Constructor ( ByRef rhs As wfxControl ) '' to avoid user copy-construction from root
      declare destructor ()
End Type

