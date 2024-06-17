#!/bin/bash
tmux new-session -d -s backend
tmux send-keys -t backend 'kubectl port-forward --address 0.0.0.0 $(kubectl get po --selector=app=backend -o=name) 8080:8080' C-m
tmux attach-session -t backend
