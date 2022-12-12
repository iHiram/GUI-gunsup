which -all getItems
display("BATCH");
rob=Robot;
none=true;
while 1
    if(none==true)
        % fwrite(device,'A')
        display("BATCH");
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
end