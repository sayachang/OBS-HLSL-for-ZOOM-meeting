# OBS-HLSL-for-ZOOM-meeting
screen effect shader for video meeting

## OBS�ŃV�F�[�_�[��`���āAzoom�~�[�e�B���O���V�F�[�_�[���C�u�R�[�f�B���O���ɂ��悤�I  
![OBS zoom shader](https://raw.githubusercontent.com/sayachang/OBS-HLSL-for-ZOOM-meeting/develop/images/obs-zoom-3x3-shader.png "OBS zoom shader")

�u�����[�g���[�N�Ŗ���zoom���g���đł����킹�����Ă��邯�ǁA�����΂��̂��Ȃ��r�f�I��ʂɂ������񂴂�I�v

����ȕ��Ɋ����Ă��܂��񂩁H�I

����OBS�ŊȒP�ȃV�F�[�_�[��`���āA������Ƃ����G�t�F�N�g�őł����킹������т����肳���Ă݂܂��傤�I

�����͂ނ��������͂���܂���I�ȉ��̎菇�ŃC���X�g�[�����A���̃��|�W�g���̃V�F�[�_�[���_�E�����[�h���ēK�p���Ă݂܂��傤�I

## ����  
1. �����܂��Ȃ�[zoom](https://zoom.us/jp-jp/meetings.html)���C���X�g�[�����܂�  
1. [OBS](https://obsproject.com/ja/download)���C���X�g�[�����܂�  
1. �o�[�`�����J�������g�����߂�[VirtualCam�v���O�C��](https://obsproject.com/forum/resources/obs-virtualcam.539/)��ǉ����܂�  
1. �V�F�[�_�[���g�����߂�[Shaderfilter�v���O�C��](https://obsproject.com/forum/resources/obs-shaderfilter-v1-0-update.775/)���ǉ����܂�  

OBS Studio�̃C���X�g�[���t�H���_�ɃR�s�[�����OK

Windows���Ńf�t�H���g�̃p�X�ɓ��ꂽ�ꍇ�A�ȉ��̂悤�ɂȂ�܂�

C:\Program Files\obs-studio\data\obs-plugins\obs-shaderfilter\examples

1. OBS���N�����ăZ�b�g�A�b�v���܂�  

![boot OBS](https://raw.githubusercontent.com/sayachang/OBS-HLSL-for-ZOOM-meeting/develop/images/boot-obs.png "boot OBS")

�\�[�X�̂Ƃ���ɊO�t���̃J������A�m�[�gPC�g�ݍ��݂̃J�������w�肵�܂�

�c�[��->VirtualCam��Start���N���b�N����Ɖf�����o��悤�ɂȂ�܂�

![tool virtual cam](https://raw.githubusercontent.com/sayachang/OBS-HLSL-for-ZOOM-meeting/develop/images/tool-virtual-cam.png "tool virtual cam")

1. zoom�̐ݒ�ŁA�r�f�I->�J��������OBS��VirtualCam���w�肵�܂�  

![zoom config](https://raw.githubusercontent.com/sayachang/OBS-HLSL-for-ZOOM-meeting/develop/images/zoom-configure.png "zoom config")

�\�[�X�̃J�����E�N���b�N����t�B���^���N���b�N����ƃV�F�[�_�[��I���ł��܂�

![apply shader](https://raw.githubusercontent.com/sayachang/OBS-HLSL-for-ZOOM-meeting/develop/images/apply-shader.png "apply shader")

User-defined shader����Load shader text from file�̃`�F�b�N�����A�Q�ƃ{�^������V�F�[�_�[�t�@�C����I�ԂƃG�t�F�N�g��ǉ��ł��܂�

