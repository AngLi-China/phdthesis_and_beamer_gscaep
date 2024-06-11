function Ex1_getData(files)
% Ex1_getData(["Ex1_CFL0.600000_S2O4-HHC4theta50", "Ex1_CFL0.600000_S2O4-HWENO5","Ex1_CFL0.600000_S2O4-HHC6theta5000","Ex1_CFL0.600000_S2O4-HHC8theta500000"])
    fid = fopen("Ex1_data.dat",'w');
    fprintf(fid, "VARIABLES = ""CPU Time"",""Linf""\n");
    nfiles = length(files);
    for j = 1:nfiles
        showname = regexp(files(j),'([a-zA-Z0-9, ]+-[a-zA-Z0-9()\.-]+)','match');
        data = load(files(j)+".csv");  
        [nrow, ncol] = size(data);
        if ncol < 7
            ME = MException('MyComponent:noSuchVariable', '%d < 7', ncol);
            throw(ME)
        end

        fprintf(fid, "ZONE T=""%s"" I=%i, F=POINT\n", showname{1}, nrow);
        for i = 1:nrow
            fprintf(fid, "%d %d\n", data(i,3), data(i,6));
        end
    end
    fclose(fid);
end