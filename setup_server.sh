toxiproxy-cli create Conclave --listen 127.0.0.01:54323 --upstream 127.0.0.1:61001 
toxiproxy-cli toxic add Conclave -t latency -n latency_upstream -a latency=100 --upstream
toxiproxy-cli toxic add Conclave -t latency -n latency_downstream -a latency=100 --downstream
toxiproxy-cli toxic add Conclave -t bandwidth -n bandwidth_upstream -a rate=10000 --upstream
toxiproxy-cli toxic add Conclave -t bandwidth -n bandwidth_downstream -a rate=10000 --downstream
