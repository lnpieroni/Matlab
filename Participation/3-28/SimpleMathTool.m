function varargout = SimpleMathTool(varargin)
% SIMPLEMATHTOOL MATLAB code for SimpleMathTool.fig
%      SIMPLEMATHTOOL, by itself, creates a new SIMPLEMATHTOOL or raises the existing
%      singleton*.
%
%      H = SIMPLEMATHTOOL returns the handle to a new SIMPLEMATHTOOL or the handle to
%      the existing singleton*.
%
%      SIMPLEMATHTOOL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SIMPLEMATHTOOL.M with the given input arguments.
%
%      SIMPLEMATHTOOL('Property','Value',...) creates a new SIMPLEMATHTOOL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SimpleMathTool_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SimpleMathTool_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SimpleMathTool

% Last Modified by GUIDE v2.5 28-Mar-2019 14:28:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SimpleMathTool_OpeningFcn, ...
                   'gui_OutputFcn',  @SimpleMathTool_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before SimpleMathTool is made visible.
function SimpleMathTool_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SimpleMathTool (see VARARGIN)

% Choose default command line output for SimpleMathTool
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SimpleMathTool wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SimpleMathTool_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function aSlider_Callback(hObject, eventdata, handles)
% hObject    handle to aSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
handles.aText.String = num2str(handles.aSlider.Value);

% --- Executes during object creation, after setting all properties.
function aSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to aSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function bSlider_Callback(hObject, eventdata, handles)
% hObject    handle to bSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
handles.bText.String = num2str(handles.bSlider.Value);

% --- Executes during object creation, after setting all properties.
function bSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function aText_Callback(hObject, eventdata, handles)
% hObject    handle to aText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of aText as text
%        str2double(get(hObject,'String')) returns contents of aText as a double
handles.aSlider.Value = str2num(handles.aText.String);

% --- Executes during object creation, after setting all properties.
function aText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to aText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bText_Callback(hObject, eventdata, handles)
% hObject    handle to bText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bText as text
%        str2double(get(hObject,'String')) returns contents of bText as a double
handles.bSlider.Value = str2num(handles.bText.String);

% --- Executes during object creation, after setting all properties.
function bText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calcButton.
function calcButton_Callback(hObject, eventdata, handles)
% hObject    handle to calcButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.addText.String = num2str(handles.aSlider.Value + handles.bSlider.Value);
handles.subText.String = num2str(handles.aSlider.Value - handles.bSlider.Value);
handles.multText.String = num2str(handles.aSlider.Value * handles.bSlider.Value);
handles.divText.String = num2str(handles.aSlider.Value / handles.bSlider.Value);