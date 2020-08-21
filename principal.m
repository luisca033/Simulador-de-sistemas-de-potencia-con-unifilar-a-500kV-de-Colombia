function varargout = principal(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @principal_OpeningFcn, ...
                   'gui_OutputFcn',  @principal_OutputFcn, ...
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


function principal_OpeningFcn(hObject, eventdata, handles, varargin)
guidata(hObject, handles);
handles.output = hObject;
axes(handles.axes1);
im=imread('ima.JPG');
imshow(im);
handles.output = hObject;
axes(handles.axes2);
im=imread('salle.JPG');
imshow(im);
handles.output = hObject;
clc;



function varargout = principal_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;




function calpf_Callback(hObject, eventdata, handles)
clc;

try
diary report
tex1=xlsread('Base1.xlsx','Informacion','B2');
tex2=xlsread('Base1.xlsx','Informacion','B3');
tex3=xlsread('Base1.xlsx','Informacion','B4');
tex4=xlsread('Base1.xlsx','Informacion','B5');

results=runpf(estudiante(tex1,tex2,tex3,tex4));

axes(handles.axes2);
bar(results.bus(:,8));
ylim([0.9 1.05]);
axes(handles.axes1);
im=imread('Unifilar.JPG');
imshow(im);
winopen('Unifilar.JPG')
set(handles.out,'String','Calculo de PF terminado');
diary off

catch
        f = msgbox('Error intente de nuevo');
end
% --- Executes on button press in calopf.
function calopf_Callback(hObject, eventdata, handles)

clc;
try
    diary on
tex1=xlsread('Base1.xlsx','Informacion','B2');
tex2=xlsread('Base1.xlsx','Informacion','B3');
tex3=xlsread('Base1.xlsx','Informacion','B4');
tex4=xlsread('Base1.xlsx','Informacion','B5');
results=runopf(estudiante(tex1,tex2,tex3,tex4));
axes(handles.axes2);
bar(results.bus(:,8));
axes(handles.axes1);
im=imread('Unifilar.JPG');
imshow(im);
winopen('Unifilar.JPG')

set(handles.out,'String','Calculo de OPF terminado');
diary off
catch
         f = msgbox('Error intente de nuevo');
end

function sys_Callback(hObject, eventdata, handles)
clc;
Sistema();


function dat1_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function dat1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function out_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function out_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in rep.
function rep_Callback(hObject, eventdata, handles)
f = msgbox('Reporte generado revise la carpeta');
set(handles.out,'String','Reporte generado revise la carpeta');

% --- Executes on button press in tut.
function tut_Callback(hObject, eventdata, handles)
clc;
tutorial();


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
clc;
winopen('Base1.xlsx');




function dat2_Callback(hObject, eventdata, handles)
function dat2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dat3_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function dat3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dat4_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function dat4_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
winopen('LUIS 500.kmz');





% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc;
try
diary report
tex1=xlsread('c1.xlsx','Informacion','B2');
tex2=xlsread('c1.xlsx','Informacion','B3');
tex3=xlsread('c1.xlsx','Informacion','B4');
tex4=xlsread('c1.xlsx','Informacion','B5');

results=runpf(estudiante1(tex1,tex2,tex3,tex4));
axes(handles.axes2);

bar(results.bus(:,8));
ylim([0.9 1.05]);
axes(handles.axes1);
im=imread('caso1.JPG');
imshow(im);
winopen('caso1.JPG')


set(handles.out,'String','Calculo de PF terminado');
diary off

catch
        f = msgbox('Error intente de nuevo');
end


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc;
try
diary report
tex1=xlsread('c2.xlsx','Informacion','B2');
tex2=xlsread('c2.xlsx','Informacion','B3');
tex3=xlsread('c2.xlsx','Informacion','B4');
tex4=xlsread('c2.xlsx','Informacion','B5');

results=runpf(estudiante2(tex1,tex2,tex3,tex4));
axes(handles.axes2);

bar(results.bus(:,8));
ylim([0.9 1.05]);
axes(handles.axes1);
im=imread('caso2.JPG');
imshow(im);
winopen('caso2.JPG')

set(handles.out,'String','Calculo de PF terminado');
diary off

catch
        f = msgbox('Error intente de nuevo');
end

% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc;
try
diary report
tex1=xlsread('c3.xlsx','Informacion','B2');
tex2=xlsread('c3.xlsx','Informacion','B3');
tex3=xlsread('c3.xlsx','Informacion','B4');
tex4=xlsread('c3.xlsx','Informacion','B5');

results=runpf(estudiante3(tex1,tex2,tex3,tex4));
axes(handles.axes2);

bar(results.bus(:,8));
ylim([0.9 1.05]);
axes(handles.axes1);
im=imread('caso3.JPG');
imshow(im);
winopen('caso3.JPG')
set(handles.out,'String','Calculo de PF terminado');
diary off

catch
        f = msgbox('Error intente de nuevo');
end

% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc;
try
diary report
tex1=xlsread('c4.xlsx','Informacion','B2');
tex2=xlsread('c4.xlsx','Informacion','B3');
tex3=xlsread('c4.xlsx','Informacion','B4');
tex4=xlsread('c4.xlsx','Informacion','B5');

results=runpf(estudiante4(tex1,tex2,tex3,tex4));
axes(handles.axes2);

bar(results.bus(:,8));
ylim([0.9 1.05]);
axes(handles.axes1);
im=imread('caso4.JPG');
imshow(im);
winopen('caso4.JPG')
set(handles.out,'String','Calculo de PF terminado');
diary off

catch
        f = msgbox('Error intente de nuevo');
end
