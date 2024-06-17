#!/bin/bash
tmux new-session -d -s backend
tmux new -d -s backend 'kubectl port-forward --address 0.0.0.0 $(kubectl get po --selector=app=backend -o=name) 8080:8080'
tmux attach-session -t backend
