#!/bin/bash
tmux new-session -d -s frontend
tmux send-keys -t frontend "kubectl port-forward --address 0.0.0.0 $(kubectl get po --selector=app=frontend -o=name) 8081:80" C-m
tmux attach-session -t frontend