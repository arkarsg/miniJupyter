#!/bin/bash
helm upgrade --cleanup-on-fail --install jupyterhub-3.3.6 jupyterhub/jupyterhub \
  --namespace jh \
  --create-namespace \
  --values config.yaml \
  --values profiles.yaml \
  --timeout=10m
