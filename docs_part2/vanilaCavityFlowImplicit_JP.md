# �񈳏k�� Navier-Stokes �������̐��l��@�Q�F�g�U���̉A��@
Copyright (c) 2020, The MathWorks, Inc.
# �͂��߂�


Navier-Stokes �������𐔒l�I�ɉ����V���[�Y�A��Q��ڂł��B



   -  [�񈳏k�� Navier-Stokes �������̐��l��@�P�F������](../docs_part1/vanilaCavityFlow_JP.md) 
   -  **�񈳏k�� Navier-Stokes �������̐��l��@�Q�F�g�U���̉A��@�i���̋L���j** 
   -  �񈳏k�� Navier-Stokes �������̐��l��@�R�F���E�����ŗV�� 
   -  �񈳏k�� Navier-Stokes �������̐��l��@�S�F�����̂��낢�� 
   -  �񈳏k�� Navier-Stokes �������̐��l��@�T�F�R�����ւ̊g�� 
   -  �񈳏k�� Navier-Stokes �������̐��l��@�U�FC�R�[�h�����ō����� 

# ���̋L���̃S�[��


��͑Ώۂɂ��Ă͑O��̋L���i[�񈳏k�� Navier-Stokes �������̐��l��@�P�F������](../docs_part1/vanilaCavityFlow_JP.md)�j���Q�Ƃ��Ă��������B




�����҂ł͂܂��L���r�e�B����������Ă݂邱�Ƃɒ��͂��āA���Ȃ�r�����U�����s���܂����B���ʂƂ��āA���ԃX�e�b�v�T�C�Y�ɂ���Ă��ς��܂����A���傤�ǂ悢 Reynolds ���iRe = 500���x�j�ȊO�ł͔��U���錋�ʂɂȂ��Ă��܂��B




����͂������������邽�߂Ɉȉ������{���܂��B



   -  �g�U���ɂ��ĉA��@�i�Q�����x�N�����N�E�j�R���\���@�j������ 
   -  �Η����ɂ��ĂQ�i�K�̗z��@�i�Q�����x�A�_���X�E�o�b�V���t�H�[�X�@�j������ 
   -  �����C�m���Y���ł̃V�~�����[�V�����i���} Re = 5,000�j 



![image_0.png](vanilaCavityFlowImplicit_JP_images/image_0.png)




���ۂ̂Ƃ��냋���Q�E�N�b�^�@�̕�����ʓI���Ǝv���܂��̂ł�������������Ă��܂��B���� Appendix �Q�ƁB




**�����F**�g�U���ւ̉A��@�̓��������Ŏ�����邩�Ɗ��҂�����ł����A�����C�m���Y���ł͔��U�����Ⴂ�܂����B���߂Ĉڑ��������ǂ��邱�Ƃɂ��܂��B


## ���s��

   -  MATLAB R2019b 
   -  Signal Processing Toolbox (����*) 



*) �|���\�������������������� Signal Processing Toolbox ���g���Ă��܂����A���ږ@�┽���@�ɂ���� MATLAB �{�̂�����OK�ł��B


  
# �g�U���ƑΗ����̈��萫


���̕ӂ̓m�C�}���̈����͂�N�[�������iCourant number�j�̘b�BCDF�̋��ȏ��ɂ͕K���o�Ă���l�^�ł��ˁB�����ł͗v�_�����G��Ă����ƁA�g�U�������̃I�C���[�z��@�E���������ɂ�������萫������



<img src="https://latex.codecogs.com/gif.latex?dt\le&space;\frac{\Delta^2&space;}{2/Re}"/>



�ł���A�O���b�h�T�C�Y�� 1/2 �{�ɂ���Ǝ��ԃX�e�b�v�i<img src="https://latex.codecogs.com/gif.latex?\inline&space;dt"/>�j�� 1/4 �ɂ��Ȃ���΂����܂���B�܂��჌�C�m���Y���̕����������������B�O��̎�@�����U�������R�͂���B�g�U�������ɂ��Ă͉A��@���g���Ζ���������ɂȂ邱�Ƃ��m���Ă��܂��B




�܂����l�Ɉڑ��������ɂ��Ă̓N�[�������ic �͈ڑ����x�j



<img src="https://latex.codecogs.com/gif.latex?c\frac{dt}{\Delta&space;}"/>



������ł��܂��B����������̓O���b�h�T�C�Y�� 1/2 �{�ɂ���Ǝ��ԃX�e�b�v�i<img src="https://latex.codecogs.com/gif.latex?\inline&space;dt"/>�j�� 1/2 �{�Ƃ������Ƃŏ����͂����܂ň����Ȃ��B ���̋L���ł͑Η����ɂQ�����x�A�_���X�E�o�b�V���t�H�[�X�@��p���āA�N�[�������� 0.5 �𒴂��Ȃ��悤�Ȏ��ԃX�e�b�v���g���܂��B




**����**�F�����Q�E�N�b�^�@���g���ƃN�[������ 1.2 ���炢�ł����U�͂��Ȃ���ہi�����܂Ŋϑ��x�[�X�j


  
# �A��@�ɂ�镔���i�K�@
## �O��̕��K����


�O��� 1 �����x�̃I�C���[�̗z��@�Ŏ��Ԑϕ������̂ŁA���U������ Navier-Stokes ���������s��ŕ\���������ʁA



 <img src="https://latex.codecogs.com/gif.latex?\begin{array}{rl}&space;\frac{{u}^{n+1}&space;-{u}^n&space;}{dt}&space;&&space;=-{G}p-{{{Nu}}}^n&space;+\frac{1}{Re}{{{Lu}}}^n&space;\\&space;{{{Du}}}^{n+1}&space;&space;&&space;=bc^{n+1}&space;&space;\end{array}"/>



�����čs��ŕ\�������



<img src="https://latex.codecogs.com/gif.latex?\left\lbrack&space;\begin{array}{cc}&space;{I}&space;&&space;{G}\\&space;{D}&space;&&space;{0}&space;\end{array}\right\rbrack&space;\left\lbrack&space;\begin{array}{c}&space;{u}^{n+1}&space;\\&space;p^{\prime&space;}&space;&space;\end{array}\right\rbrack&space;=\left\lbrack&space;\begin{array}{c}&space;{r}^n&space;\\&space;{0}&space;\end{array}\right\rbrack&space;+\left\lbrack&space;\begin{array}{c}&space;{0}\\&space;bc&space;\end{array}\right\rbrack"/>



����Ȋ����ł����B


## �N�����N�E�j�R���\���@�ƃA�_���X�o�b�V���t�H�[�X�@


�����ŁA�g�U���ɃN�����N�E�j�R���\���@�A�Η����ɃA�_���X�o�b�V���t�H�[�X�@��K�p�����



<img src="https://latex.codecogs.com/gif.latex?\begin{array}{rl}&space;\frac{{u}^{n+1}&space;-{u}^n&space;}{dt}&space;&&space;=-{G}p-\frac{3}{2}{{{Nu}}}^n&space;+\frac{1}{2}{{{Nu}}}^{n-1}&space;+\frac{1}{2Re}\left({{{Lu}}}^{n+1}&space;+bc_L^{n+1}&space;+{{{Lu}}}^n&space;+bc_L^n&space;\right)\\&space;{{{Du}}}^{n+1}&space;&space;&&space;=bc_D^{n+1}&space;&space;\end{array}"/>



�����Ȃ�܂��B���������Ȃ�܂�������{�I�ȍ\���͓����B�g�U���Ɏ��̎��Ԃ̑��x��i<img src="https://latex.codecogs.com/gif.latex?\inline&space;{{u^{n+1}&space;}}"/>�j���܂܂�Ă��āA�A��@�ł���_�ɂ����ځB<img src="https://latex.codecogs.com/gif.latex?\inline&space;bc_D"/> �͔��U���v�Z����ۂɑ��x���E�����ɋN������ǉ����A<img src="https://latex.codecogs.com/gif.latex?\inline&space;bc_L"/> �͊g�U���ɂ�����ǉ����ł��B




�O��Ɠ������s��ŕ\�������



<img src="https://latex.codecogs.com/gif.latex?\left\lbrack&space;\begin{array}{cc}&space;{A}&space;&&space;{G}\\&space;{D}&space;&&space;{0}&space;\end{array}\right\rbrack&space;\left\lbrack&space;\begin{array}{c}&space;{u}^{n+1}&space;\\&space;p^{\prime&space;}&space;&space;\end{array}\right\rbrack&space;=\left\lbrack&space;\begin{array}{c}&space;{r}^n&space;\\&space;{0}&space;\end{array}\right\rbrack&space;+\left\lbrack&space;\begin{array}{c}&space;0\\&space;bc_D&space;&space;\end{array}\right\rbrack"/>



������ <img src="https://latex.codecogs.com/gif.latex?\inline&space;{A}"/>�� <img src="https://latex.codecogs.com/gif.latex?\inline&space;{r}^n"/> ��



<img src="https://latex.codecogs.com/gif.latex?\begin{array}{rl}&space;{A}&space;&&space;={I}-\frac{dt}{2Re}{L}\\&space;{{r^n&space;}}&space;&&space;={u}^n&space;+dt\left\lbrace&space;-\frac{3}{2}{{{Nu}}}^n&space;+\frac{1}{2}{{{Nu}}}^{n-1}&space;+\frac{1}{2Re}\left(bc_L^{n+1}&space;+{{{Lu}}}^n&space;+bc_L^n&space;\right)\right\rbrace&space;&space;\end{array}"/>



�ƂȂ�܂��B


## �܂��� LU ��������


�܂� LU �������Ă݂܂��iPerot 1993 [1]�j



<img src="https://latex.codecogs.com/gif.latex?\left\lbrack&space;\begin{array}{cc}&space;{A}&space;&&space;{0}\\&space;{D}&space;&&space;-{{DA^{-1}&space;G}}&space;\end{array}\right\rbrack&space;\left\lbrack&space;\begin{array}{cc}&space;{I}&space;&&space;{{A^{-1}&space;G}}\\&space;{0}&space;&&space;{I}&space;\end{array}\right\rbrack&space;\left\lbrack&space;\begin{array}{c}&space;{u}^{n+1}&space;\\&space;p^{\prime&space;}&space;&space;\end{array}\right\rbrack&space;=\left\lbrack&space;\begin{array}{c}&space;{r}^n&space;\\&space;{0}&space;\end{array}\right\rbrack&space;+\left\lbrack&space;\begin{array}{c}&space;0\\&space;bc_D&space;&space;\end{array}\right\rbrack"/>



����������ɉ����̂͌����I�ł͂Ȃ��̂ŁA�ʏ� <img src="https://latex.codecogs.com/gif.latex?\inline&space;{{A^{-1}&space;}}"/> �͋ߎ����ĉ����܂��B���̋ߎ����@�ŕ����i�K�@�̌`���ς���Ă��܂��B�N���b�V�b�N�ȕ����i�K�@�� <img src="https://latex.codecogs.com/gif.latex?\inline&space;{A}^{-1}&space;={I}+O(dt)"/> �Ƌߎ��������̂Ɠ��l�Ŏ��Ԑϕ��͂P�����x�B



<img src="https://latex.codecogs.com/gif.latex?\left\lbrack&space;\begin{array}{cc}&space;{A}&space;&&space;{0}\\&space;{D}&space;&&space;-{{DG}}&space;\end{array}\right\rbrack&space;\left\lbrack&space;\begin{array}{cc}&space;{I}&space;&&space;{G}\\&space;{0}&space;&&space;{I}&space;\end{array}\right\rbrack&space;\left\lbrack&space;\begin{array}{c}&space;{u}^{n+1}&space;\\&space;p^{\prime&space;}&space;&space;\end{array}\right\rbrack&space;=\left\lbrack&space;\begin{array}{c}&space;{r}^n&space;\\&space;{0}&space;\end{array}\right\rbrack&space;+\left\lbrack&space;\begin{array}{c}&space;0\\&space;bc_D&space;&space;\end{array}\right\rbrack"/>

  


**����**�F���Ȃ݂� <img src="https://latex.codecogs.com/gif.latex?\inline&space;{A}^{-1}&space;={I}+\frac{dt}{2Re}{L}+O(dt^2&space;)"/> �Ƌߎ�����ƂQ�����x�ƂȂ肻���ł����A<img src="https://latex.codecogs.com/gif.latex?\inline&space;{{DA^{-1}&space;G}}"/> �̏�������ς����E�E�����ւ͓��ݍ��݂܂���B


## �����i�K�@�̊���


���������������ƉA��@�ɂ�镔���i�K�@�iFractional Step Method) �̏o���オ��B



<img src="https://latex.codecogs.com/gif.latex?\begin{array}{cl}&space;{A}{u}^*&space;&space;&&space;={r}^n&space;\\&space;{{DG}}p^{\prime&space;}&space;&space;&&space;={D}{u}^*&space;+bc_D&space;\\&space;{u}^{n+1}&space;&space;&&space;={u}^*&space;-{G}p^{\prime&space;}&space;&space;\end{array}"/>



�O��ƈႤ�����͑�ꎮ�����B���߂Ė��L����ƁA



<img src="https://latex.codecogs.com/gif.latex?\begin{array}{rl}&space;{A}&space;&&space;={r}^n&space;\;\;{{where}}\;\;{A}={I}-\frac{dt}{2Re}{L}\\&space;{{r^n&space;}}&space;&&space;={u}^n&space;+dt\left\lbrace&space;-\frac{3}{2}{{{Nu}}}^n&space;+\frac{1}{2}{{{Nu}}}^{n-1}&space;+\frac{1}{2Re}\left(bc_L^{n+1}&space;+{{{Lu}}}^n&space;+bc_L^n&space;\right)\right\rbrace&space;&space;\end{array}"/>



�ł��B




���x���z�i<img src="https://latex.codecogs.com/gif.latex?\inline&space;{D}"/>�j�A���͌��z�i<img src="https://latex.codecogs.com/gif.latex?\inline&space;{G}"/>�j�A�Η����i<img src="https://latex.codecogs.com/gif.latex?\inline&space;{N}"/>�j�A�g�U���i<img src="https://latex.codecogs.com/gif.latex?\inline&space;{L}"/>�j�̌v�Z���@���̂͑O�񂩂�ς��܂��񂪁A��ŏЉ���ʂ荡��͉��̑��x������߂�̂ɁA<img src="https://latex.codecogs.com/gif.latex?\inline&space;u/v"/> ���ꂼ��ɂ��ĘA�������� <img src="https://latex.codecogs.com/gif.latex?\inline&space;{{Au^*&space;}}={{r^n&space;}}"/> �������K�v������܂��B


  


**����**�F�����ŗv���ڃ|�C���g�� <img src="https://latex.codecogs.com/gif.latex?\inline&space;{{r^n&space;}}"/> �̎��Ɋ܂܂�� <img src="https://latex.codecogs.com/gif.latex?\inline&space;bc_L^{n+1}"/> �̍��ł��B���̎��ԃX�e�b�v�i<img src="https://latex.codecogs.com/gif.latex?\inline&space;n+1"/>�j�̋��E�����͉E�ӂɎc���A<img src="https://latex.codecogs.com/gif.latex?\inline&space;{L}"/> �I�y���[�^�͂����܂Ōv�Z�Ώۂł���̈���̑��x�ɂ�������̂ł���̂Œ��ӁB


# MATLAB �ɂ��A��@�̎���


���ۂ̃R�[�h�� GitHub �̕������Ē����Ƃ��āA�����ł͗v�_�����Љ�܂��B�|�C���g��



   -  �g�U���Ɋւ��s��̊m�F 
   -  ���E�����̎�舵�� 
   -  �A���������̉����� 



�̂R�B�O��̃I�C���[�@�Ƃ̈Ⴂ�͉��̑��x����Z�o���邱�������B



<img src="https://latex.codecogs.com/gif.latex?\left({I}-\frac{dt}{2Re}{L}\right){{u^*&space;}}={u}^n&space;+dt\left\lbrace&space;-\frac{3}{2}{{{Nu}}}^n&space;+\frac{1}{2}{{{Nu}}}^{n-1}&space;+\frac{1}{2Re}\left(bc_L^{n+1}&space;+{{{Lu}}}^n&space;+bc_L^n&space;\right)\right\rbrace"/>



�R�[�h�Ƃ��Ă͂���Ȋ����i`updateVelocityField_CNAB.m` �Q�Ɓj




**����**


```matlab
    % Implicit treatment for xy direction
    b = u(2:end-1,2:end-1) + dt*(-3*Nu+Nu_old)/2 + dt/(2*Re)*(Lux+Luy+Lubc);
    xu = getIntermediateU_xyCNAB(u, b, dt, Re, Nx, Ny, dx, dy);
    b = v(2:end-1,2:end-1) + dt*(-3*Nv+Nv_old)/2 + dt/(2*Re)*(Lvx+Lvy+Lvbc);
    xv = getIntermediateV_xyCNAB(v, b, dt, Re, Nx, Ny, dx, dy);
    
    u(2:end-1,2:end-1) = xu;
    v(2:end-1,2:end-1) = xv;
```


**���Ȃ݂ɑO��**�i`updateVelocityField_Euler.m` �Q��**�j**


```matlab
    u(2:end-1,2:end-1) = u(2:end-1,2:end-1) - dt*Nu + dt/Re*(Lux+Luy);
    v(2:end-1,2:end-1) = v(2:end-1,2:end-1) - dt*Nv + dt/Re*(Lvx+Lvy);
```


`getIntermediateU_xyCNAB.m `�� `getIntermediateV_xyCNAB.m `�ɂ��ׂĂ��l�܂��Ă��܂��BCNAB �� Crank-Nicolson, Adams-Bashforth �̗��ł��B


## �g�U���I�y���[�^


�s�� <img src="https://latex.codecogs.com/gif.latex?\inline&space;{A}"/>�Ɋ܂܂�� <img src="https://latex.codecogs.com/gif.latex?\inline&space;{L}"/> �ɂ��Ă݂Ă݂܂��B��������



<img src="https://latex.codecogs.com/gif.latex?{L}u(i,j)=\frac{u(i-1,j)-2u(i,j)+u(i+1,j)}{\Delta&space;x^2&space;}+\frac{u(i,j-1)-2u(i,j)+u(i,j+1)}{\Delta&space;y^2&space;}"/>


<img src="https://latex.codecogs.com/gif.latex?{L}v(i,j)=\frac{v(i-1,j)-2v(i,j)+v(i+1,j)}{\Delta&space;x^2&space;}+\frac{v(i,j-1)-2v(i,j)+v(i,j+1)}{\Delta&space;y^2&space;}"/>



�Ƃ������ƂŁA�Q�����x�ł���΋Ǐ��I�ɂ͎O�d�Ίp�s��ł����Ax, y �̗������ɑ΂��ĉA��@�Ƃ���ƂȂ�ƁA���������L����̂���X�p�[�X�s��ƂȂ�܂��B�s��̃T�C�Y��




<img src="https://latex.codecogs.com/gif.latex?\inline&space;u"/> �ɂ��Ă� <img src="https://latex.codecogs.com/gif.latex?\inline&space;(nx-1)\cdot&space;ny\times&space;(nx-1)\cdot&space;ny"/>




<img src="https://latex.codecogs.com/gif.latex?\inline&space;v"/> �ɂ��Ă� <img src="https://latex.codecogs.com/gif.latex?\inline&space;nx\cdot&space;(ny-1)\times&space;nx\cdot&space;(ny-1)"/>




�Ɨv�f�̐��I�ɂ� <img src="https://latex.codecogs.com/gif.latex?\inline&space;\mathcal{O}(n^4&space;)"/> �ł��� <img src="https://latex.codecogs.com/gif.latex?\inline&space;\mathcal{O}(n^1&space;)"/> �d�̃X�p�[�X�ȑэs��ł͂���܂��B




�E�E�܂��܂���ς����ł��ˁB<img src="https://latex.codecogs.com/gif.latex?\inline&space;u"/>��<img src="https://latex.codecogs.com/gif.latex?\inline&space;v"/>�ŃT�C�Y���Ⴄ�̂� Staggered-grid �̂�₱�����Ƃ���B


  
### �]�k�F�Е��ɂ����A��@�H


�Ⴆ�΋��E�w����Ȃǂňꎟ�������݂̂ɃO���b�h���ׂ�������悤�ȏꍇ�́A���̕����̊g�U�����ɂ����A��@��p���� (Simens et al. 2009 [2]) �Ƃ����P�[�X������܂��B���̏ꍇ�͑�K�͂ȘA���������Ƃ͂����A�R�d�эs��i�Q�����x�̏ꍇ�j�Ȃ̂Œ��ږ@�ł��\�������̂ŁA�v�Z���x���C�ɂȂ�ꍇ�ɂ͂��̕ӂ�Ë�����̂��A���ł��B


  
## ���E�����ɂ���


���E�����ɗR������ <img src="https://latex.codecogs.com/gif.latex?\inline&space;L_{bc}"/> �ɂ��čl���܂��B�܂��ϐ��̒�`�ʒu�� index �͈̔͂��m�F���܂��B




![image_1.png](vanilaCavityFlowImplicit_JP_images/image_1.png)




�����ŃI�����W�F�̖��ŕ\����鉼�z���x�͈ȉ��̂悤�Ɍv�Z����܂��B�Ⴆ�΁A



<img src="https://latex.codecogs.com/gif.latex?u(i,1)=2u_{bc}&space;-u(i,2)"/>



���E�����񂾂Q�̑��x�̕��ϒl�i2�����x�̓��}�j�����E�l�ƂȂ�Ƃ����z��ł��B




���̌v�Z�ɗ̈���̑��x�i�����ł� <img src="https://latex.codecogs.com/gif.latex?\inline&space;u(i,2)"/>�j���܂܂�邽�߁A���E�̎�舵���� <img src="https://latex.codecogs.com/gif.latex?\inline&space;{L}"/> �̒�`�ɉe�����܂��B�Ⴆ�� <img src="https://latex.codecogs.com/gif.latex?\inline&space;u"/> �ɑ΂��� y �����̊g�U���͉������E�ɂ�����



<img src="https://latex.codecogs.com/gif.latex?\begin{array}{rl}&space;Lu_y&space;(i,2)&space;&&space;=\frac{u(i,3)-2u(i,2)+u(i,1)}{dy^2&space;}\\&space;&space;&&space;=\frac{u(i,3)-3u(i,2)}{dy^2&space;}+\frac{2u_{bc}&space;}{dy^2&space;}&space;\end{array}"/>



�ƓW�J����Ay ������ <img src="https://latex.codecogs.com/gif.latex?\inline&space;{L}"/> �̗v�f�Ƃ��� -3 �������Ă��܂��B���ӂꂽ <img src="https://latex.codecogs.com/gif.latex?\inline&space;u_{bc}"/> �̍��� <img src="https://latex.codecogs.com/gif.latex?\inline&space;L_{bc}^{n+1}"/> �ɓ���܂��B




�܂� x �����̊g�U���͍����̋��E�t�߂ɂ�����



<img src="https://latex.codecogs.com/gif.latex?\begin{array}{rl}&space;Lu_x&space;(2,j)&space;&&space;=\frac{u(3,j)-2u(2,j)+u(1,j)}{dx^2&space;}\\&space;&space;&&space;=\frac{u(3,j)-2u(2,j)+u_{bc}&space;}{dx^2&space;}\\&space;&space;&&space;=\frac{u(i,3)-2u(i,2)}{dx^2&space;}+\frac{u_{bc}&space;}{dx^2&space;}&space;\end{array}"/>



�ł���A���z���x�͕K�v�Ȃ��̂� x ������ <img src="https://latex.codecogs.com/gif.latex?\inline&space;{L}"/> �̗v�f�Ɋւ��Ă͋��E�����ɂ�����W�����܂߂Ȃ������� OK�B




���x <img src="https://latex.codecogs.com/gif.latex?\inline&space;v"/> �Ɋւ��Ă� x,y �����̎�舵������̋t�ɂȂ�܂��B<img src="https://latex.codecogs.com/gif.latex?\inline&space;v"/> �̉��z���x�� x �����̊g�U���ɂ�����̂ŁE�E�B��₱�����I


## ���ۂ̍s��m�F


�������O���b�h���ŁA���ۂɂǂ�ȍs�񂩌��Ă݂܂��B`getL4u.m` �� <img src="https://latex.codecogs.com/gif.latex?\inline&space;u"/> �Ɋւ��� <img src="https://latex.codecogs.com/gif.latex?\inline&space;{L}"/> �I�y���[�^�����߂�֐��ł��B


```matlab
clear, close all
addpath('../functions/')

Lx = 1; Ly = 1;
nx = 5; ny = 5;
dx = Lx/nx; dy = Ly/ny;
maskU = false(nx+1,ny+2);
maskU(2:end-1,2:end-1) = true;
L4u = getL4u(nx,ny,dx,dy,maskU);
spy(L4u);
```

![figure_0.png](vanilaCavityFlowImplicit_JP_images/figure_0.png)



�X�p�[�X�ł��ˁB�Q�l�܂ŁA�`���̐��l���m�F�B


```matlab
full(L4u(1:nx,1:nx))
```
```
ans = 5x5    
 -125.0000   25.0000         0         0   25.0000
   25.0000 -125.0000   25.0000         0         0
         0   25.0000 -125.0000   25.0000         0
         0         0   25.0000 -125.0000         0
   25.0000         0         0         0 -100.0000

```


**����**�F������ `maskU` �͑��x <img src="https://latex.codecogs.com/gif.latex?\inline&space;u"/> ����`����Ă���ꏊ�� `true` �����s��B��蕡�G�Ȍv�Z�̈�i�̈���ɏ�Q������������E�E�j���Ă��A `maskU` ������`����� <img src="https://latex.codecogs.com/gif.latex?\inline&space;{L}"/> �I�y���[�^�i�s��j���v�Z�ł���悤�ɂƂ����C�����ł��B


```matlab
maskU
```
```
maskU = 6x7 �� logical �z��    
   0   0   0   0   0   0   0
   0   1   1   1   1   1   0
   0   1   1   1   1   1   0
   0   1   1   1   1   1   0
   0   1   1   1   1   1   0
   0   0   0   0   0   0   0

```


����ȍs��B���E�i0�j�ň͂܂�Ă��邾���̃V���v���Ȃ��̂ł��ˁB


## �A���������̉�@


�A�������� <img src="https://latex.codecogs.com/gif.latex?\inline&space;{{Au^*&space;}}={{r^n&space;}}"/> �������̂� MATLAB �����ӂƂ���Ƃ���ł��̂Ŋ֘A����֐��͑�R����܂��B����͂R�������Ă݂܂����B������ `getIntermediateU_xyCNAB.m` �����Ă��������B���x�̔�r�ȂǍׂ������؂͂܂�����ȍ~�Ɏ����z���܂��B




��Ō����ʂ� <img src="https://latex.codecogs.com/gif.latex?\inline&space;{A}"/> �̓X�p�[�X�s��B


```matlab
dt = 0.01; Re = 100;% �������ݒ�
A4u = eye(size(L4u),'like',L4u)-dt/(2*Re)*L4u; % A matrix for u 
spy(A4u)
```

![figure_1.png](vanilaCavityFlowImplicit_JP_images/figure_1.png)

### ���@�P�F���ږ@


MATLAB �̊֐��͓��͂��X�p�[�X�s��ł���΃X�p�[�X�s��p�̃A���S���Y�����i����Ɂj�g���Ă���܂��B


```matlab
r = rand(nx-1,ny); % �����ɉE�ӂ𗐐���
xu = A4u\r(:);
```
### ���@�Q�F�s�񕪉��{���ږ@


�������ԃX�e�b�v `dt` �ƃ��C�m���Y�� `Re` ���ς��Ȃ���΁A���O�� <img src="https://latex.codecogs.com/gif.latex?\inline&space;{A}"/> �𕪉��iLU�ALDL�A�R���X�L�[�AQR �Ȃǁj���Ă������ƂŁA���ږ@��**���Ȃ荂����**����܂��B




[decomposition �I�u�W�F�N�g](https://jp.mathworks.com/help/matlab/ref/decomposition.html)�́A������@����͍s��̃v���p�e�B�Ɋ�Â��Ď����I�ɑI�����Ă����̂ŁA�������@�͈ȉ��̒ʂ��s�ǉ����邾���ł��B


```matlab
A4u = decomposition(A4u); 
xu1 = A4u\r(:);
```


�s�񕪉��𖈉�v�Z����Ɩ{���]�|�Ȃ̂ŁA�����͏��񂾂��v�Z����悤�� [persistent �ϐ�](https://jp.mathworks.com/help/matlab/ref/persistent.html)�i�i���ϐ��j�Ƃ��Ē�`����̂��~�\�B


### ���@�R�F�����@


�Ō�ɔ����@�B�����ɂ� [11 �̃A���S���Y��](https://jp.mathworks.com/help/matlab/math/systems-of-linear-equations.html#brzoiix)���p�ӂ���Ă��܂��B�I���������肷���Ăނ��덢��܂��B




![image_2.png](vanilaCavityFlowImplicit_JP_images/image_2.png)




�����͂ЂƂ܂��Ώ̍s�������s����v�����Ȃ� `cgs`�i�����X�Γ��@�j�ŁB


```matlab
A4u = eye(size(L4u),'like',L4u)-dt/(2*Re)*L4u;
xu2 = cgs(A4u,r(:));
```
```
cgs �́A���Ύc�� 5.4e-11 �������� ���� 2 �Ŏ������܂����B
```


�O�������������܂��g���΍������ł������ł����A�����ł��u���ԃX�e�b�v `dt` �ƃ��C�m���Y�� `Re` ���ς��Ȃ���΁v�Ƃ����������K�v�ł��B


### ���܂��F�����@


�����@�̗ǂ��Ƃ���͍s��𖾎��I�ɗp�ӂ���K�v�͂Ȃ��Ƃ���B


```matlab
xu4 = cgs(@(x) operatorAu_CNAB(x,dt,Re,nx,ny,dx,dy),r(:));
```
```
cgs �́A���Ύc�� 5.4e-11 �������� ���� 2 �Ŏ������܂����B
```


�݂����� <img src="https://latex.codecogs.com/gif.latex?\inline&space;{{Au^*&space;}}"/>���v�Z����֐��i�����ł� `operatorAu_CNAB.m` �j��������ɗ^����̂��B


```matlab
Ax = x - dt/(2*Re)*(xbig(1:end-2,2:end-1)-2*xbig(2:end-1,2:end-1)+xbig(3:end,2:end-1))/dx^2; % nx-1 * ny
Ax = Ax - dt/(2*Re)*(xbig(2:end-1,1:end-2)-2*xbig(2:end-1,2:end-1)+xbig(2:end-1,3:end))/dy^2; % nx-1 * ny
Ax = Ax(:);
```


�Ƃ������ɍ������̂܂܏����o����̂ŊȒP�ł��B


# �����̃A�j���[�V�����\��


���āA�ȏ�̎�@���g����<img src="https://latex.codecogs.com/gif.latex?\inline&space;Re=5,000"/> �̃L���r�e�B������A�j���[�V�����\�����Ă݂܂��傤�B




�����ł͏����������o�����߂ɁA 3000 �X�e�b�v�񂷓r���ŗ̈�㕔�̑��x�𔽓]�����Ă��܂��B�����܂ł̑��x����X�V����v�Z������ `updateVelocityField_CNAB.m` �Ƃ��Ċ֐������Ă����܂��B




**����**�FR2019b �ł� `recordGIF = true` �ݒ�ňȉ������s����ƃG���[���������܂��BGIF���쐬����ꍇ�ɂ� `script_AnimateVelocityField_part2.m` �i�ȉ��Ɠ������e�ł��j�����s���Ă��������B




**�����ݒ�****`�F`**���� `quiver` �֐��ŕ`�����ł����A��󂪑����ƌ��Â炢�̂� `visRate` �Ԋu�ŊԈ����ĕ\�������܂��B�܂����X�e�b�v��������� GIF ���d���Ȃ�̂ŁA`recordRate` ���ɕ\���X�V���� GIF �ɏ������ނ悤�ɂ��܂��B


```matlab
visRate = 4; % downsample rate of the data for quiver
recordGIF = false; % GIF �쐬����ꍇ�� true �ɕύX
recordRate = 20;
filename = 'animation_part2.gif'; % Specify the output file name
```


**���ݒ�**


```matlab
Re = 5000; % Reynolds number
nt = 2000; % max time steps
Lx = 1; Ly = 1; % domain size
Nx = 80; Ny = 80; % Number of grids
dt = 0.003; % time step;
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


**���x��̏�����**


```matlab
figure
u = zeros(Nx+1,Ny+2); % velocity in x direction (u)
v = zeros(Nx+2,Ny+1); % velocity in y direction (v)
uce = (u(1:end-1,2:end-1)+u(2:end,2:end-1))/2; % u at cell center
vce = (v(2:end-1,1:end-1)+v(2:end-1,2:end))/2; % v at cell center
```


**�������}**


```matlab
figure
[Xce,Yce] = meshgrid(xce,yce); % cell center�̍��W�O���b�h
[~,h_abs] = contourf(Xce',Yce',sqrt(uce.^2+vce.^2)); % �������}
```
```
�x��: �������}�� ZData ���萔�̏ꍇ�̓����_�����O����܂���
```
```matlab
h_abs.LevelList = linspace(0,0.6,12);
hold on
```


**���x��i���j**


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
haxes.CLim = [0,0.6];
```


**�V�~�����[�V�����J�n**


```matlab
initialFrame = true;

for ii = 1:3000
    bctop = 1; % ���E�㕔�̑��x u
    
    if ii > 1000
        bctop = -1;
        harrow.X = [0.7, 0.3]; % ���̌��������]
    end
    
    % ���x��X�V�i�R�T�C���ϊ��g�p�j
    [u,v] = updateVelocityField_CNAB(u,v,Nx,Ny,dx,dy,Re,dt,bctop,'dct');
%     [u,v] = updateVelocityField_RK3(u,v,Nx,Ny,dx,dy,Re,dt,bctop,'dct');
    
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

![figure_2.png](vanilaCavityFlowImplicit_JP_images/figure_2.png)

  
# �܂Ƃ�


�܂����x�̌��؂͐扄�΂��ɂ��܂����A�� Reynolds �����V�~�����[�V�����ł���悤�ɂȂ����͗l�ł��B




����̓N�����N�E�j�R���\���@�ƃA�_���X�E�o�b�V���t�H�[�X�@���Љ�܂����B�A��@�ł͂�����̂́A�����C�m���Y���ł̓G�l���M�[�̎U��͂����肸���ԃX�e�b�v�����������Ȃ��Ɣ��U���Ă��܂��P�[�X���݂��܂����B




���������Ă݂āu���U����I�v�Ƃ��u���ԃX�e�b�v�����������ăV�~�����[�V�������i�܂Ȃ��E�E�v�Ƃ������Ƃł���΂��܂���3�i�K�̃����Q�E�N�b�^���������Ă܂��̂ł�����������Ă��������B


```matlab
    [u,v] = updateVelocityField_CNAB(u,v,Nx,Ny,dx,dy,Re,dt,bctop,'dct');
```


�̕�����


```matlab
    [u,v] = updateVelocityField_RK3(u,v,Nx,Ny,dx,dy,Re,dt,bctop,'dct');
```


�ɕς��Ă��������B




����u�񈳏k�� Navier-Stokes �������̐��l��@�R�F���E�����ŗV�ԁv�ł́A���E�����Ɏ��R�x���������ăL���r�e�B����ȊO���V�~�����[�V�����ł���悤�ɂ��܂��B���x�������x���؂��s���܂��B




�����̂������������Ⴂ�܂�����ALGTM �ŉ������Ă������� :)


# Appendix: �����Q�E�N�b�^�@


Spalart et al. (1991) [3] �ŏЉ��Ă��郋���Q�E�N�b�^�@�i�R�i�K�̔��A��@�j���������Ă݂܂����B`updateVelocityField_RK3.m` �����Ă��������B




`dt` ���ԃX�e�b�v�i�ނ̂ɂR�{�̌v�Z�ʂ��g���܂����A���肷�镪 `dt` ��傫���ł��郁���b�g������܂��B��̓I�Ȏ��ƌW���͈ȉ��̒ʂ�B



<img src="https://latex.codecogs.com/gif.latex?\begin{array}{rl}&space;{A}&space;&&space;={r}^n&space;\;\;{{where}}\;\;{A}={I}-\beta_i&space;\frac{dt}{Re}{L}\\&space;{{r^n&space;}}&space;&&space;={u}^n&space;+dt\left\lbrace&space;-\gamma_j&space;{{{Nu}}}^n&space;-\zeta_i&space;{{{Nu}}}^{n-1}&space;+\frac{1}{Re}\left(\alpha_i&space;\left({{{Lu}}}^n&space;+bc_L^n&space;\right)+\beta_i&space;bc_L^{n+1}&space;\right)\right\rbrace&space;&space;\end{array}"/>



������



<img src="https://latex.codecogs.com/gif.latex?\begin{array}{lll}&space;\alpha_1&space;=4/15,&space;&&space;\alpha_2&space;=1/15,&space;&&space;\alpha_3&space;=1/6,\\&space;\beta_1&space;=4/15,&space;&&space;\beta_2&space;=1/15,&space;&&space;\beta_3&space;=1/6,\\&space;\gamma_1&space;=8/15,&space;&&space;\gamma_2&space;=5/12,&space;&&space;\gamma_3&space;=3/4,\\&space;\zeta_1&space;=0,&space;&&space;\zeta_2&space;=-17/60,&space;&&space;\zeta_3&space;=-5/12.&space;\end{array}"/>



�ł��B


# References


[1] B. Perot, An analysis of the fractional step method. J. Comp. Physics, 108: 51-58, 1993




[2] Simens, M.P., Jim�Lenez, J., Hoyas, S. and Mizuno, Y. 2009 A high-resolution code for turbulent boundary layers. Journal of Computational Physics 228 (11), 4218-4231.




[3] Spalart, P.R., Moser, R.D. and Rogers, M.M. 1991 Spectral methods for the Navier-Stokes equations with one infinite and two periodic directions. Journal of Computational Physics 96 (2), 297-324.


