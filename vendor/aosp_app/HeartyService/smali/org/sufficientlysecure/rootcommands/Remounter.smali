.class Lorg/sufficientlysecure/rootcommands/Remounter;
.super Ljava/lang/Object;
.source "Remounter.java"


# instance fields
.field private shell:Lorg/sufficientlysecure/rootcommands/Shell;


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/rootcommands/Shell;)V
    .locals 0
    .parameter "shell"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/sufficientlysecure/rootcommands/Remounter;->shell:Lorg/sufficientlysecure/rootcommands/Shell;

    .line 38
    return-void
.end method

.method private findMountPointRecursive(Ljava/lang/String;)Lorg/sufficientlysecure/rootcommands/Mount;
    .locals 8
    .parameter "file"

    .prologue
    const/4 v5, 0x0

    .line 134
    :try_start_0
    invoke-static {}, Lorg/sufficientlysecure/rootcommands/Remounter;->getMounts()Ljava/util/ArrayList;

    move-result-object v3

    .line 135
    .local v3, mounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/sufficientlysecure/rootcommands/Mount;>;"
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, path:Ljava/io/File;
    :cond_0
    if-eqz v4, :cond_2

    .line 136
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/rootcommands/Mount;

    .line 137
    .local v2, mount:Lorg/sufficientlysecure/rootcommands/Mount;
    invoke-virtual {v2}, Lorg/sufficientlysecure/rootcommands/Mount;->getMountPoint()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-eqz v6, :cond_1

    .line 148
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #mount:Lorg/sufficientlysecure/rootcommands/Mount;
    .end local v3           #mounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/sufficientlysecure/rootcommands/Mount;>;"
    .end local v4           #path:Ljava/io/File;
    :goto_0
    return-object v2

    .restart local v3       #mounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/sufficientlysecure/rootcommands/Mount;>;"
    .restart local v4       #path:Ljava/io/File;
    :cond_2
    move-object v2, v5

    .line 142
    goto :goto_0

    .line 143
    .end local v3           #mounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/sufficientlysecure/rootcommands/Mount;>;"
    .end local v4           #path:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 145
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 146
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "RootCommands"

    const-string v7, "Exception"

    invoke-static {v6, v7, v0}, Lorg/sufficientlysecure/rootcommands/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v5

    .line 148
    goto :goto_0
.end method

.method protected static getMounts()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/sufficientlysecure/rootcommands/Mount;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 163
    const-string v6, "/data/local/RootToolsMounts"

    .line 166
    .local v6, tempFile:Ljava/lang/String;
    invoke-static {}, Lorg/sufficientlysecure/rootcommands/Shell;->startRootShell()Lorg/sufficientlysecure/rootcommands/Shell;

    move-result-object v4

    .line 167
    .local v4, shell:Lorg/sufficientlysecure/rootcommands/Shell;
    new-instance v5, Lorg/sufficientlysecure/rootcommands/Toolbox;

    invoke-direct {v5, v4}, Lorg/sufficientlysecure/rootcommands/Toolbox;-><init>(Lorg/sufficientlysecure/rootcommands/Shell;)V

    .line 168
    .local v5, tb:Lorg/sufficientlysecure/rootcommands/Toolbox;
    const-string v7, "/proc/mounts"

    const-string v8, "/data/local/RootToolsMounts"

    invoke-virtual {v5, v7, v8, v12, v12}, Lorg/sufficientlysecure/rootcommands/Toolbox;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 169
    const-string v7, "/data/local/RootToolsMounts"

    const-string v8, "777"

    invoke-virtual {v5, v7, v8}, Lorg/sufficientlysecure/rootcommands/Toolbox;->setFilePermissions(Ljava/lang/String;Ljava/lang/String;)Z

    .line 170
    invoke-virtual {v4}, Lorg/sufficientlysecure/rootcommands/Shell;->close()V

    .line 172
    const/4 v2, 0x0

    .line 173
    .local v2, lnr:Ljava/io/LineNumberReader;
    new-instance v2, Ljava/io/LineNumberReader;

    .end local v2           #lnr:Ljava/io/LineNumberReader;
    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/data/local/RootToolsMounts"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v7}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 175
    .restart local v2       #lnr:Ljava/io/LineNumberReader;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v3, mounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/sufficientlysecure/rootcommands/Mount;>;"
    :goto_0
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 178
    const-string v7, "RootCommands"

    invoke-static {v7, v1}, Lorg/sufficientlysecure/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, fields:[Ljava/lang/String;
    new-instance v7, Lorg/sufficientlysecure/rootcommands/Mount;

    new-instance v8, Ljava/io/File;

    aget-object v9, v0, v12

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    const/4 v10, 0x1

    aget-object v10, v0, v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x2

    aget-object v10, v0, v10

    const/4 v11, 0x3

    aget-object v11, v0, v11

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/sufficientlysecure/rootcommands/Mount;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 187
    .end local v0           #fields:[Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->close()V

    .line 189
    return-object v3
.end method


# virtual methods
.method protected remount(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "file"
    .parameter "mountType"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 59
    const-string v9, "/"

    invoke-virtual {p1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "/"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 60
    const-string v9, "/"

    invoke-virtual {p1, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 63
    :cond_0
    const/4 v2, 0x0

    .line 64
    .local v2, foundMount:Z
    :cond_1
    :goto_0
    if-nez v2, :cond_4

    .line 66
    :try_start_0
    invoke-static {}, Lorg/sufficientlysecure/rootcommands/Remounter;->getMounts()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/sufficientlysecure/rootcommands/Mount;

    .line 67
    .local v5, mount:Lorg/sufficientlysecure/rootcommands/Mount;
    const-string v9, "RootCommands"

    invoke-virtual {v5}, Lorg/sufficientlysecure/rootcommands/Mount;->getMountPoint()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/sufficientlysecure/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v5}, Lorg/sufficientlysecure/rootcommands/Mount;->getMountPoint()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_2

    .line 70
    const/4 v2, 0x1

    .line 78
    .end local v5           #mount:Lorg/sufficientlysecure/rootcommands/Mount;
    :cond_3
    if-nez v2, :cond_1

    .line 80
    :try_start_1
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    goto :goto_0

    .line 74
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 75
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "RootCommands"

    const-string v9, "Exception"

    invoke-static {v8, v9, v1}, Lorg/sufficientlysecure/rootcommands/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .end local v1           #e:Ljava/lang/Exception;
    :goto_1
    return v7

    .line 81
    .restart local v3       #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v1

    .line 82
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v8, "RootCommands"

    const-string v9, "Exception"

    invoke-static {v8, v9, v1}, Lorg/sufficientlysecure/rootcommands/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 87
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/rootcommands/Remounter;->findMountPointRecursive(Ljava/lang/String;)Lorg/sufficientlysecure/rootcommands/Mount;

    move-result-object v6

    .line 89
    .local v6, mountPoint:Lorg/sufficientlysecure/rootcommands/Mount;
    const-string v9, "RootCommands"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Remounting "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lorg/sufficientlysecure/rootcommands/Mount;->getMountPoint()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " as "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/sufficientlysecure/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v6}, Lorg/sufficientlysecure/rootcommands/Mount;->getFlags()Ljava/util/Set;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 93
    .local v4, isMountMode:Z
    if-nez v4, :cond_5

    .line 96
    :try_start_2
    new-instance v0, Lorg/sufficientlysecure/rootcommands/command/SimpleCommand;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "busybox mount -o remount,"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lorg/sufficientlysecure/rootcommands/Mount;->getDevice()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lorg/sufficientlysecure/rootcommands/Mount;->getMountPoint()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "toolbox mount -o remount,"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lorg/sufficientlysecure/rootcommands/Mount;->getDevice()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lorg/sufficientlysecure/rootcommands/Mount;->getMountPoint()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mount -o remount,"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lorg/sufficientlysecure/rootcommands/Mount;->getDevice()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lorg/sufficientlysecure/rootcommands/Mount;->getMountPoint()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/system/bin/toolbox mount -o remount,"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lorg/sufficientlysecure/rootcommands/Mount;->getDevice()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lorg/sufficientlysecure/rootcommands/Mount;->getMountPoint()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-direct {v0, v9}, Lorg/sufficientlysecure/rootcommands/command/SimpleCommand;-><init>([Ljava/lang/String;)V

    .line 110
    .local v0, command:Lorg/sufficientlysecure/rootcommands/command/SimpleCommand;
    iget-object v9, p0, Lorg/sufficientlysecure/rootcommands/Remounter;->shell:Lorg/sufficientlysecure/rootcommands/Shell;

    invoke-virtual {v9, v0}, Lorg/sufficientlysecure/rootcommands/Shell;->add(Lorg/sufficientlysecure/rootcommands/command/Command;)Lorg/sufficientlysecure/rootcommands/command/Command;

    move-result-object v9

    invoke-virtual {v9}, Lorg/sufficientlysecure/rootcommands/command/Command;->waitForFinish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 115
    .end local v0           #command:Lorg/sufficientlysecure/rootcommands/command/SimpleCommand;
    :goto_2
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/rootcommands/Remounter;->findMountPointRecursive(Ljava/lang/String;)Lorg/sufficientlysecure/rootcommands/Mount;

    move-result-object v6

    .line 118
    :cond_5
    if-eqz v6, :cond_7

    .line 119
    const-string v9, "RootCommands"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lorg/sufficientlysecure/rootcommands/Mount;->getFlags()Ljava/util/Set;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " AND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/sufficientlysecure/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v6}, Lorg/sufficientlysecure/rootcommands/Mount;->getFlags()Ljava/util/Set;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 121
    const-string v7, "RootCommands"

    invoke-virtual {v6}, Lorg/sufficientlysecure/rootcommands/Mount;->getFlags()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lorg/sufficientlysecure/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v8

    .line 122
    goto/16 :goto_1

    .line 124
    :cond_6
    const-string v8, "RootCommands"

    invoke-virtual {v6}, Lorg/sufficientlysecure/rootcommands/Mount;->getFlags()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/sufficientlysecure/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 127
    :cond_7
    const-string v8, "RootCommands"

    const-string v9, "mountPoint is null"

    invoke-static {v8, v9}, Lorg/sufficientlysecure/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 112
    :catch_2
    move-exception v9

    goto :goto_2
.end method
