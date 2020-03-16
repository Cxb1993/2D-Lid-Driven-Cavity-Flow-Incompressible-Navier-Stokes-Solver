# �񈳏k�� Navier-Stokes �������̐��l��@�P�F������


Copyright (c) 2020, The MathWorks, Inc.


# �͂��߂�


Navier-Stokes �������𐔒l�I�ɉ����܂��B�ӊO�ƊȒP�ɗ��̃V�~�����[�V�����ł���񂾂ȁA�A�Ǝv���Ă��炦��Ɗ������ł��B


  
# ���̋L���̃S�[��


�ЂƂ܂��u�����΁v�Ƃ��ẴS�[����



   -  �ȉ��̐}����邱�� 
   -  �����i�K�@�iFractional Step Method�j�@�𗝉����邱�� 



![image_0.png](vanilaCavityFlow_JP_images/image_0.png)




���U���ɍۂ��� Perot (1993) �̋��E�����̋c�_�͂��܂���{��Ō������Ȃ��̂ŁA�V�������ɂȂ�΂Ǝv���܂��B




CFD �Ɋւ����ɂƂ��Ă͊�{�I�Ȃ��Ƃ��Ǝv���܂����A�����̌o���� 2014�N������Ŏ~�܂��Ă���̂œ������v���o���Ȃ��珑���Ă��܂��B���ӌ�������Ɗ������ł��B


## ���ӓ_


�����ŏЉ�Ă���R�[�h�́A���Ԑϕ��͈ꎟ���x�̃I�C���[�z��@�A�g�U�����z��@�Ȃ̂ŏ����iReynolds ���A�O���b�h���j��ς���Ɣ��U���܂��B���ꂼ��ւ̑΍�ɂ��Ă͂܂�����I


## ���s��

   -  MATLAB R2019b 
   -  Signal Processing Toolbox (����*) 



*) �|���\�������������������� Signal Processing Toolbox ���g���Ă��܂����A���ږ@�┽���@�ɂ���� MATLAB �{�̂�����OK�ł��B


# �Ȃ� MATLAB �� CFD�H


���l�v�Z���Č��Ǎs��v�Z�Ȃ̂� MATLAB �����ӂȗ̈�͂��B�������ȒP�Ȃ̂Ő��l���̂̓����Ƃ��Ă͂����c�[�����Ǝv���܂��B




�ł��v�Z���x���E�E�Ƃ������O������܂��� R2015b �ȍ~�A�v�Z�G���W�������V���ꑬ���Ȃ��Ă���ƕ������AMATLAB Coder �� Parallel Computing Toolbox �����܂��g���΂��̂܂ܑ�K�͂Ȍv�Z���ł���悤�ȃR�[�h�����������ł���̂ł́E�E�H�Ƃ����W�����҂�����܂��B


# �V�~�����[�V�����Ώ�


���l���̗͊w�� "Hello World" �I�ۑ�B�Q������ Lid-Driven cavity flow �i�L���r�e�B����j���v�Z���܂��B�摜��������Ƒ�R���ʂ��ς��Ă��邱�Ƃ�����킩��ʂ�A���Ȃ�������ꂽ�Ώۂł��BGhia 1982 [1] ���ǂ��Q�Ƃ���܂��B




�����ł͒�Ԓʂ�񈳏k�����肵�A�v�Z�̈�͐����`�A�����ċ��E�����͑�σV���v���ɏ�ӂ����������ɑ��x������܂��B�W�����ɃX���C�h����悤�ȃC���[�W�ł��B�����̗��̂����������Ď��v���ɂ��邮����z�������܂��B




![image_1.png](vanilaCavityFlow_JP_images/image_1.png)




�b������ɊȒP�ɂ��邽�߁A�v�Z�O���b�h�iStaggerd Grid�j�͓��Ԋu��z�肵�܂��B���̗̂����o���Ȃ��̂ŋ��E�����I�Ɍv�Z���y�ł��B�܂����E�����ŗV�񂾂肷���₱�����Ƃ���͂܂�����ȍ~�B


  
# Navier-Stokes �������i�񈳏k�j


�܂��͎x�z�������𐔒l�I�ɉ�����悤�ɗ��U�����܂��B����Ώۂɂ��鎮�͂�����



<img src="https://latex.codecogs.com/gif.latex?\begin{array}{rl}&space;\frac{\partial&space;{u}}{\partial&space;t}+{u}\cdot&space;\nabla&space;{u}&space;&&space;=-\nabla&space;p+\frac{1}{Re}\nabla^2&space;{u}\\&space;\nabla&space;\cdot&space;{u}&space;&&space;=0&space;\end{array}"/>



�^���ʕۑ��Ǝ��ʕۑ��̎��ł��B���ꂼ��̍����Ӗ�����Ƃ���͗��̗͊w�̋��ȏ��ŕ��K���ĉ������܂��B ���� <img src="https://latex.codecogs.com/gif.latex?\inline&space;p"/> �̎��������̂��񈳏k���Ȃ�ł͂̉ۑ�B


  
# Fractional Step Method�i�����i�K�@�j


�����ł͕����i�K�@�ƌĂ΂����@�� 2 �i�K�ɕ����ĉ����܂��B



   1.  �܂��^���ʂ̎����爳�͍�����菜�������ŉ��̑��x������߂�B 
   1.  ���ʕۑ��̎��𖞂����悤�ɉ��̑��x����X�V���ĐV�������x��Ƃ���B 



���̎�@���̂� Harlow and Welch (1965) [2] �� Chorin (1968) [3] �ȂǂŒ�Ă��ꂽ�ƏЉ��邱�Ƃ������AMAC (Marker and Cell method) �@�Ƃ��Ă΂�܂��B���͍����c�����o�[�W������ SMAC (Simplified MAC) �Ƃ��B���̕ӂ̗��j��Ăі��͐����͂����藝���ł��Ă��Ȃ��̂ł����A�ڂ������R�����g���������I���Ԕ��W�̍����x���E���艻��}���� Kim and Moin (1985) [4] �̎�@�����p�I�ł��B


## ���͂̋��E����


���Ȃ݂ɂ��̎�@�� 


> *serious confusion and/or disagreement concerning boundary conditions and the details of the methods implementation* (Perot 1993) [5]




�ȂǂƁA���ċc�_������オ���Ă���A�����̂�����͐��� Perot (1993) [5] ���Q�Ƃ��Ă݂Ă��������B���E�������H�v���� H. Le and P. Moin (1991) [6] �Ȃǂ��ʔ����Ǝv���܂��B���ƂȂ��Ă͌Â��b�Ȃ�ł��傤���ǁB




�l�I�ɂ� Perot (1993) [5] �� Chang (2002) [7] �ŏЉ��Ă���A���U������ Navier-Stokes �������� LU �������x�[�X�ɂ����c�_���C�ɓ����Ă���̂ŁA����������ł͍̗p���܂��B**���͂̋��E�����͕s�v�I**�ƑN�₩�Ȍ�����񎦂��Ă��܂��B


# ���U����@


�����ł͘b���ȒP�ɂ��邽�߂ɁA�v���؂��� 1 �����x�̃I�C���[�̗z��@�Ŏ��Ԑϕ�����Ƃ��܂��B��������Ɨ��U������ Navier-Stokes ��������



 <img src="https://latex.codecogs.com/gif.latex?\begin{array}{rl}&space;\frac{{u}^{n+1}&space;-{u}^n&space;}{dt}&space;&&space;=-{G}p-{{{Nu}}}^n&space;+\frac{1}{Re}{{{Lu}}}^n&space;\\&space;{{{Du}}}^{n+1}&space;&space;&&space;=bc^{n+1}&space;&space;\end{array}"/>



�ƂȂ�A�s��ŕ\�������



<img src="https://latex.codecogs.com/gif.latex?\left\lbrack&space;\begin{array}{cc}&space;{I}&space;&&space;{G}\\&space;{D}&space;&&space;{0}&space;\end{array}\right\rbrack&space;\left\lbrack&space;\begin{array}{c}&space;{u}^{n+1}&space;\\&space;p^{\prime&space;}&space;&space;\end{array}\right\rbrack&space;=\left\lbrack&space;\begin{array}{c}&space;{r}^n&space;\\&space;{0}&space;\end{array}\right\rbrack&space;+\left\lbrack&space;\begin{array}{c}&space;{0}\\&space;bc&space;\end{array}\right\rbrack"/>



����Ȋ����B




������ <img src="https://latex.codecogs.com/gif.latex?\inline&space;{I}"/> �͒P�ʍs��A<img src="https://latex.codecogs.com/gif.latex?\inline&space;{N}"/> �͑Η����̃I�y���[�^�A<img src="https://latex.codecogs.com/gif.latex?\inline&space;{G}"/> �͈��͌��z���v�Z����I�y���[�^�A<img src="https://latex.codecogs.com/gif.latex?\inline&space;{D}"/> �͔��U���v�Z����I�y���[�^�A<img src="https://latex.codecogs.com/gif.latex?\inline&space;bc"/> �͔��U���v�Z����ۂ̑��x�̋��E�����ɋN������ǉ����A<img src="https://latex.codecogs.com/gif.latex?\inline&space;p^{\prime&space;}&space;=dt\cdot&space;p"/>�B������ <img src="https://latex.codecogs.com/gif.latex?\inline&space;{r}^n"/> �́A



<img src="https://latex.codecogs.com/gif.latex?{{r^n&space;}}={u}^n&space;+dt\left\lbrace&space;-{{{Nu}}}^n&space;+\frac{1}{Re}{{{Lu}}}^n&space;\right\rbrace"/>



�ł��B


# LU ���� ���� �����i�K�@


��������A��̎��̍��ӂ� LU �������Ă݂܂��iPerot 1993�j�B



<img src="https://latex.codecogs.com/gif.latex?\left\lbrack&space;\begin{array}{cc}&space;{I}&space;&&space;{0}\\&space;{D}&space;&&space;{{DG}}&space;\end{array}\right\rbrack&space;\left\lbrack&space;\begin{array}{cc}&space;{I}&space;&&space;-{G}\\&space;{0}&space;&&space;{I}&space;\end{array}\right\rbrack&space;\left\lbrack&space;\begin{array}{c}&space;{u}^{n+1}&space;\\&space;p^{\prime&space;}&space;&space;\end{array}\right\rbrack&space;=\left\lbrack&space;\begin{array}{c}&space;{r}^n&space;\\&space;{0}&space;\end{array}\right\rbrack&space;+\left\lbrack&space;\begin{array}{c}&space;{0}\\&space;bc&space;\end{array}\right\rbrack"/>



��₱�����Ȃ��Ă����H




����ɂ����ŁA



<img src="https://latex.codecogs.com/gif.latex?\left\lbrack&space;\begin{array}{cc}&space;{I}&space;&&space;-{G}\\&space;{0}&space;&&space;{I}&space;\end{array}\right\rbrack&space;\left\lbrack&space;\begin{array}{c}&space;{u}^{n+1}&space;\\&space;p^{\prime&space;}&space;&space;\end{array}\right\rbrack&space;=\left\lbrack&space;\begin{array}{c}&space;{u}^*&space;\\&space;p^{\prime&space;}&space;&space;\end{array}\right\rbrack"/>



�ƁA���ӂ̉E���Q�� <img src="https://latex.codecogs.com/gif.latex?\inline&space;{{u^*&space;}}"/> (���̑��x��) �ŕ\������ƁA



<img src="https://latex.codecogs.com/gif.latex?\left\lbrack&space;\begin{array}{cc}&space;{I}&space;&&space;{0}\\&space;{D}&space;&&space;{{DG}}&space;\end{array}\right\rbrack&space;\left\lbrack&space;\begin{array}{c}&space;{u}^*&space;\\&space;p^{\prime&space;}&space;&space;\end{array}\right\rbrack&space;=\left\lbrack&space;\begin{array}{c}&space;{r}^n&space;\\&space;{0}&space;\end{array}\right\rbrack&space;+\left\lbrack&space;\begin{array}{c}&space;{0}\\&space;bc&space;\end{array}\right\rbrack"/>



�ƂȂ�܂��B




�����\�������  <img src="https://latex.codecogs.com/gif.latex?\inline&space;{{u^*&space;}}"/> (���̑��x��) ���̂� <img src="https://latex.codecogs.com/gif.latex?\inline&space;p^{\prime&space;}"/> ����؂藣����܂��B2�i�K�ɂ킯�� <img src="https://latex.codecogs.com/gif.latex?\inline&space;{u}^n&space;\to&space;{u}^*&space;\to&space;{u}^{n+1}"/> �Ƌ��߂�̂����R�Ɍ����Ă��܂��ˁI




���ۂ̏������ɕ��ׂ�ƁE�E



<img src="https://latex.codecogs.com/gif.latex?\begin{array}{cl}&space;{u}^*&space;&space;&&space;={r}^n&space;\\&space;{{DG}}p^{\prime&space;}&space;&space;&&space;={D}{u}^*&space;+bc\\&space;{u}^{n+1}&space;&space;&&space;={u}^*&space;-{G}p^{\prime&space;}&space;&space;\end{array}"/>



�ƂȂ�킯�ł��B��̍s�񎮂�W�J���������B����ŁA�����i�K�@�iFractional Step Method) �̏o���オ��B


  
## �]�k�P�F���͂Ɋւ��Ẵ|���\��������


�悭�����u���͂Ɋւ��Ẵ|���\���������v�Ƃ����̂͂Q�ڂ̎��̂��Ƃł��B�����A�|���\���������ɏo�Ă���Q�K�����̗��U�I�y���[�^�͂Ȃ�ł������킯�ł͂Ȃ��A<img src="https://latex.codecogs.com/gif.latex?\inline&space;{{DG}}"/>�ł���K�v������_�͑�Ϗd�v�B�Q�����x�ł���΁i���ǈ�v���邱�Ƃ������̂Łj���ɂȂ邱�Ƃ͂Ȃ���ł����A�S�����x�̏ꍇ�͂����ɐ��������Ȃ��ƘA�����i���ʕۑ��j����������܂���B


  
## �]�k�Q�FSMAC �@


���� LU �����Ƃ����ϓ_����́A�����i�K�@�Ɉ��͌��z���������� SMAC �@�Ƃ����̂͂Ȃ�ƂȂ��s���Ƃ��Ȃ��ł��ˁB���Ȃ݂Ɉȉ��̃X�e�b�v�ɂȂ�܂��B



<img src="https://latex.codecogs.com/gif.latex?\begin{array}{cl}&space;{u}^*&space;&space;&&space;=-{G}p^n&space;+{r}^n&space;\\&space;{{DG}}\delta&space;p&space;&&space;={D}{u}^*&space;+bc\\&space;{u}^{n+1}&space;&space;&&space;={u}^*&space;-{G}\delta&space;p\\&space;p^{n+1}&space;&space;&&space;=p^n&space;+\delta&space;p.&space;\end{array}"/>



�����A���͌��z�������邾���B


  
# ��Ԕ����ɂ���


���āA���͋�Ԕ����ɂ��Ăł��B




�������̑��x <img src="https://latex.codecogs.com/gif.latex?\inline&space;u"/> �͌v�Z�Z���̍��E�ӂ̒����A�c�����̑��x <img src="https://latex.codecogs.com/gif.latex?\inline&space;v"/> �͌v�Z�O���b�h�̏㉺�ӂ̒����A�����Ĉ��� <img src="https://latex.codecogs.com/gif.latex?\inline&space;p"/> �̓Z���̒����ɒ�`����� Staggered Grid �V�X�e�����g�p���܂��B




���ꂼ��̒�`�ʒu�� index �͈̔͂��������̂��ȉ��̐}�ł��B




![image_2.png](vanilaCavityFlow_JP_images/image_2.png)




�����������v�Z�̈�̋��E��\���A�l���Ɠ����̗l�q��\�����Ă݂܂����B��̐}�ō����͋��E������\���A�I�����W���͋��E�����ƂP�����̑��x�Ō��肷�鉼�z���x�Ƃ��܂��B



<img src="https://latex.codecogs.com/gif.latex?u(i,1)=2u_{bc}&space;-u(i,2)"/>



�Ƃ����l�ɁA���E���u�ĂĂP�����̑��x�Ƃ̓��}�l�����E�����Ɉ�v����悤�Ɍ��肵�܂��B���ۂɏ�Œ�`�����x�z�������ŉ����̂͐��F���ŕ\������Ă��鋫�E�����̑��x�E���݂͂̂ł���_�ɂ����ӂ��������B


## �z��T�C�Y�ƃC���f�b�N�X�ɂ���


�R�[�h���ȑf�����邽�߂ɁA���E�����Ɨ̈�����𓯂��ϐ��Ɏ������܂��B���� index �i�v�f�ʒu�j�Ɣz��T�C�Y�������ϑ��I�B



   -  u: (nx+1) x (ny+2) 
   -  v: (nx+2) x (ny+1) 
   -  p: (nx) x (ny) 



�Ƃ����z��T�C�Y�BMATLAB ���ƗႦ�Η̈�����i���ۂɌv�Z���镔���j��


```matlab
u(2:end-1, 2:end-1)
v(2:end-1, 2:end-1)
p(1:end, 1:end)
```


�Ȃ� `end` ���g���Ƒ����Q�Ƃ��₷���ł��B


  
## ���x���z�i���U�j


����̓V���v���ɂQ�����x�̒��������F<img src="https://latex.codecogs.com/gif.latex?\inline&space;u/v"/> �ɑ΂���



<img src="https://latex.codecogs.com/gif.latex?\begin{array}{rl}&space;{D}{u}=\frac{u(i,j)-u(i-1,j)}{\Delta&space;x}+\frac{v(i,j)-v(i,j-1)}{\Delta&space;y}&space;\end{array}"/>



�ł���A�Z�������� <img src="https://latex.codecogs.com/gif.latex?\inline&space;p"/> �Ɠ����ʒu�ɒ�`����܂��B




**�d�v�|�C���g**�FStaggered Grid �ɂ����Ă�<img src="https://latex.codecogs.com/gif.latex?\inline&space;u/v"/> �̋��E�����Ɋւ�镔���� <img src="https://latex.codecogs.com/gif.latex?\inline&space;bc"/> �ƕʓr��舵�����ƂŁA���E�����͕K�v�Ȃ��悤��<img src="https://latex.codecogs.com/gif.latex?\inline&space;{D}"/> �I�y���[�^���`���܂��B�����ɂ����� <img src="https://latex.codecogs.com/gif.latex?\inline&space;u/v"/> �̋��E�ɐ����Ȑ����i�����o�����j�Ɋւ�镔���� <img src="https://latex.codecogs.com/gif.latex?\inline&space;bc"/> �ɓ���܂��̂ŁA����̂悤�ɗ����o�� 0 �ł���� <img src="https://latex.codecogs.com/gif.latex?\inline&space;bc=0"/>�B


  
## ���͌��z��


�������V���v���ɂQ�����x�̒��������F<img src="https://latex.codecogs.com/gif.latex?\inline&space;p"/> �ɑ΂���



<img src="https://latex.codecogs.com/gif.latex?\begin{array}{rl}&space;{{G_x&space;}}p&space;&&space;=\frac{p(i,j)-p(i-1,j)}{\Delta&space;x}\\&space;{{G_y&space;}}p&space;&&space;=\frac{p(i,j)-p(i,j-1)}{\Delta&space;y}&space;\end{array}"/>



�ł���A���ꂼ��v�Z�̈���� <img src="https://latex.codecogs.com/gif.latex?\inline&space;u/v"/> �Ɠ����ʒu�ɒ�`����܂��B




**�d�v�|�C���g**�FStaggered Grid �ł̂Q�����x�̒��������ɂ����� <img src="https://latex.codecogs.com/gif.latex?\inline&space;{G}"/> �I�y���[�^�ɋ��E�����͕K�v����܂���B�̈���� <img src="https://latex.codecogs.com/gif.latex?\inline&space;p"/> �����ŕK�v�Ȍ��z�͋��܂�܂��B ���ʂƂ��Ĉ��͂̃|���\�������� <img src="https://latex.codecogs.com/gif.latex?\inline&space;{{DG}}p^{\prime&space;}&space;={{RHS}}"/> �������ɂ������āA���͂̋��E�����͌�����s�v�Ƃ����̂� Perot (1993) �̎咣�B


  
## �g�U��


������Q�����x�̒����Q�K�����F<img src="https://latex.codecogs.com/gif.latex?\inline&space;u/v"/> ���ꂼ��ɑ΂���



<img src="https://latex.codecogs.com/gif.latex?{L}u(i,j)=\frac{u(i-1,j)-2u(i,j)+u(i+1,j)}{\Delta&space;x^2&space;}+\frac{u(i,j-1)-2u(i,j)+u(i,j+1)}{\Delta&space;y^2&space;}"/>


<img src="https://latex.codecogs.com/gif.latex?{L}v(i,j)=\frac{v(i-1,j)-2v(i,j)+v(i+1,j)}{\Delta&space;x^2&space;}+\frac{v(i,j-1)-2v(i,j)+v(i,j+1)}{\Delta&space;y^2&space;}"/>



�ł���A���ꂼ��v�Z�̈���� <img src="https://latex.codecogs.com/gif.latex?\inline&space;u/v"/> �Ɠ����ʒu�ɒ�`����܂��B�����ł͋��E�������܂߂��I�y���[�^�Ƃ��Ă����܂��B


  
## �Η���


����́A���U�^����z�^�ȂǂƌĂ΂��\�����@������܂��B�����ŏ����Ɣ��U�^��



<img src="https://latex.codecogs.com/gif.latex?\begin{array}{lr}&space;\frac{\partial&space;\left(u^2&space;\right)}{\partial&space;x}+\frac{\partial&space;\left(uv\right)}{\partial&space;y}\\&space;\frac{\partial&space;\left(uv\right)}{\partial&space;x}+\frac{\partial&space;\left(v^2&space;\right)}{\partial&space;y}&space;\end{array}"/>



���z�^��



<img src="https://latex.codecogs.com/gif.latex?\begin{array}{rl}&space;u\frac{\partial&space;u}{\partial&space;x}+v\frac{\partial&space;u}{\partial&space;y}\\&space;u\frac{\partial&space;v}{\partial&space;x}+v\frac{\partial&space;v}{\partial&space;y}&space;\end{array}"/>



�ł��B




���ʕۑ��̎��i�A���̎��j�����藧���Ă���Ζ{�������Ȏ��Ȃ�ł����A���l���̌��ʂ͈قȂ邱�Ƃ��w�E����Ă��܂��B�܂��A�Q�����x�̋�ԍ����ł���ΒP���ł����A�������x�ɂ��悤�Ƃ���Ɛ������i�݊����ƕۑ����j���m�ۂ���̂��Ȃ��ȑ�ρB�����ɋ����̂�����͐��� Morinishi et al. (1998) [8] �����Ă݂āB




![image_3.png](vanilaCavityFlow_JP_images/image_3.png)




����́A���U�^���g���܂��B�܂��}�̂悤�ɃZ���̒����i<img src="https://latex.codecogs.com/gif.latex?\inline&space;uce/vce"/>�j�ƃZ���̊p�i<img src="https://latex.codecogs.com/gif.latex?\inline&space;uco/vco"/>�j�ł̑��x����}�ŋ��߁A���ꂼ��𗘗p����



<img src="https://latex.codecogs.com/gif.latex?{N}u(i,j)=\frac{uce(i,j)^2&space;-uce(i-1,j)^2&space;}{\Delta&space;x}+\frac{uco(i,j+1)vco(i,j+1)-uco(i,j)vco(i,j)}{\Delta&space;y}"/>


<img src="https://latex.codecogs.com/gif.latex?{N}v(i,j)=\frac{uco(i+1,j)vco(i+1,j)-uco(i,j)vco(i,j)}{\Delta&space;x}+\frac{vce(i,j)^2&space;-vce(i,j-1)^2&space;}{\Delta&space;y}"/>



�ƂȂ��܂��B������܂����ꂼ��v�Z�̈���� <img src="https://latex.codecogs.com/gif.latex?\inline&space;u/v"/> �Ɠ����ʒu�ɒ�`����܂��B


# MATLAB �ɂ�����


�ׂ������b�͈ȏ�I�ł͂��������R�[�h�ɂ��Ă݂܂��B


```matlab
clear
close all
addpath('../functions/');
```
## ��͗̈�̐ݒ�


�J��Ԃ��ɂȂ�܂�������� 1 �����x�̗z��@�B���ԃX�e�b�v�T�C�Y dt ��傫��������AReynolds ������������������Ɗg�U���������Ōv�Z�����U�����Ⴄ�̂ŗv���ӁB


```matlab
Re = 500; % Reynolds number
nt = 50; % max time steps (�������ŏ�������)
Lx = 1; Ly = 1; % domain size
Nx = 80; Ny = 80; % Number of grids
dt = 0.01; % time step;
```


�ݒ荀�ڂ͂����܂ŁB




�O���b�h�T�C�Y��O���b�h�̒����ixce/yce�j�ƃR�[�i�[�ixco/yco�j�ɓ����镔���̍��W�ʒu���v�Z���܂��B


```matlab
% Grid size (Equispaced)
dx = Lx/Nx;
dy = Ly/Ny;
% Coordinate of each grid (cell center)
xce = ((1:Nx)-0.5)*dx;
yce = ((1:Ny)-0.5)*dy;
% Coordinate of each grid (cell corner)
xco = (0:Nx)*dx;
yco = (0:Ny)*dy;
```


���x u/v �ƈ��� p �̔z������O�m��


```matlab
%% Data arrays
% Need pics of grid locations (ToDo)
u = zeros(Nx+1,Ny+2); % velocity in x direction (u)
v = zeros(Nx+2,Ny+1); % velocity in y direction (v)
p = zeros(Nx,Ny); % pressure (lagurange multiplier)
```
## ������ԃv���b�g


�Z�������ł̑��x


```matlab
uce = (u(1:end-1,2:end-1)+u(2:end,2:end-1))/2; % u at cell center
vce = (v(2:end-1,1:end-1)+v(2:end-1,2:end))/2; % v at cell center
```


���x�̑傫���i�����j�𓙍����}�Ńv���b�g���܂��B


```matlab
[Xce,Yce] = meshgrid(xce,yce); % cell center�̍��W�O���b�h
[~,h_abs] = contourf(Xce',Yce',sqrt(uce.^2+vce.^2));
```
```
�x��: �������}�� ZData ���萔�̏ꍇ�̓����_�����O����܂���
```
```matlab
xlim([0 Lx]); ylim([0 Ly]);
```

![figure_0.png](vanilaCavityFlow_JP_images/figure_0.png)



�܁A�A���R�Ȃ��珉����Ԃł͉��̓���������܂���B


## ���Ԑϕ�


�������烁�C�����[�v


```matlab
for ii = 1:nt
```
### ���z���x�����i���E����͂ݏo�������j


���E�����𗘗p���Čv�Z���܂��B


```matlab
    bctop = 1; % ���E�㕔�̑��x u
    u(:,1) = -u(:,2); v(:,1) = 0;             %bottom
    u(:,end) = 2*bctop-u(:,end-1);  v(:,end) = 0;  %top
    u(1,:) = 0;    v(1,:) = -v(2,:);             %left
    u(end,:) = 0;  v(end,:) = -v(end-1,:);    %right
```
###  �g�U��(u) 

<img src="https://latex.codecogs.com/gif.latex?{L}u(i,j)=\frac{u(i-1,j)-2u(i,j)+u(i+1,j)}{\Delta&space;x^2&space;}+\frac{u(i,j-1)-2u(i,j)+u(i,j+1)}{\Delta&space;y^2&space;}"/>

```matlab
    Lux = (u(1:end-2,2:end-1)-2*u(2:end-1,2:end-1)+u(3:end,2:end-1))/dx^2; % nx-1 * ny
    Luy = (u(2:end-1,1:end-2)-2*u(2:end-1,2:end-1)+u(2:end-1,3:end))/dy^2; % nx-1 * ny
```
### �g�U��(v)

<img src="https://latex.codecogs.com/gif.latex?{L}v(i,j)=\frac{v(i-1,j)-2v(i,j)+v(i+1,j)}{\Delta&space;x^2&space;}+\frac{v(i,j-1)-2v(i,j)+v(i,j+1)}{\Delta&space;y^2&space;}"/>

```matlab
    Lvx = (v(1:end-2,2:end-1)-2*v(2:end-1,2:end-1)+v(3:end,2:end-1))/dx^2; % nx * ny-1
    Lvy = (v(2:end-1,1:end-2)-2*v(2:end-1,2:end-1)+v(2:end-1,3:end))/dy^2; % nx * ny-1
```
### �Η����̌v�Z

<img src="https://latex.codecogs.com/gif.latex?{N}u(i,j)=\frac{uce(i,j)^2&space;-uce(i-1,j)^2&space;}{\Delta&space;x}+\frac{uco(i,j+1)vco(i,j+1)-uco(i,j)vco(i,j)}{\Delta&space;y}"/>


<img src="https://latex.codecogs.com/gif.latex?{N}v(i,j)=\frac{uco(i+1,j)vco(i+1,j)-uco(i,j)vco(i,j)}{\Delta&space;x}+\frac{vce(i,j)^2&space;-vce(i,j-1)^2&space;}{\Delta&space;y}"/>

```matlab
    % 1. interpolate velocity at cell center/cell cornder
    uce = (u(1:end-1,2:end-1)+u(2:end,2:end-1))/2;
    uco = (u(:,1:end-1)+u(:,2:end))/2;
    vco = (v(1:end-1,:)+v(2:end,:))/2;
    vce = (v(2:end-1,1:end-1)+v(2:end-1,2:end))/2;
    
    % 2. multiply
    uuce = uce.*uce;
    uvco = uco.*vco;
    vvce = vce.*vce;
    
    % 3-1. get derivative for u
    Nu = (uuce(2:end,:) - uuce(1:end-1,:))/dx;
    Nu = Nu + (uvco(2:end-1,2:end) - uvco(2:end-1,1:end-1))/dy;
    % 3-2. get derivative for v
    Nv = (vvce(:,2:end) - vvce(:,1:end-1))/dy;
    Nv = Nv + (uvco(2:end,2:end-1) - uvco(1:end-1,2:end-1))/dx;
    
```
###  ���̑��x��Z�o


�ꎟ���x�̃I�C���[�ϕ�


```matlab
    % Get intermidiate velocity
    u(2:end-1,2:end-1) = u(2:end-1,2:end-1) + dt*(-Nu + (Lux+Luy)/Re);
    v(2:end-1,2:end-1) = v(2:end-1,2:end-1) + dt*(-Nv + (Lvx+Lvy)/Re);
```
### �V�������x��


���͂̎��i�|���\���������j�������đ��x������ʕۑ��𖞂�����Ɏʑ��B�|���\���������̉�@�ɂ��Ắu[���U�R�T�C���ϊ��Ń|�A�\���������������ɉ���](https://qiita.com/eigs/items/cb607d647bc20c7db809)�v�ŏЉ�Ă���̂ŎQ�Ƃ��Ă��������B


```matlab
    % velocity correction
    % RHS of pressure Poisson eq.
    b = ((u(2:end,2:end-1)-u(1:end-1,2:end-1))/dx ...
        + (v(2:end-1,2:end)-v(2:end-1,1:end-1))/dy);
    
    % Solve for p�i�R�T�C���ϊ����g���܂��F�����j
    p = solvePoissonEquation_2dDCT(b,Nx,Ny,dx,dy);
    
    % ���ږ@�ŉ����ꍇ���Q�l�܂�
    % p = solvePoissonEquation_direct(b,Nx,Ny,dx,dy);
    
    % ���͌��z�����̑��x�ꂩ������āA�V�������x��
    u(2:end-1,2:end-1) = u(2:end-1,2:end-1) -  (p(2:end,:)-p(1:end-1,:))/dx;
    v(2:end-1,2:end-1) = v(2:end-1,2:end-1) -  (p(:,2:end)-p(:,1:end-1))/dy;
```


�V�������x��͘A���̎��𖞂����܂��B���̏����ŋ��E�l�͕ω����Ȃ��_�ɂ����ځB�ނ��닫�E�l���O��ɁA���̑��x���A���̎��𖞂����悤�ɏ��������Ɨ��������ق������������B


### �����A�b�v�f�[�g


�Z�������ł̑��x�����}�ŋ��߂ĕ\���I


```matlab
    % get velocity at the cell center (for visualization)
    uce = (u(1:end-1,2:end-1)+u(2:end,2:end-1))/2;
    vce = (v(2:end-1,1:end-1)+v(2:end-1,2:end))/2;
    
    % update plot
    h_abs.ZData = sqrt(uce.^2+vce.^2);
    drawnow
end
```

![figure_1.png](vanilaCavityFlow_JP_images/figure_1.png)



���܂��v�Z�ł��Ă����ł��ˁI




�A���̎��𖞂��������x��ɂȂ��Ă��邩�ǂ����A�ꉞ�m�F���Ă����܂��B


```matlab
b = ((u(2:end,2:end-1)-u(1:end-1,2:end-1))/dx ...
    + (v(2:end-1,2:end)-v(2:end-1,1:end-1))/dy);
disp(norm(b))
```
```
   5.8843e-14
```


���������_�덷���x�Ɏ��܂��Ă��܂��ˁB


# �����̃A�j���[�V�����\��


CFD �� Colorful Fluid Dynamics �̗��Ƃ������邾�������āA���������l���̂̑�햡�ł���ˁB�������}��������Ȃ��đ��x����ŕ\�������� GIF �o�͂��܂��B��̌v�Z������ `updateVelocityField_Euler.m` �Ƃ��Ċ֐������Ă����܂��B




**����**�FR2019b �ł� `recordGIF = true` �ݒ�ňȉ������s����ƃG���[���������܂��BGIF���쐬����ꍇ�ɂ� `script_AnimateVelocityField.m` �i�������e�ł��j�����s���Ă��������B




���ݒ�


```matlab
Re = 500; % Reynolds number
nt = 2000; % max time steps
Lx = 1; Ly = 1; % domain size
Nx = 80; Ny = 80; % Number of grids
dt = 0.01; % time step;
% Grid size (Equispaced)
dx = Lx/Nx;
dy = Ly/Ny;
% Coordinate of each grid (cell center)
xce = ((1:Nx)-0.5)*dx;
yce = ((1:Ny)-0.5)*dy;
% Coordinate of each grid (cell corner)
xco = (0:Nx)*dx;
yco = (0:Ny)*dy;
```


���x��̏�����


```matlab
figure
u = zeros(Nx+1,Ny+2); % velocity in x direction (u)
v = zeros(Nx+2,Ny+1); % velocity in y direction (v)
uce = (u(1:end-1,2:end-1)+u(2:end,2:end-1))/2; % u at cell center
vce = (v(2:end-1,1:end-1)+v(2:end-1,2:end))/2; % v at cell center
```
## �����ݒ�


���� `quiver` �֐��ŕ`�����ł����A��󂪑����ƌ��Â炢�̂� `visRate` �Ԋu�ŊԈ����ĕ\�������܂��B�܂����X�e�b�v��������� GIF ���d���Ȃ�̂ŁA`recordRate` ���ɕ\���X�V���� GIF �ɏ������ނ悤�ɂ��܂��B


```matlab
visRate = 4; % downsample rate of the data for quiver
recordGIF = false; % GIF �쐬����ꍇ�� true �ɕύX
recordRate = 20;
filename = 'animation_sample.gif'; % Specify the output file name
```


�������}


```matlab
figure
[Xce,Yce] = meshgrid(xce,yce); % cell center�̍��W�O���b�h
[~,h_abs] = contourf(Xce',Yce',sqrt(uce.^2+vce.^2)); % �������}
```
```
�x��: �������}�� ZData ���萔�̏ꍇ�̓����_�����O����܂���
```
```matlab
hold on
```


���x��i���j


```matlab
% �\���p�Ƀf�[�^���Ԉ����܂��id = downsampled�j
xced = xce(1:visRate:end);
yced = yce(1:visRate:end);
[Xced,Yced] = meshgrid(xced, yced);

uced = uce(1:visRate:end,1:visRate:end);
vced = vce(1:visRate:end,1:visRate:end);
h_quiver = quiver(Xced',Yced',uced,vced,3,'Color',[1,1,1]);

hold off
xlim([0 Lx]); ylim([0 Ly]);
```


���܂��ŗ̈�㕔�̑��x�i���E�����j�����ŕ\�����Ă����܂��B


```matlab
harrow = annotation('textarrow',[0.3 0.7],[0.96 0.96],"LineWidth",2);
```


�]�v�Ȃ��̂͏����Ă����܂��傤�B


```matlab
haxes = gca;
haxes.XTick = [];
haxes.YTick = [];
```
## �V�~�����[�V�����J�n


�����ł͏����������o�����߂ɁA 2000 �X�e�b�v�񂷓r���ŗ̈�㕔�̑��x�𔽓]�����Ă��܂��B


```matlab
initialFrame = true;

for ii = 1:2000
    bctop = 1; % ���E�㕔�̑��x u
    
    if ii > 1000
        bctop = -1;
        harrow.X = [0.7, 0.3]; % ���̌��������]
    end
    
    % ���x��X�V�i�R�T�C���ϊ��g�p�j
    [u,v] = updateVelocityField_Euler(u,v,Nx,Ny,dx,dy,Re,dt,bctop,'dct');
    
    % �`��� recordRate ���Ɏ��{
    if mod(ii,recordRate) == 0
        % get velocity at the cell center (for visualization)
        uce = (u(1:end-1,2:end-1)+u(2:end,2:end-1))/2; % u at cell center
        vce = (v(2:end-1,1:end-1)+v(2:end-1,2:end))/2; % v at cell center
        % update plot (downsample)
        h_quiver.UData = uce(1:visRate:end,1:visRate:end);
        h_quiver.VData = vce(1:visRate:end,1:visRate:end);
        h_abs.ZData = sqrt(uce.^2+vce.^2);
        
        drawnow
        
        if recordGIF
            frame = getframe(gcf); %#ok<UNRCH> % Figure ��ʂ����[�r�[�t���[���i�\���́j�Ƃ��ăL���v�`��
            tmp = frame2im(frame); % �摜�ɕύX
            [A,map] = rgb2ind(tmp,256); % RGB -> �C���f�b�N�X�摜��
            if initialFrame
                imwrite(A,map,filename,'gif','LoopCount',Inf,'DelayTime',0.1);
                initialFrame = false;
            else
                imwrite(A,map,filename,'gif','WriteMode','append','DelayTime',0.1);% �摜���A�y���h
            end
        end
        
    end
end
```

![figure_2.png](vanilaCavityFlow_JP_images/figure_2.png)

  
# �܂Ƃ�


�܂����x�̌��؂Ȃǂ��Ă��܂��񂪁ANavier-Stokes ���������������C�����܂��B




�g�U���̎�舵�����z��@�ł��邱�Ƃ�����AReynolds ��������������ƌ����Ɍv�Z�����U���܂��B�ǂ���Ύ����Ă݂Ă��������B����͂��̕ӂւ̑΍�Ƃ��Ċg�U���̉A��@�A�����Ď��Ԑϕ��̍������x�����������Ă݂܂��B����A�{���ɐ����������Ă��邩�������ƌ��؂��܂��傤�B




�u�񈳏k�� Navier-Stokes �������̐��l��@�Q�F�g�U���̉A��@�{���Ԑϕ��̍������v���y���݂ȁA��̍���������������Ⴂ�܂�����A�����˂ŉ������Ă������� :)


# References


[1] U. Ghia, K.N. Ghia and C.T. Shin, High-Re solutions for incompressible flow using the Navier-Stokes equations and a multigrid method. J. Comput. Physics, 48, 387-411, 1982.




[2] F. Harlow and E. Welch, Numerical calculation of time-dependent viscous incompressible flow of fluid with free surface. Physics of Fluids 8: 2182-2189, 1965.




[3] AJ. Chorin, Numerical solution of the Navier-Stokes equations. Mathematical Computations 22: 745-762, 1968.




[4] J. Kim and P. Moin. Application of a fractional-step method to incompressible Navier-Stokes equations. J. Comput. Physics, 59(2): 308-323, 1985.




[5] B. Perot, An analysis of the fractional step method. J. Comp. Physics, 108: 51-58, 1993




[6] H. Le and P. Moin. An improvement of fractional step methods for the incompressible Navler-Stokes equations. J. Comput. Physics, 92: 369-379, 1991




[7] W. Chang, F. Giraldo, and B. Perot. Analysis of an exact fractional step method. J. Compt. Physics, 180(1): 183-199, 2002.




[8] Y. Morinishi, T.S. Lund, O.V. Vasilyev, and P. Moin. Fully conservative higher order finite difference schemes for incompressible flow. Journal of Computational Physics 143 (1), 90-124. 1998


