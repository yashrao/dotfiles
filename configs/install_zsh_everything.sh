mkdir ~/.zsh

# Zsh Autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "## Zsh-autosuggestions" >> ~/.zsh/custom.zsh
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zsh/custom.zsh
echo "Restart your terminal" 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting

# Zsh Syntax-highlighting
echo "## Zsh-syntax-highlighting" >> ~/.zsh/custom.zsh
echo "source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zsh/custom.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
echo "Done"
echo "Installing Liquidprompt"

# LiquidPrompt
echo "## LiquidPrompt" >> ~/.zsh/custom.zsh
cd
git clone https://github.com/nojhan/liquidprompt.git ~/.zsh/liquidprompt
echo "source ~/.zsh/liquidprompt/liquidprompt" >> ~/.zsh/custom.zsh
source ~/.zsh/custom.zsh

echo "Done"
