# install yarn
npm install -g yarn

# install cli
npm install -g @angular/cli

# enable yarn for angular cli
ng set --global packageManager=yarn

# create keep app
ng new keep

# force live reload
ng serve --poll=2000
