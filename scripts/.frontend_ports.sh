#!/bin/bash
tmux new-session -d -s frontend
tmux new -d -s frontend "kubectl port-forward --address 0.0.0.0 $(kubectl get po --selector=app=frontend -o=name) 8081:80"
tmux attach-session -t frontend