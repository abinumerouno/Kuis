function varargout = startype(varargin)
% STARTYPE MATLAB code for startype.fig
%      STARTYPE, by itself, creates a new STARTYPE or raises the existing
%      singleton*.
%
%      H = STARTYPE returns the handle to a new STARTYPE or the handle to
%      the existing singleton*.
%
%      STARTYPE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in STARTYPE.M with the given input arguments.
%
%      STARTYPE('Property','Value',...) creates a new STARTYPE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before startype_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to startype_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help startype

% Last Modified by GUIDE v2.5 23-Apr-2021 22:46:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @startype_OpeningFcn, ...
                   'gui_OutputFcn',  @startype_OutputFcn, ...
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


% --- Executes just before startype is made visible.
function startype_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to startype (see VARARGIN)

% Choose default command line output for startype
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes startype wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = startype_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
ok


% --- Executes on button press in uitable1.
function uitable1_Callback(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
opts = detectImportOptions('Stars.csv');
opts.SelectedVariableNames = (1:4);
data = readmatrix('Stars.csv', opts);
set (handles.uitable2, 'data',data);



function temp_Callback(hObject, eventdata, handles)
% hObject    handle to temp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of temp as text
%        str2double(get(hObject,'String')) returns contents of temp as a double


% --- Executes during object creation, after setting all properties.
function temp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to temp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rl_Callback(hObject, eventdata, handles)
% hObject    handle to rl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rl as text
%        str2double(get(hObject,'String')) returns contents of rl as a double


% --- Executes during object creation, after setting all properties.
function rl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rr_Callback(hObject, eventdata, handles)
% hObject    handle to rr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rr as text
%        str2double(get(hObject,'String')) returns contents of rr as a double


% --- Executes during object creation, after setting all properties.
function rr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function am_Callback(hObject, eventdata, handles)
% hObject    handle to am (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of am as text
%        str2double(get(hObject,'String')) returns contents of am as a double


% --- Executes during object creation, after setting all properties.
function am_CreateFcn(hObject, eventdata, handles)
% hObject    handle to am (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k_Callback(hObject, eventdata, handles)
% hObject    handle to k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k as text
%        str2double(get(hObject,'String')) returns contents of k as a double


% --- Executes during object creation, after setting all properties.
function k_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in classificaly.
function classificaly_Callback(hObject, eventdata, handles)
% hObject    handle to classificaly (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
temp = get(handles.temp,'string');
rl = get(handles.rl,'string');
rr = get(handles.rr,'string');
am = get(handles.am,'string');
k = get(handles.k,'string');
temp = str2double(temp);
rl = str2double(rl);
rr = str2double(rr);
am = str2double(am);
k = str2double(k);

sample = [temp rl rr am];

opts = detectImportOptions('Stars.csv');
opts.SelectedVariableNames = (1:4);
training = readmatrix('Stars.csv',opts);

opts = detectImportOptions('Stars.csv');
opts.SelectedVariableNames = (7);
group = readmatrix('Stars.csv',opts);

class = fitcknn(training, group, 'NumNeighbors', k);
klasifikasi = predict(class, sample);

set(handles.hasilrun, 'string', klasifikasi);



% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.temp, 'String', '');
set(handles.rl, 'String', '');
set(handles.rr, 'String', '');
set(handles.am, 'String', '');
set(handles.k, 'String', '');
set(handles.hasilrun, 'String', '');


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uitable2, 'Data', cell(size(get(handles.uitable2,'Data'))));


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
man
