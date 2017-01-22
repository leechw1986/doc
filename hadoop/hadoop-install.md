# Hadoop安装教程_单机-伪分布式配置
* 环境Hadoop2.6.0/Ubuntu14.04

## 环境
* 创建hadoop用户
      sudo useradd -m hadoop -s /bin/bash
      sudo passwd hadoop
* 更新apt
      sudo apt-get update
* 安装SSH、配置SSH无密码登陆
      sudo apt-get install openssh-server
      ssh localhost
      exit                           # 退出刚才的 ssh localhost
      cd ~/.ssh/                     # 若没有该目录，请先执行一次ssh localhost
      ssh-keygen -t rsa              # 会有提示，都按回车就可以
      cat ./id_rsa.pub >> ./authorized_keys  # 加入授权
* 安装Java环境
      vim ~/.bashrc
      export JAVA_HOME=JDK安装路径
      source ~/.bashrc
      echo $JAVA_HOME     # 检验变量值
      java -version
      $JAVA_HOME/bin/java -version  # 与直接执行 java -version 一样

## 安装 Hadoop 2
- [下载地址mirrors of cnnic](http://mirrors.cnnic.cn/apache/hadoop/common/)
- 下载校验
      cat ~/Downloads/hadoop-2.6.0.tar.gz.mds | grep 'MD5' # 列出md5检验值
      # head -n 6 ~/下载/hadoop-2.7.1.tar.gz.mds # 2.7.1版本格式变了，可以用这种方式输出
      md5sum ~/下载/hadoop-2.6.0.tar.gz | tr "a-z" "A-Z" # 计算md5值，并转化为大写，方便比较
- 安装
      sudo tar -zxf ~/下载/hadoop-2.6.0.tar.gz -C /usr/local    # 解压到/usr/local中
      cd /usr/local/
      sudo mv ./hadoop-2.6.0/ ./hadoop            # 将文件夹名改为hadoop
      sudo chown -R hadoop ./hadoop       # 修改文件权限
      cd /usr/local/hadoop
      ./bin/hadoop version
- Hadoop单机配置(非分布式)
      cd /usr/local/hadoop
      mkdir ./input
      cp ./etc/hadoop/*.xml ./input   # 将配置文件作为输入文件
      ./bin/hadoop jar ./share/hadoop/mapreduce/hadoop-mapreduce-examples-*.jar grep ./input ./output 'dfs[a-z.]+'
      cat ./output/*
      下次执行之前需要 rm -r ./output

## Hadoop伪分布式配置
- ./etc/hadoop/core-site.xml
        <configuration>
          <property>
               <name>hadoop.tmp.dir</name>
               <value>file:/usr/local/hadoop/tmp</value>
               <description>Abase for other temporary directories.</description>
          </property>
          <property>
               <name>fs.defaultFS</name>
               <value>hdfs://localhost:9000</value>
          </property>
        </configuration>
- ./etc/hadoop/hdfs-site.xml
        <configuration>
              <property>
                   <name>dfs.replication</name>
                   <value>1</value>
              </property>
              <property>
                   <name>dfs.namenode.name.dir</name>
                   <value>file:/usr/local/hadoop/tmp/dfs/name</value>
              </property>
              <property>
                   <name>dfs.datanode.data.dir</name>
                   <value>file:/usr/local/hadoop/tmp/dfs/data</value>
              </property>
        </configuration>
- NameNode 的格式化
        ./bin/hdfs namenode -format
- 开启NameNode和DataNode
        ./sbin/start-dfs.sh
- 如果启动 Hadoop 时提示 Could not resolve hostname
        vim ~/.bashrc
        export HADOOP_HOME=/usr/local/hadoop
        export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
- 可以访问[http://localhost:50070/](http://localhost:50070/)
      查看 NameNode 和 Datanode 信息.还可以在线查看 HDFS 中的文件。

## 运行Hadoop伪分布式实例
- HDFS 中创建用户目录
      ./bin/hdfs dfs -mkdir -p /user/hadoop
- ./etc/hadoop 中的 xml 文件作为输入文件复制到分布式文件系统中    
      ./bin/hdfs dfs -mkdir input
      ./bin/hdfs dfs -put ./etc/hadoop/*.xml input
      ./bin/hdfs dfs -ls input
- 伪分布式读取的是HDFS中的文件    
      ./bin/hadoop jar ./share/hadoop/mapreduce/hadoop-mapreduce-examples-*.jar grep input output 'dfs[a-z.]+'
      ./bin/hdfs dfs -cat output/*
- 取回文件至本地
      rm -r ./output    # 先删除本地的 output 文件夹（如果存在）
      ./bin/hdfs dfs -get output ./output     # 将 HDFS 上的 output 文件夹拷贝到本机
      cat ./output/*
- Hadoop 运行程序时，输出目录不能存在，否则会提示错误 “org.apache.hadoop.mapred.FileAlreadyExistsException: Output directory hdfs://localhost:9000/user/hadoop/output already exists” ，因此若要再次执行，需要执行如下命令删除 output 文件夹:
      ./bin/hdfs dfs -rm -r output

## 启动YARN
- 修改配置文件 mapred-site.xml
      mv ./etc/hadoop/mapred-site.xml.template ./etc/hadoop/mapred-site.xml
      <configuration>
          <property>
               <name>mapreduce.framework.name</name>
               <value>yarn</value>
          </property>
      </configuration>
- 修改配置文件 yarn-site.xml
      <configuration>
              <property>
                   <name>yarn.nodemanager.aux-services</name>
                   <value>mapreduce_shuffle</value>
                  </property>
      </configuration>
- 启动 YARN
      ./sbin/start-yarn.sh      # 启动YARN
      ./sbin/mr-jobhistory-daemon.sh start historyserver  # 开启历史服务器，才能在Web中查看任务运行情况
- 关闭 YARN
      ./sbin/stop-yarn.sh
      ./sbin/mr-jobhistory-daemon.sh stop historyserver

- SPARK 需要 hive-site.xml
