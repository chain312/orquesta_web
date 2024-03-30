# Orquesta_web
#### 这个项目名为Orquesta_web，fork自 [Rehearsal](https://github.com/trstruth/rehearsal) 是一个基于Docker的小型Web应用程序，使用Flask和React编写，旨在帮助用户在浏览器中编辑[orquesta](https://github.com/StackStorm/orquesta) 工作流文件并可视化相应的图表。 这个项目能够帮助你了解st2中的可视化编排怎么实现的，如果你debug这项目，你可以了解yaml剧本怎么被转为一个有序的有向图。
![rehearsal screenshot](rehearsal-screenshot.png)

### 快速开始
进入到这个项目的目录中
```
docker-compose up -d
```
打开浏览器，访问localhost:5000，应该能看到一个YAML编辑器。将喜欢的Orquesta工作流定义粘贴到编辑器中，稍等一两秒钟，就会出现如上图的效果。
### 概述
orquesta_web是一个轻量级的Flask应用程序，可以帮助您开发Orquesta工作流。通过审查由YAML定义组成的有向图，可以对工作流进行检查。这种紧密的反馈循环可以帮助减少工作流开发时间，并且分享工作流的高级流程图可以帮助其他人，快速建立对工作流实例基本逻辑理解。

Orquesta的源代码被绑定挂载为./image/orquesta:/orquesta，并且在容器内使用-e标志通过pip安装。这意味着您可以在主机上编辑Orquesta的源代码，并查看它如何影响组合图。为Orquesta做出贡献的人可能会发现这很有用。

orquesta_web使用Docker化，因为它的依赖项（特别是pygraphviz）的安装比较复杂，如果你想在windows上进行调试，需要先安装graphviz，并且设置上环境变量，所以这个项目不用一步一步进行安装，只需要运行docker-compose up -d就可以了。

### 进一步了解
- 如果你对这个项目感兴趣可以阅读前端代码 [editor](https://github.com/trstruth/rehearsal/blob/master/image/web/src/Editor.jsx) 
- 如果你想了解这个想的图形是怎么构建的，可以看这个项目的后端代码 [flask](https://github.com/trstruth/rehearsal/blob/master/image/web/app.py) 
- 如果你想了解这yaml文件怎么转为流程实例的，你可以看着 [orquesta](https://github.com/StackStorm/orquesta) 的源代码

### 讨论
如果你对st2的可视化或者自动化运行感兴趣，欢迎加入和我讨论，讨论能增加更多的经验和技巧。