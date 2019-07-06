%%��ɫ����ȡ��
%������ʼ��
filename='C:\Users\17849\Desktop\�½��ļ���\�ϻ�ʵ��-ˮɫͼƬ\data\�и��ͼ��\';%ͼ���и��ͼƬ·������
outputfile='C:\Users\17849\Desktop\�½��ļ���\�ϻ�ʵ��-ˮɫͼƬ\data\�и��ͼ��\';%��ɫ����ȡ�ļ�
list = dir(filename);
%%����׾�
for i=1:length(list)
results=zeros(1,9+2);
subimage=imread([ sourcefile files(i).name]);%��ȡͼ������
subimage=im2double(subimage);%����ת��
firstmoment=mean(mean(subimage));%һ�׾� ���ֵ
for m=1:3  %���RGB��ͨ���ֱ����
    results(1,2+m)=firstmoment(1,1,m);
    differencemoment=subimage(:,:,m)-firstmoment(1,1,m);
    secondmoment=sqrt(sum(differencemoment(:).*differencemoment(:))/101/101);
    %���׾�   ���׼��
    results(1,5+m)=secondmoment;
    thirdmoment=nthroot(sum(differencemoment(:).*differencemoment(:).*differencemoment(:))/101/101,3);
    %���׾�
    results(1,8+m)=thirdmoment;
end
end

%��ȡ�������
index_=strfind(filename,'\');
index_dot=strfind(filename,'_');

filename=filename(index_(1,end)+1:index_dot(1,end)-1);
index_=strfind(filename,'_');
type=filename(1:index_-1);
id=filename(index_+1:end);
results(1,1)=str2double(type);
results(1,2)=str2double(id);

%% �׾�д���ļ�
result_title={'���' '���' 'Rͨ��һ�׾�' 'Gͨ��һ�׾�' 'Bͨ��һ�׾�' 'Rͨ�����׾�' ...
    'Gͨ�����׾�' 'Bͨ�����׾�' 'Rͨ�����׾�' 'Gͨ�����׾�' 'Bͨ�����׾�'};
result=[result_title;num2cell(results)];
xlswrite(outputfile,result);
disp('ͼ��׾��ļ�����');