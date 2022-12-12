classdef Municion_Cls
    methods (Access = public, Static)
        function init(app,value,inicio)
            which -all getItems
            import java.awt.*;
            import java.awt.event.*;
            rob=Robot;
            if(inicio==1)
                
                none=true;
            else
                
                none=false;rob.keyRelease(KeyEvent.VK_F);
            end
            c = parcluster(); % Use default profile
            j = createJob(c);
            T_MP=0;
            T_MBs=0;
            T_BT=0;
            T_END=0;
            T_ENDwin=0;
            T_Oleada=0;
            T_FinOleada=0;
            T_Evento=0;
            T_PP=0;
            T_MenuPS=0;
            T_Soldados=0;
            T_Ataquetome=0;
            T_ErrorApp=0;
            T_AcercaInforme=0;
            NoLog=24526;
            lastActivity="Inicio";
            prelastActivity="Inicio";
            AcercaInforme = rgb2gray(imread("C:/Users/HiramGamiz/Documents/GIT/Matlab/GUI gunsup/img/AcercaInforme.jpg"));
            AcercaInforme=wiener2(AcercaInforme,[80 80]);
            AcercaInforme=edge(AcercaInforme,'sobel');
            
            MenuPS = rgb2gray(imread("C:/Users/HiramGamiz/Documents/GIT/Matlab/GUI gunsup/img/MenuPS.jpg"));
            MenuPS=wiener2(MenuPS,[80 80]);
            MenuPS=edge(MenuPS,'sobel');
            
            PP = rgb2gray(imread("C:/Users/HiramGamiz/Documents/GIT/Matlab/GUI gunsup/img/PP.jpg"));
            PP=wiener2(PP,[80 80]);
            PP=edge(PP,'sobel');
            
            MP = rgb2gray(imread("C:/Users/HiramGamiz/Documents/GIT/Matlab/GUI gunsup/img/MP.jpg"));
            MP=wiener2(MP,[80 80]);
            MP=edge(MP,'sobel');
            
            MBs = rgb2gray(imread("C:/Users/HiramGamiz/Documents/GIT/Matlab/GUI gunsup/img/MBs.jpg"));
            MBs=wiener2(MBs,[80 80]);
            MBs=edge(MBs,'sobel');
            
            BT = rgb2gray(imread("C:/Users/HiramGamiz/Documents/GIT/Matlab/GUI gunsup/img/BT.jpg"));
            BT=wiener2(BT,[80 80]);
            BT=edge(BT,'sobel');
            
            END = rgb2gray(imread("C:/Users/HiramGamiz/Documents/GIT/Matlab/GUI gunsup/img/END.jpg"));
            END=wiener2(END,[80 80]);
            END=edge(END,'sobel');
            
            ENDwin = rgb2gray(imread("C:/Users/HiramGamiz/Documents/GIT/Matlab/GUI gunsup/img/ENDwin.jpg"));
            ENDwin=wiener2(ENDwin,[80 80]);
            ENDwin=edge(ENDwin,'sobel');
            
            Oleada = rgb2gray(imread("C:/Users/HiramGamiz/Documents/GIT/Matlab/GUI gunsup/img/Oleada.jpg"));
            Oleada=wiener2(Oleada,[80 80]);
            Oleada=edge(Oleada,'sobel');
            
            FinOleada = rgb2gray(imread("C:/Users/HiramGamiz/Documents/GIT/Matlab/GUI gunsup/img/OleadaEND.jpg"));
            FinOleada=wiener2(FinOleada,[80 80]);
            FinOleada=edge(FinOleada,'sobel');
            
            Oleada_derrota = rgb2gray(imread("C:/Users/HiramGamiz/Documents/GIT/Matlab/GUI gunsup/img/Derrota_oleada.jpg"));
            Oleada_derrota=wiener2(Oleada_derrota,[80 80]);
            Oleada_derrota=edge(Oleada_derrota,'sobel');
            
            Evento = rgb2gray(imread("C:/Users/HiramGamiz/Documents/GIT/Matlab/GUI gunsup/img/Evento.jpg"));
            Evento=wiener2(Evento,[80 80]);
            Evento=edge(Evento,'sobel');
            
            Soldados = rgb2gray(imread("C:/Users/HiramGamiz/Documents/GIT/Matlab/GUI gunsup/img/Soldados.jpg"));
            Soldados=wiener2(Soldados,[80 80]);
            Soldados=edge(Soldados,'sobel');
            
            Ataquetome = rgb2gray(imread("C:/Users/HiramGamiz/Documents/GIT/Matlab/GUI gunsup/img/Ataquetome.jpg"));
            Ataquetome=wiener2(Ataquetome,[80 80]);
            Ataquetome=edge(Ataquetome,'sobel');
            
            ErrorApp = rgb2gray(imread("C:/Users/HiramGamiz/Documents/GIT/Matlab/GUI gunsup/img/ErrorApp.jpg"));
            ErrorApp=wiener2(ErrorApp,[80 80]);
            ErrorApp=edge(ErrorApp,'sobel');
            
            
            MP=  im2uint8(MP);
            MBs=  im2uint8(MBs);
            BT=  im2uint8(BT);
            END=  im2uint8(END);
            Oleada=  im2uint8(Oleada);
            FinOleada=  im2uint8(FinOleada);
            Oleada_derrota=  im2uint8(Oleada_derrota);
            Evento=  im2uint8(Evento);
            ENDwin=im2uint8(ENDwin);
            MenuPS=im2uint8(MenuPS);
            Soldados=im2uint8(Soldados);
            Ataquetome=im2uint8(Ataquetome);
            ErrorApp=im2uint8(ErrorApp);
            PP=im2uint8(PP);
            AcercaInforme=im2uint8(AcercaInforme);
            dtLastAct=now;
            late=0;
            jobCreado=false;
            
            while value
                tic
                while 1
                    tic
                    t1 = now;
                    dt = t1 - dtLastAct
                    display(dt);
                    if(jobCreado == false && none==true)
                        j = createJob(c);
                        t = createTask(j, @getItems, 1, {});
                        submit(j);
                        jobCreado=true
                    end
                    if(jobCreado == true && none==false)
                        delete(j);
                        jobCreado=false
                    end
                    if(dt > 0.024232)
                        display("late ");
                        none=false;rob.keyRelease(KeyEvent.VK_F);
                        pause(0.2);
                        rob.keyPress(KeyEvent.VK_B  )
                        pause(2);
                        rob.keyRelease(KeyEvent.VK_B  )
                        pause(1);
                        rob.keyPress(KeyEvent.VK_H  )
                        pause(0.4);
                        rob.keyRelease(KeyEvent.VK_H  )
                        pause(0.8);
                        rob.keyPress(KeyEvent.VK_V  )
                        pause(0.4);
                        rob.keyRelease(KeyEvent.VK_V  )
                        pause(5);
                        rob.keyPress(KeyEvent.VK_V  )
                        pause(0.4);
                        rob.keyRelease(KeyEvent.VK_V  )
                        pause(0.4);
                        dtLastAct=now;
                        late=late+1;
                    end
                    NoLog=NoLog+1;
                    display("---dt----INICIO---------- Log:"+NoLog+" -- LastActivity: "+lastActivity+" -- preLastActivity: "+prelastActivity);
                    display("T_MP "+T_MP);
                    display("T_MBs "+T_MBs);
                    display("T_BT "+T_BT);
                    display("T_END "+T_END);
                    display("T_ENDwin "+T_ENDwin);
                    display("T_Oleada "+T_Oleada);
                    display("T_FinOleada "+T_FinOleada);
                    display("T_Evento "+T_Evento);
                    display("T_PP "+T_PP);
                    display("T_MenuPS "+T_MenuPS);
                    display("T_Soldados "+T_Soldados);
                    display("T_Ataquetome "+T_Ataquetome);
                    display("T_ErrorApp "+T_ErrorApp);
                    display("T_AcercaInforme "+T_AcercaInforme);
                    display(":::::::::::::::::::::::::::::::::");
                    display("-------Fin---------- Log:"+NoLog+" -- LastActivity: "+lastActivity+" -- preLastActivity: "+prelastActivity);
                    display("Elapsed time is "+ toc +" seconds.");
                    display(late)
                    if(none==true)
                        % fwrite(device,'A')
                        display("none battaaaa");
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_F   )
                        pause(0.1);
                        
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        pause(0.1);
                        %    rob.keyPress(KeyEvent.VK_V  )
                        %    pause(0.1);
                        %    rob.keyRelease(KeyEvent.VK_V  )
                        %    display("none VK_V");
                        
                        %    rob.keyPress(KeyEvent.VK_RIGHT  )
                        %    pause(0.1);
                        %    rob.keyPress(KeyEvent.VK_DOWN  )
                        %    pause(0.1);
                        %    rob.keyRelease(KeyEvent.VK_RIGHT  )
                        %    rob.keyRelease(KeyEvent.VK_DOWN  )
                        %    display("none VK_V");
                        %    rob.keyPress(KeyEvent.VK_V  )
                        %    pause(0.1);
                        %    rob.keyRelease(KeyEvent.VK_V  )
                        %    display("none VK_V");
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        display(" VK_R");
                        pause(0.1);
                    else
                        %fwrite(device,'B')
                    end
                    
                    
                    pos = [0 0 3840 2160]; % [left top
                    % width height]
                    rect = java.awt.Rectangle(pos(1),pos(2),pos(3),pos(4));
                    cap = rob.createScreenCapture(rect);
                    % Convert to an RGB image
                    rgb = typecast(cap.getRGB(0,0,cap.getWidth,cap.getHeight,[],0,cap.getWidth),'uint8');
                    imgData = zeros(cap.getHeight,cap.getWidth,3,'uint8');
                    imgData(:,:,1) = reshape(rgb(3:4:end),cap.getWidth,[])';
                    imgData(:,:,2) = reshape(rgb(2:4:end),cap.getWidth,[])';
                    imgData(:,:,3) = reshape(rgb(1:4:end),cap.getWidth,[])';
                    snapshot1=imgData;
                    snapshot1 = rgb2gray(snapshot1);
                    snapshot1=wiener2(snapshot1,[80 80]);
                    snapshot1=edge(snapshot1,'sobel');
                    snapshot1=  im2uint8(snapshot1);
                    %    T_Oleada_derrota= ssim(Oleada_derrota,snapshot1);
                    %    T_MP_sol = ssim(MP_sol,snapshot1);
                    %  T_Oleada_derrota=0;
                    
                    T_MP= (ssim(MP,snapshot1));
                    if(T_MP > (0.89) || T_MenuPS > (0.93) || T_ErrorApp > (0.93))
                        
                        % fwrite(device,'N')
                        rob.keyPress(KeyEvent.VK_V  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_V  )
                        display("T_MP VK_V");
                        lastActivity= datestr(now, 'dd/mm/yy-HH:MM')+" T_MP "+ T_MP +" "+"T_MenuPS "+ T_MenuPS +" "+"T_ErrorApp "+ T_ErrorApp;
                        dtLastAct=now;
                        none=false;rob.keyRelease(KeyEvent.VK_F);
                        T_MenuPS=0;
                        T_ErrorApp=0;
                        break;
                    end
                    T_MBs= (ssim(MBs,snapshot1));
                    if(T_MBs > (0.9))
                        %  fwrite(device,'N')
                        rob.keyPress(KeyEvent.VK_2  )
                        pause(0.3);
                        rob.keyRelease(KeyEvent.VK_2  )
                        display("T_MBs VK_2");
                        pause(0.3);
                        none=false;rob.keyRelease(KeyEvent.VK_F);
                        rob.keyPress(KeyEvent.VK_V  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_V  )
                        display("VK_V");
                        pause(0.1);
                        none=false;rob.keyRelease(KeyEvent.VK_F);
                        rob.keyPress(KeyEvent.VK_2  )
                        pause(0.3);
                        rob.keyRelease(KeyEvent.VK_2  )
                        display(" VK_2");
                        pause(0.3);
                        rob.keyPress(KeyEvent.VK_V  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_V  )
                        pause(1);
                        display("T_MBs VK_V");
                        %     fwrite(device,'A')
                        none=true;
                        lastActivity= datestr(now, 'dd/mm/yy-HH:MM')+" T_MBs "+ T_MBs ;
                        dtLastAct=now;
                        break;
                    end
                    if(none==true)
                        % fwrite(device,'A')
                        display("none battaaaa");
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_F   )
                        pause(0.1);
                        
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        display(" VK_R");
                        pause(0.1);
                    else
                        %fwrite(device,'B')
                    end
                    %    T_BT= (ssim(BT,snapshot1));
                    %
                    %       if(T_BT > (0.91))
                    %         none=true;
                    %         %  fwrite(device,'A')
                    %         display("T_BT ifffffffff");
                    %
                    %
                    %     end
                    
                    T_END= (ssim(END,snapshot1));
                    T_ENDwin= (ssim(ENDwin,snapshot1));
                    if(T_END > (0.94) || T_ENDwin> (0.94))
                        %   fwrite(device,'N')
                        rob.keyPress(KeyEvent.VK_V  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_V  )
                        display("T_END VK_V");
                        none=false;rob.keyRelease(KeyEvent.VK_F);
                        lastActivity= datestr(now, 'dd/mm/yy-HH:MM')+" T_END "+ T_END +" "+"T_ENDwin "+ T_ENDwin;
                        dtLastAct=now;
                        break;
                    end
                    
                    T_Oleada= (ssim(Oleada,snapshot1));
                    if(T_Oleada > (0.92))
                        %  fwrite(device,'N')
                        none=true;
                        rob.keyPress(KeyEvent.VK_V  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_V  )
                        display("T_Oleada VK_V");
                        lastActivity= datestr(now, 'dd/mm/yy-HH:MM')+" T_Oleada "+ T_Oleada ;
                        dtLastAct=now;
                        break;
                    end
                    
                    T_FinOleada= (ssim(FinOleada,snapshot1));
                    if(T_FinOleada > (0.93))
                        %   fwrite(device,'N')
                        rob.keyPress(KeyEvent.VK_V  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_V  )
                        display("T_FinOleada VK_V");
                        none=false;rob.keyRelease(KeyEvent.VK_F);
                        lastActivity= datestr(now, 'dd/mm/yy-HH:MM')+" T_FinOleada "+ T_FinOleada ;
                        dtLastAct=now;
                        break;
                    end
                    if(none==true)
                        % fwrite(device,'A')
                        display("none battaaaa");
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_F   )
                        pause(0.1);
                        
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        pause(0.1);
                        
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        display(" VK_R");
                        pause(0.1);
                    else
                        %fwrite(device,'B')
                    end
                    T_Evento= (ssim(Evento,snapshot1));
                    if(T_Evento > (0.92) || T_PP > (0.89643) || T_AcercaInforme > (0.92))
                        rob.keyPress(KeyEvent.VK_C)
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_C   )
                        display("T_Evento VK_C");
                        none=false;rob.keyRelease(KeyEvent.VK_F);
                        lastActivity= datestr(now, 'dd/mm/yy-HH:MM')+" T_Evento "+ T_Evento +" "+"T_PP "+ T_PP +" "+"T_AcercaInforme "+ T_AcercaInforme;
                        dtLastAct=now;
                        if(T_PP> (0.89643))
                            pause(0.5);
                            rob.keyPress(KeyEvent.VK_1 )
                            pause(0.3);
                            rob.keyRelease(KeyEvent.VK_1  )
                            pause(0.1);
                            display("T_PP VK_1");
                            T_PP=0;
                        end
                        T_AcercaInforme=0;
                        
                        break;
                        
                    end
                    
                    if(T_Soldados > (0.91) || T_Ataquetome> (0.92) )
                        rob.keyPress(KeyEvent.VK_C   )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_C   )
                        pause(0.2);
                        rob.keyPress(KeyEvent.VK_C   )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_C   )
                        pause(0.1);
                        display("T_Soldados VK_C");
                        none=false;rob.keyRelease(KeyEvent.VK_F);
                        lastActivity= datestr(now, 'dd/mm/yy-HH:MM')+" T_Soldados "+ T_Soldados +" "+"T_Ataquetome "+ T_Ataquetome;
                        dtLastAct=now;
                        T_Soldados=0;
                        T_Ataquetome=0;
                        
                        break;
                    end
                    if(none==true)
                        % fwrite(device,'A')
                        display("none battaaaa");
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_F   )
                        pause(0.1);
                        
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        pause(0.1);
                        rob.keyPress(KeyEvent.VK_R  )
                        pause(0.1);
                        rob.keyRelease(KeyEvent.VK_R   )
                        display(" VK_R");
                        pause(0.1);
                    else
                        %fwrite(device,'B')
                    end
                    T_PP=(ssim(PP,snapshot1));
                    T_MenuPS= (ssim(MenuPS,snapshot1));
                    T_Soldados= (ssim(Soldados,snapshot1));
                    T_Ataquetome= (ssim(Ataquetome,snapshot1));
                    T_ErrorApp= (ssim(ErrorApp,snapshot1));
                    T_AcercaInforme=(ssim(AcercaInforme,snapshot1));
                    display("-----------FIN-----------------");
                    toc
                end
                toc
                display("-------Fin---------- Log:"+NoLog+" -- LastActivity: "+lastActivity+" -- preLastActivity: "+prelastActivity);
                display("Elapsed time is "+ toc +" seconds.");
                display("Minutes ");
                display(dt);
                pause(1);
            end
            
        end
    end
end