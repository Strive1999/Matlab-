%%����ͼ���и�
clear;
%������ʼ��
sourcefile='C:\Users\17849\Desktop\�½��ļ���\�ϻ�ʵ��-ˮɫͼƬ\data\images\';%ԭʼͼ��·������
destfile='C:\Users\17849\Desktop\�½��ļ���\�ϻ�ʵ��-ˮɫͼƬ\data\�и��ͼ��\';%�и��ͼ��·������
files = dir(sourcefile);
%%��ȡͼ�񲢽�ȡ
for i=1:length(files)
image_i=imread([ sourcefile files(i).name]);
[width,length,z]=size(image_i);
subimage=image_i(fix(width/2)-50:fix(width/2)+50,fix(length/2)-50:fix(length/2)+50,:);

%%�����и�������
imwrite(subimage,destfile[ sourcefile files(i).name]);
disp([sourcefile ' ͼƬnum(i)�ָ���� ' ]);  
end