%%�����ݷ�Ϊ�����֣�ѵ�����ݡ���������
clear;
%������ʼ��
datafile='C:\Users\17849\Desktop\�½��ļ���\�ϻ�ʵ��-ˮɫͼƬ\data\moment.xls';%�����ļ�
trainfile='C:\Users\17849\Desktop\�½��ļ���\�ϻ�ʵ��-ˮɫͼƬ\data\�и��ͼ��\train_moment.xls';%ѵ�������ļ�
testfile='C:\Users\17849\Desktop\�½��ļ���\�ϻ�ʵ��-ˮɫͼƬ\data\�и��ͼ��\test_moment.xls';%���������ļ�
proportion=0.8;%����ѵ�����ݱ���

%%���ݷָ�
[num,txt]=xlsread(datafile);
%split2train_testΪ�Զ��庯������num�������ݣ����зֲ�����Ϊ������
%����ѵ�����ݼ�ռ��proportion
[train,test]=split2train_test(num,proportion);

%%���ݴ���
xlswrite(trainfile,[txt;num2cell(train)]);%д��ѵ������
xlswrite(testfile,[txt;num2cell(train)]);%д���������
disp('���ݷָ����!');