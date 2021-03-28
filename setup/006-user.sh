#!/bin/bash
adduser dodo --shell zsh
usermod -aG sudo -aG docker dodo
