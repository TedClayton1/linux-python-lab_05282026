 


file_path = "data/server_usage.txt"

print("SERVER DISK USAGE REPORT")
print("========================")
print("Server audit started at:", __import__("datetime").datetime.now().strftime("%Y-%m-%d %H:%M:%S"))
print("Reading server usage data from file...")

with open(file_path, "r") as file:
    for line in file:
        line = line.strip()

        server_name, usage = line.split(",")

        usage = int(usage)        

        if usage >= 90:
            print(f"CRITICAL: {server_name} is at {usage}% disk usage")
        elif usage >= 80:
            print(f"WARNING: {server_name} is at {usage}% disk usage")
        else:
            print(f"OK: {server_name} is at {usage}% disk usage")