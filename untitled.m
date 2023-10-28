%% SLEEP PLANNER AND SCHEDULING
%% WRITTEN BY BURTON ZHONG


option = inputdlg('Do you want to wake or sleep at a certain time?', 's');

if strcmp(option{1}, 'sleep')
    sleepTime = inputdlg('Enter your sleep time (HH:MM AM/PM): ', 's');
    sleepTimeNum = datenum(sleepTime{1}, 'hh:MM AM');
    age = inputdlg('What age are you?');
    age = str2double(age{1}); 

    if age >= 13 && age <= 18
        for cycle = 3:5
            wakeUpTimeNum = sleepTimeNum + (cycle * 90 / (24*60));
            wakeUpTimeStr = datestr(wakeUpTimeNum, 'hh:MM AM');
            fprintf('You can wake up at the end of the %dth sleep cycle at %s\n', cycle, wakeUpTimeStr);
        end
    elseif age >= 0 && age <= 12
        for cycle = 6:8
            wakeUpTimeNum = sleepTimeNum + (cycle * 90 / (24*60));
            wakeUpTimeStr = datestr(wakeUpTimeNum, 'hh:MM AM');
            fprintf('You can wake up at the end of the %dth sleep cycle at %s\n', cycle, wakeUpTimeStr);
        end
    else
        for cycle = 4:6
            wakeUpTimeNum = sleepTimeNum + (cycle * 90 / (24*60));
            wakeUpTimeStr = datestr(wakeUpTimeNum, 'hh:MM AM');
            fprintf('You can wake up at the end of the %dth sleep cycle at %s\n', cycle, wakeUpTimeStr);
        end
    end

elseif strcmp(option{1}, 'wake') 
   
    wakeTime = inputdlg('Enter your wake-up time (HH:MM AM/PM): ', 's');
    wakeTimeNum = datenum(wakeTime{1}, 'hh:MM AM');
    age = inputdlg('What age are you?');
    age = str2double(age{1}); 

    if age >= 13 && age <= 18
        for cycle = 3:5
            sleepTimeNum = wakeTimeNum - (cycle * 90 / (24*60));
            sleepTimeStr = datestr(sleepTimeNum, 'hh:MM AM');
            fprintf('You should go to sleep at the end of the %dth sleep cycle at %s\n', cycle, sleepTimeStr);
        end
    elseif age >= 0 && age <= 12
        for cycle = 6:8
            sleepTimeNum = wakeTimeNum - (cycle * 90 / (24*60));
            sleepTimeStr = datestr(sleepTimeNum, 'hh:MM AM');
            fprintf('You should go to sleep at the end of the %dth sleep cycle at %s\n', cycle, sleepTimeStr);
        end
    else
        for cycle = 4:6
            sleepTimeNum = wakeTimeNum - (cycle * 90 / (24*60));
            sleepTimeStr = datestr(sleepTimeNum, 'hh:MM AM');
            fprintf('You should go to sleep at the end of the %dth sleep cycle at %s\n', cycle, sleepTimeStr);
        end
    end

end


