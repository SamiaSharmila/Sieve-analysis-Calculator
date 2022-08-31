function varargout = Sieve_Calculator(varargin)
% SIEVE_CALCULATOR MATLAB code for Sieve_Calculator.fig
%      SIEVE_CALCULATOR, by itself, creates a new SIEVE_CALCULATOR or raises the existing
%      singleton*.
%
%      H = SIEVE_CALCULATOR returns the handle to a new SIEVE_CALCULATOR or the handle to
%      the existing singleton*.
%
%      SIEVE_CALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SIEVE_CALCULATOR.M with the given input arguments.
%
%      SIEVE_CALCULATOR('Property','Value',...) creates a new SIEVE_CALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Sieve_Calculator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Sieve_Calculator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Sieve_Calculator

% Last Modified by GUIDE v2.5 30-Aug-2022 18:57:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Sieve_Calculator_OpeningFcn, ...
                   'gui_OutputFcn',  @Sieve_Calculator_OutputFcn, ...
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

end
% --- Executes just before Sieve_Calculator is made visible.
function Sieve_Calculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Sieve_Calculator (see VARARGIN)

% Choose default command line output for Sieve_Calculator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Sieve_Calculator wait for user response (see UIRESUME)
% uiwait(handles.figure1);

end
% --- Outputs from this function are returned to the command line.
function varargout = Sieve_Calculator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

end
% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%Mass Reatained Input

radio= get(handles.radiobutton,'Value');


if radio == 0 
    Sieve_opening = [25.4, 19, 12.5, 9.5, 4.75, 2.36, 1.18, 0.6, 0.3, 0.15, 0.075, 0];
    a=str2double(get(handles.edit1,'string'));
    b=str2double(get(handles.edit2,'string'));
    c=str2double(get(handles.edit3,'string'));
    d=str2double(get(handles.edit4,'string'));
    e=str2double(get(handles.edit5,'string'));
    f=str2double(get(handles.edit6,'string'));
    g=str2double(get(handles.edit7,'string'));
    h=str2double(get(handles.edit8,'string'));
    i=str2double(get(handles.edit9,'string'));
    j=str2double(get(handles.edit10,'string'));
    k=str2double(get(handles.edit11,'string'));
    l=str2double(get(handles.edit12,'string'));

    A = zeros(1,12);
    A(1) = a;
    A(2) = b;
    A(3) = c;
    A(4) = d;
    A(5) = e;
    A(6) = f;
    A(7) = g;
    A(8) = h;
    A(9) = i;
    A(10) = j;
    A(11) = k;
    A(12) = l;
   
end

if radio == 1 
    Data = readtable("Data.xlsx","TextType","string");
    Sieve_opening = Data.SieveSize_mm_;
    A = Data.MassRetain_gm_;
    a=A(1);
    b=A(2);
    c=A(3);
    d=A(4);
    e=A(5);
    f=A(6);
    g=A(7);
    h=A(8);
    i=A(9);
    j=A(10);
    k=A(11);
    l=A(12);
    set(handles.edit1,'string',a);
    set(handles.edit2,'string',b);
    set(handles.edit3,'string',c);
    set(handles.edit4,'string',d);
    set(handles.edit5,'string',e);
    set(handles.edit6,'string',f);
    set(handles.edit7,'string',g);
    set(handles.edit8,'string',h);
    set(handles.edit9,'string',i);
    set(handles.edit10,'string',j);
    set(handles.edit11,'string',k);
    set(handles.edit12,'string',l);
   
end





total = sum(A) ;
set(handles.edit13,'string',total);

%%Individual Retained



a1=round((a/total)*100);
set(handles.E1,'string',a1);
b1=round((b/total)*100);
set(handles.E2,'string',b1);
c1=round((c/total)*100);
set(handles.E3,'string',c1);
d1=round((d/total)*100);
set(handles.E4,'string',d1);
e1=round((e/total)*100);
set(handles.E5,'string',e1);
f1=round((f/total)*100);
set(handles.E6,'string',f1);
g1=round((g/total)*100);
set(handles.E7,'string',g1);
h1=round((h/total)*100);
set(handles.E8,'string',h1);
i1=round((i/total)*100);
set(handles.E9,'string',i1);
j1=round((j/total)*100);
set(handles.E10,'string',j1);
k1=round((k/total)*100);
set(handles.E11,'string',k1);
l1=round((l/total)*100);
set(handles.E12,'string',l1);
m1=a1+b1+c1+d1+e1+f1+g1+h1+i1+j1+k1+l1;
set(handles.E13,'string',m1);

%%Cumulative Retained
a2=a1+0;
set(handles.C1,'string',a2);
b2=a2+b1;
set(handles.C2,'string',b2);
c2=b2+c1;
set(handles.C3,'string',c2);
d2=c2+d1;
set(handles.C4,'string',d2);
e2=d2+e1;
set(handles.C5,'string',e2);
f2=e2+f1;
set(handles.C6,'string',f2);
g2=f2+g1;
set(handles.C7,'string',g2);
h2=g2+h1;
set(handles.C8,'string',h2);
i2=h2+i1;
set(handles.C9,'string',i2);
j2=i2+j1;
set(handles.C10,'string',j2);
k2=j2+k1;
set(handles.C11,'string',k2);
l2=k2+l1;
set(handles.C12,'string',l2);
%%fm calculation
fm=(b2+d2+e2+f2+g2+h2+i2+j2)/100;


set(handles.result,'string',fm);


%% Finding percentfiner
perRetain=round((A./sum(A))*100);

Cumretain=0;
for i=1:length(A)
    Cumretain = perRetain(i)+ Cumretain;
    CR(i)=Cumretain;
    PercentFinner(i)=100-CR(i);
    
end
set(handles.PF1,'string',PercentFinner(1));
set(handles.PF2,'string',PercentFinner(2));
set(handles.PF3,'string',PercentFinner(3));
set(handles.PF4,'string',PercentFinner(4));
set(handles.PF5,'string',PercentFinner(5));
set(handles.PF6,'string',PercentFinner(6));
set(handles.PF7,'string',PercentFinner(7));
set(handles.PF8,'string',PercentFinner(8));
set(handles.PF9,'string',PercentFinner(9));
set(handles.PF10,'string',PercentFinner(10));
set(handles.PF11,'string',PercentFinner(11));
set(handles.PF12,'string',PercentFinner(12));

%%graph

hold on
    % semilogx(handles.Gradation_Curve,Sieve_opening,PercentFinner,'r-o','LineWidth',2);
plot(handles.Gradation_Curve,Sieve_opening,PercentFinner,'c-o','LineWidth',2);

title("Gradation Curve","FontSize",20,"Color",'w')
xlabel(handles.Gradation_Curve,'Sieve Opening(mm)','FontSize',16,'Color','g');
ylabel(handles.Gradation_Curve,'Percent(%) Finer','FontSize',16,'Color','g');

grid on;


%finding
    % D60, D10, D30;
   
  [Y,idx]= unique(PercentFinner); 
X = Sieve_opening(idx) ; 
D60 = interp1(Y,X,60);
D30 = interp1(Y,X,30);
D10 = interp1(Y,X,10);

%Cu 
    Cu=D60/D10;
%Cc
    Cc=((D30)^2)/(D10*D60);
set(handles.Cc,'string',Cc);
set(handles.Cu,'string',Cu);

%Gradation Type
if 1<=Cc & Cc<=3 || 4<=Cu & Cu<=6
    set(handles.gntype,'string','Well Graded');
else
    set(handles.gntype,'string','Poorly Graded');
end

end




function result_Callback(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of result as text
%        str2double(get(hObject,'String')) returns contents of result as a double
end

% --- Executes during object creation, after setting all properties.
function result_CreateFcn(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

end


% --- Executes on button press in radiobutton.
function radiobutton_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton

end

    function Cc_Callback(hObject, eventdata, handles)
    % hObject    handle to Cc (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    
    % Hints: get(hObject,'String') returns contents of Cc as text
    %        str2double(get(hObject,'String')) returns contents of Cc as a double
    end
    
    % --- Executes during object creation, after setting all properties.
    function Cc_CreateFcn(hObject, eventdata, handles)
    % hObject    handle to Cc (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    empty - handles not created until after all CreateFcns called
    
    % Hint: edit controls usually have a white background on Windows.
    %       See ISPC and COMPUTER.
    end
%     if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
%         set(hObject,'BackgroundColor','white');
%     end



    function Cu_Callback(hObject, eventdata, handles)
    % hObject    handle to Cu (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    
    % Hints: get(hObject,'String') returns contents of Cu as text
    %        str2double(get(hObject,'String')) returns contents of Cu as a double
    
    end
    % --- Executes during object creation, after setting all properties.
    function Cu_CreateFcn(hObject, eventdata, handles)
    % hObject    handle to Cu (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    empty - handles not created until after all CreateFcns called
    
    % Hint: edit controls usually have a white background on Windows.
    %       See ISPC and COMPUTER.
    end
%     if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
%         set(hObject,'BackgroundColor','white');
%     end
  



function gntype_Callback(hObject, eventdata, handles)
% hObject    handle to gntype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of gntype as text
%        str2double(get(hObject,'String')) returns contents of gntype as a double
end

% --- Executes during object creation, after setting all properties.
function gntype_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gntype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
clear;
clc;
cla;
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
end
