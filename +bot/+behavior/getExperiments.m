% Obtain object array representing identified unit item(s) from an Allen Brain Observatory dataset
%
% NOTE: Most known analysis workflows can be carried out using session item information and objects (and subordinate linked objects)
% 
% Supports the Visual Behavior 2P [1] dataset from the Allen Brain Observatory [2]. 
%
% Specify item(s) by unique numeric IDs for item. These can be obtained via:
%   * table returned by bot.listExperiments() 
%   * tables contained by other item objects (sessions)
%   
% Can also specify item(s) by supplying an information table of the format
% returned by bot.behavior.listExperiments. This is often useful when such a table has
% been "filtered" to one or a few rows of interest via table indexing
% operations.
%
% [1] Copyright 2016 Allen Institute for Brain Science. Visual Behavior 2P dataset. Available from: https://portal.brain-map.org/explore/circuits/visual-behavior-2p
% [2] Copyright 2016 Allen Institute for Brain Science. Allen Brain Observatory. Available from: https://portal.brain-map.org/explore/circuits
% 
%% function experimentObj = getExperiments(experimentIDSpec)
function experimentObj = getExperiments(experimentIDSpec)

arguments
    experimentIDSpec {bot.item.internal.abstract.Item.mustBeItemIDSpec}
end

% - Return the experiment object
experimentObj = bot.behavior.item.Experiment(experimentIDSpec);
