function testGetMatchedSleepEdfXmlfiles
%testGetMatchedSleepEdfXmlfiles Search recursively for EDF and XML(annotations) files
%      GetMatchedSleepFiles is a function for identifying EDF and annotation
%  files often collected as part of a sleep study. The file list can be exported 
%  to an Excel file or returned as a cell array.
%
%
% Version: 0.1.03
%
% ---------------------------------------------
% Dennis A. Dean, II, Ph.D
%
% Program for Sleep and Cardiovascular Medicine
% Brigam and Women's Hospital
% Harvard Medical School
% 221 Longwood Ave
% Boston, MA  02149
%
% File created: November 25, 2012
% Last update:  May 1, 2014 
%    
% Copyright © [2013] The Brigham and Women's Hospital, Inc. THE BRIGHAM AND 
% WOMEN'S HOSPITAL, INC. AND ITS AGENTS RETAIN ALL RIGHTS TO THIS SOFTWARE 
% AND ARE MAKING THE SOFTWARE AVAILABLE ONLY FOR SCIENTIFIC RESEARCH 
% PURPOSES. THE SOFTWARE SHALL NOT BE USED FOR ANY OTHER PURPOSES, AND IS
% BEING MADE AVAILABLE WITHOUT WARRANTY OF ANY KIND, EXPRESSED OR IMPLIED, 
% INCLUDING BUT NOT LIMITED TO IMPLIED WARRANTIES OF MERCHANTABILITY AND 
% FITNESS FOR A PARTICULAR PURPOSE. THE BRIGHAM AND WOMEN'S HOSPITAL, INC. 
% AND ITS AGENTS SHALL NOT BE LIABLE FOR ANY CLAIMS, LIABILITIES, OR LOSSES 
% RELATING TO OR ARISING FROM ANY USE OF THIS SOFTWARE.
%

% Test Files
testEdfDir = '.\testEdf';    % Generated data file
testEdfResultDir = '.\testFileList.xls';    % Generated data file
         % Generated data file

% Test flags
RUN_TEST_1 =  1;    % Create test edf and annotation file list

% ------------------------------------------------------------------ Test 1
% Test 1: Load and plot generated file
if RUN_TEST_1 == 1
    % Write test results to console
    fprintf('------------------------------- Test 1\n\n');
    fprintf('Generate EDF/XML list from ''testEdf'' folder\n\n');
    
    % Process folder and create and Excel file
    GetMatchedSleepEdfXmlFiles(testEdfDir, testEdfResultDir);
    
    % Process folder and return file information
    matchedFileInfo = ...
        GetMatchedSleepEdfXmlFiles(testEdfDir, testEdfResultDir);
end

end

