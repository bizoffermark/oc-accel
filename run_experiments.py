import subprocess
import os

project_path = "/mnt/panzer/kanellok/HetPath"
results_path = "/mnt/panzer/kanellok/holocron_results/"
input_path_rmat = "/mnt/panzer/kanellok/HetPath/graph_workloads/inputs/ljournal.out" #source vertex
config_path = project_path+"/sniper-7.2/config/motivation_overhead/"
apps_path = project_path+"/graph_workloads/micro2021_benchmarks/"
sniper_path = "/mnt/panzer/mcavlak/hetpath/sniper/"
sniper_exe  = project_path + "/sniper-7.2/run-sniper"

configs = []

for config in os.listdir(config_path):
    print config_path+config
    configs.append(" -c " + config_path+config)


app_arg = " -- "
apps = []

for current, dirs, files in os.walk(apps_path):
    for file in files:
        if(file.endswith(".e")):
            print(current+"/"+file)
            apps.append(current+"/"+file+" "+input_path_rmat)


#for input in os.listdir(input_path_other):
#    print input_path_other+input
#    apps.append(project_path + "graph_workloads/sr-benchmarks/PR/baseline/pagerank.e " + input_path_other+input )

args = " -s stop-by-icount:1000000000 --roi --no-cache-warming "

for app in apps:
    for config in configs:

        output =  results_path+"/micro2021_results/motivation_xmem_overhead/"+app.split(" ")[0].split("/")[-1].split(".")[0]+"_"+config.split("/")[-1].split(".")[0]
        srun_err = results_path+"/micro2021_results/motivation_xmem_overhead/err/"+app.split(" ")[0].split("/")[-1].split(".")[0]+"_"+config.split("/")[-1].split(".")[0]
        srun_out = results_path+"/micro2021_results/motivation_xmem_overhead/out/"+app.split(" ")[0].split("/")[-1].split(".")[0]+"_"+config.split("/")[-1].split(".")[0]

        print("srun -e " + srun_err + " -o " + srun_out + " " + sniper_exe + args + " -d " + output + config + app_arg + app + " &")
       #os.system("srun -x kratos1,kratos10,kratos9 -e " + srun_err + " -o " + srun_out + " " + sniper_exe + args + " -d " + output + config + app_arg + app + " &")