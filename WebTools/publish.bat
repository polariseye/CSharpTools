rem ��ĿĿ¼
SET ProjectPath="E:\Project\WebSite\WebSite.csproj"

rem �������ɵ���Ŀ��·��
SET PublishPath="E:/tttt"

rem framework��·��
SET dotNetFrameworkPath=C:/WINDOWS/Microsoft.NET/Framework/v4.0.30319

rem ============================IIS��������===========================
rem /t:rebuild ����������Ŀ
rem /p:Platform=AnyCPU ����AnyCPU
rem /t:ResolveReferences ������Ŀ����
rem /t:_CopyWebApplication ����web����ļ�
rem /p:VisualStudioVersion=12.0 vs�汾
rem /p:DeleteExistingFiles ɾ���Ѿ����ڵ��ļ�
rem /p:WebProjectOutputDir ָ�����Ŀ¼
%dotNetFrameworkPath%\msbuild %ProjectPath% /p:Platform=AnyCPU /t:rebuild /t:ResolveReferences;Compile /t:_WPPCopyWebApplication /t:_CopyWebApplication /p:VisualStudioVersion=12.0 /p:Configuration=Release /p:_ResolveReferenceDependencies=true /p:DeleteExistingFiles=True /p:WebProjectOutputDir=%PublishPath%
