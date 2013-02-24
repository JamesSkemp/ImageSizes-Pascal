program ChooseRatio (input, output);
label
     new_ratio, new_number, finish_this;
var
     startnum : integer; {Number to start with}
     numabove, numbelow : integer; {number above startnum, and number below startnum}
begin
     writeln('Image Sizes v1.0');
     writeln('Created by James Skemp - http://jamesrskemp.net/'); {2003.11.07}
     writeln;
     writeln('This program will take the ratio that you select and use it to create a number');
     writeln('combo to a number you enter.');
     writeln('The standard image ratio is 4x3.  This program will assume that the beginning');
     writeln('ratio that you enter is the ratio that you would like to continue with.');
     new_ratio:
     writeln('Please type in the ratio that you would like to use.  To do this, simply type');
     writeln('in two numbers, seperated by a space, and then press enter.');
     writeln;
     read(numabove);
     read(numbelow);
     writeln;
     writeln('You have decided to choose a ', numabove, 'x', numbelow,' ratio.');
     new_number:
     writeln('I''ll now need a number to fit into the ratio.');
     writeln('Or, type a zero (0) to QUIT, a one (1) to choose a NEW ratio.');
     read(startnum);
       if startnum=0 then goto finish_this;
       if startnum=1 then goto new_ratio;
     writeln('You''ve decided to use ',startnum,' as your number.');
     writeln;
     writeln('You''re ratio could be either;');
     writeln((startnum DIV numbelow)*numabove,'x',startnum);
     writeln('or');
     writeln(startnum,'x',(startnum DIV numabove)*numbelow);
       if (startnum MOD numbelow or startnum MOD numabove) <> 0 then
         begin
           writeln('Please note that your number does not perfectly work with your ratio,');
           writeln('which means that you may wish to choose a different number.');
         end;
     writeln;
     writeln('---+++---');
     writeln;
     goto new_number;
     finish_this:
     writeln('Thanks for using this program :)');
end.
