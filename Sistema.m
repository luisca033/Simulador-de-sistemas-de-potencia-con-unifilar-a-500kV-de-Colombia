function varargout = Sistema(varargin)
% SISTEMA MATLAB code for Sistema.fig
%      SISTEMA, by itself, creates a new SISTEMA or raises the existing
%      singleton*.
%
%      H = SISTEMA returns the handle to a new SISTEMA or the handle to
%      the existing singleton*.
%
%      SISTEMA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SISTEMA.M with the given input arguments.
%
%      SISTEMA('Property','Value',...) creates a new SISTEMA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Sistema_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Sistema_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Sistema

% Last Modified by GUIDE v2.5 25-Mar-2018 10:21:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Sistema_OpeningFcn, ...
                   'gui_OutputFcn',  @Sistema_OutputFcn, ...
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


% --- Executes just before Sistema is made visible.
function Sistema_OpeningFcn(hObject, eventdata, handles, varargin)
guidata(hObject, handles);
handles.output = hObject;
axes(handles.axes1);
im=imread('ima.JPG');
imshow(im);
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Sistema wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Sistema_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in bt1.
function bt1_Callback(hObject, eventdata, handles)
% hObject    handle to bt1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
winopen('Regiones.pdf');




function out_Callback(hObject, eventdata, handles)
% hObject    handle to out (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of out as text
%        str2double(get(hObject,'String')) returns contents of out as a double


% --- Executes during object creation, after setting all properties.
function out_CreateFcn(hObject, eventdata, handles)
% hObject    handle to out (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in bt2.
function bt2_Callback(hObject, eventdata, handles)
% hObject    handle to bt2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

estado = get(handles.rb1,'Value');
set(handles.out, 'Min', 0, 'Max', 3);
if estado == 1 
    set(handles.out,'String', 'Compuesta por los departamentos de Atlántico, Bolívar, Cesar, Córdoba , Guajira, Magdalena y Sucre; donde la carga para el año 2017 en el mes de enero fue de 400,60 GWh, las generadoras asociadas a la zona tienen una capacidad efectiva de: 2535,7');
end
estado = get(handles.rb2,'Value');
if estado == 1 
    set(handles.out,'String', 'Compuesta por los departamentos de Bogotá, Boyacá, Cundinamarca, Guaviare y Meta ; donde la carga para el año 2017 en el mes de enero fue de 450,51 GWh, las generadoras asociadas a la zona tienen una capacidad efectiva de: 2577');
end
estado = get(handles.rb3,'Value');
if estado == 1 
    set(handles.out,'String', 'Compuesta por los departamentos de Caldas, Quindío y  Risaralda ; donde la carga para el año 2017 en el mes de enero fue de 65,64 GWh, las generadoras asociadas a la zona tienen una capacidad efectiva de: 396');
end
estado = get(handles.rb4,'Value');
if estado == 1 
    set(handles.out,'String', 'Compuesta por los departamentos de Antioquia y Choco ; donde la carga para el año 2017 en el mes de enero fue de 217,91 GWh, las generadoras asociadas a la zona tienen una capacidad efectiva de: 3403');
end
estado = get(handles.rb5,'Value');
if estado == 1 
    set(handles.out,'String', 'Compuesta por los departamentos de Arauca, Casanare, Norte de Santander y  Santander ; donde la carga para el año 2017 en el mes de enero fue de 126,28 GWh,las generadoras asociadas a la zona tienen una capacidad efectiva de: 431');
end
estado = get(handles.rb6,'Value');
if estado == 1 
    set(handles.out,'String', 'Compuesta por los departamentos de Caquetá, Cauca, Nariño, Putumayo y Valle del Cauca ; donde la carga para el año 2017 en el mes de enero fue de 260,3 GWh, las generadoras asociadas a la zona tienen una capacidad efectiva de: 285');
end
estado = get(handles.rb7,'Value');
if estado == 1 
    set(handles.out,'String', 'Compuesta por los departamentos de Tolima y  Huila; donde la carga para el año 2017 en el mes de enero fue de 52,56 GWh, es la región más pequeña del modelo unifilar del país, las generadoras asociadas a la zona tienen una capacidad efectiva de: 540');
end
