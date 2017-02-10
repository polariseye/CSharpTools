rem 项目目录
SET ProjectPath="E:\Project\WebSite\WebSite.csproj"

rem 发布生成到的目标路径
SET PublishPath="E:/tttt"

rem framework的路径
SET dotNetFrameworkPath=C:/WINDOWS/Microsoft.NET/Framework/v4.0.30319

rem ============================IIS发布工程===========================
rem /t:rebuild 重新生成项目
rem /p:Platform=AnyCPU 生成AnyCPU
rem /t:ResolveReferences 生成项目依赖
rem /t:_CopyWebApplication 拷贝web相关文件
rem /p:VisualStudioVersion=12.0 vs版本
rem /p:DeleteExistingFiles 删除已经存在的文件
rem /p:WebProjectOutputDir 指定输出目录
%dotNetFrameworkPath%\msbuild %ProjectPath% /p:Platform=AnyCPU /t:rebuild /t:ResolveReferences;Compile /t:_WPPCopyWebApplication /t:_CopyWebApplication /p:VisualStudioVersion=12.0 /p:Configuration=Release /p:_ResolveReferenceDependencies=true /p:DeleteExistingFiles=True /p:WebProjectOutputDir=%PublishPath%
