function varargout = GUIlolos(varargin)
% GUILOLOS MATLAB code for GUIlolos.fig
%      GUILOLOS, by itself, creates a new GUILOLOS or raises the existing
%      singleton*.
%
%      H = GUILOLOS returns the handle to a new GUILOLOS or the handle to
%      the existing singleton*.
%
%      GUILOLOS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUILOLOS.M with the given input arguments.
%
%      GUILOLOS('Property','Value',...) creates a new GUILOLOS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUIlolos_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUIlolos_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUIlolos

% Last Modified by GUIDE v2.5 24-Apr-2021 08:15:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUIlolos_OpeningFcn, ...
                   'gui_OutputFcn',  @GUIlolos_OutputFcn, ...
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


% --- Executes just before GUIlolos is made visible.
function GUIlolos_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUIlolos (see VARARGIN)

% Choose default command line output for GUIlolos
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUIlolos wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUIlolos_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in running.
function running_Callback(hObject, eventdata, handles)
% hObject    handle to running (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=readfis('FISlolos');
out=evalfis([handles.s handles.m],a);
set(handles.hasilrun,'String',out);

% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.style, 'String', '');
set(handles.mefa, 'String', '');
set(handles.hasilrun, 'String', '');


% --- Executes on button press in close.
function close_Callback(hObject, eventdata, handles)
% hObject    handle to close (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function hasilrun_Callback(hObject, eventdata, handles)
% hObject    handle to hasilrun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasilrun as text
%        str2double(get(hObject,'String')) returns contents of hasilrun as a double


% --- Executes during object creation, after setting all properties.
function hasilrun_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasilrun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function style_Callback(hObject, eventdata, handles)
% hObject    handle to style (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s= str2double(get(hObject,'String'));
handles.s=s;
guidata(hObject, handles);

% Hints: get(hObject,'String') returns contents of style as text
%        str2double(get(hObject,'String')) returns contents of style as a double


% --- Executes during object creation, after setting all properties.
function style_CreateFcn(hObject, eventdata, handles)
% hObject    handle to style (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mefa_Callback(hObject, eventdata, handles)
% hObject    handle to mefa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
m= str2double(get(hObject,'String'));
handles.m=m;
guidata(hObject, handles);
% Hints: get(hObject,'String') returns contents of mefa as text
%        str2double(get(hObject,'String')) returns contents of mefa as a double


% --- Executes during object creation, after setting all properties.
function mefa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mefa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
