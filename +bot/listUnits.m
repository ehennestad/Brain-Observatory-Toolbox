% Retrieve table of Neuropixels probes information for an Allen Brain Observatory dataset
%
% Supports the Visual Coding Neuropixels [1] dataset from the Allen Brain Observatory [2]. 
%
% Web data accessed via the Allen Brain Atlas API [3]. 
%
% [1] Copyright 2019 Allen Institute for Brain Science. Visual Coding Neuropixels dataset. Available from: https://portal.brain-map.org/explore/circuits/visual-coding-neuropixels
% [2] Copyright 2016 Allen Institute for Brain Science. Allen Brain Observatory. Available from: https://portal.brain-map.org/explore/circuits
% [3] Copyright 2015 Allen Institute for Brain Science. Allen Brain Atlas API. Available from: https://brain-map.org/api/index.html
%
%% function units = listUnits(include_metrics)
function unitsTable = listUnits(include_metrics, ephys_unit_filter)
arguments
    include_metrics logical = false;
    ephys_unit_filter bot.util.parameters.EphysUnitFilter = bot.util.parameters.EphysUnitFilter()
end

manifest = bot.item.internal.Manifest.instance('ephys');
   unitsTable = manifest.ephys_units;
   
   % - Trim metrics from table
   if ~include_metrics
       unitsTable = removevars(unitsTable, bot.item.Unit.METRIC_PROPERTIES);
   end
end

