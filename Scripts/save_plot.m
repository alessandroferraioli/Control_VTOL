close all;
clc;
vars = who('-regexp', 'Plot');
path = 'C:\Users\ferra\Desktop\Projects\Matlab\Thesis\Figures';

num_plot = length(vars);

for i=1:1:num_plot
    name = vars(i);
    name = name{1};
    value = eval(name)
    split_name = (strsplit(name,'_'));

    system = split_name{2};
    var_controlled = split_name{length(split_name)-1};
    var_x_axis = split_name{length(split_name)};
    str_title = strcat(system,'-',var_controlled);
    
    close all
    fg=figure('Name',str_title,'units','normalized','outerposition',[0 0 1 1]);
    plot(value(:,1),value(:,2))
    title(str_title);
    xlabel(var_x_axis);
    ylabel(var_controlled);
    grid on;

    name_file = strcat(str_title,'.jpg');
    saveas(fg ,fullfile(path , name_file));
    disp('fig saved');

end
