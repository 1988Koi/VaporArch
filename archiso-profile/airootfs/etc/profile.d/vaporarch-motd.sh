if [ -n "$PS1" ]; then
  echo ""
  echo " VaporArch Linux - DevOps tools"
  echo " _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-"
  echo " docker:       $(docker --version 2>/dev/null | cut -d',' -f1)"
  echo " kubectl:      $(kubectl version --client 2>/dev/null | head -1)"
  echo " terraform:    $(terraform --version 2>/dev/null | head -1)"
  echo " ansible:      $(ansible --version 2>/dev/null | head -1)"
  echo " helm:         $(helm version --short 2>/dev/null)"
  echo ""
  echo "Thank you for using VaporArch!"
fi
