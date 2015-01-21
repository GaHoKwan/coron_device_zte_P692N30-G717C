.class public final Ltmsdk/common/utils/Logcat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "logcat -c"

    aput-object v2, v0, v1

    invoke-static {v0}, Ltmsdk/common/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static varargs declared-synchronized filter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 22
    .parameter "tag"
    .parameter "format"
    .parameter "keywrods"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    const-class v16, Ltmsdk/common/utils/Logcat;

    monitor-enter v16

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .local v2, des:Ljava/lang/StringBuilder;
    new-instance v11, Ljava/io/File;

    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v15

    const-string v17, "logcat"

    move-object/from16 v0, v17

    invoke-direct {v11, v15, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    .local v11, logcatfile:Ljava/io/File;
    invoke-static {v11}, Ltmsdkobf/jv;->b(Ljava/io/File;)V

    .line 46
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "%s -d %s -f %s -s %s:I"

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "logcat"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    if-nez p1, :cond_0

    const-string p1, "-v time"

    .end local p1
    :cond_0
    aput-object p1, v19, v20

    const/16 v20, 0x2

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    aput-object p0, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v17

    const/16 v17, 0x1

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "chmod 777 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v17

    invoke-static {v2, v15}, Ltmsdk/common/utils/ScriptHelper;->runScript(Ljava/lang/StringBuilder;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    const-wide/16 v17, 0x1f4

    :try_start_1
    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 55
    :goto_0
    :try_start_2
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v14, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v11}, Ljava/io/File;->canRead()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 57
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    .local v10, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 61
    .local v12, reader:Ljava/io/DataInputStream;
    :try_start_3
    new-instance v13, Ljava/io/DataInputStream;

    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v13, v15}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 62
    .end local v12           #reader:Ljava/io/DataInputStream;
    .local v13, reader:Ljava/io/DataInputStream;
    const/4 v9, 0x0

    .line 63
    .local v9, line:Ljava/lang/String;
    :goto_1
    :try_start_4
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 64
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_1

    .line 67
    :catch_0
    move-exception v3

    move-object v12, v13

    .line 68
    .end local v9           #line:Ljava/lang/String;
    .end local v13           #reader:Ljava/io/DataInputStream;
    .local v3, e:Ljava/io/FileNotFoundException;
    .restart local v12       #reader:Ljava/io/DataInputStream;
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 73
    if-eqz v12, :cond_1

    .line 75
    :try_start_6
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 82
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    :try_start_7
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 83
    .restart local v9       #line:Ljava/lang/String;
    move-object/from16 v1, p2

    .local v1, arr$:[Ljava/lang/String;
    array-length v8, v1

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_5
    if-ge v6, v8, :cond_2

    aget-object v7, v1, v6

    .line 84
    .local v7, keyword:Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 85
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 43
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #des:Ljava/lang/StringBuilder;
    .end local v6           #i$:I
    .end local v7           #keyword:Ljava/lang/String;
    .end local v8           #len$:I
    .end local v9           #line:Ljava/lang/String;
    .end local v10           #lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #logcatfile:Ljava/io/File;
    .end local v12           #reader:Ljava/io/DataInputStream;
    .end local v14           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v15

    monitor-exit v16

    throw v15

    .line 51
    .restart local v2       #des:Ljava/lang/StringBuilder;
    .restart local v11       #logcatfile:Ljava/io/File;
    :catch_1
    move-exception v4

    .line 52
    .local v4, e1:Ljava/lang/InterruptedException;
    :try_start_8
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 73
    .end local v4           #e1:Ljava/lang/InterruptedException;
    .restart local v9       #line:Ljava/lang/String;
    .restart local v10       #lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v13       #reader:Ljava/io/DataInputStream;
    .restart local v14       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    if-eqz v13, :cond_7

    .line 75
    :try_start_9
    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    move-object v12, v13

    .line 78
    .end local v13           #reader:Ljava/io/DataInputStream;
    .restart local v12       #reader:Ljava/io/DataInputStream;
    goto :goto_3

    .line 76
    .end local v12           #reader:Ljava/io/DataInputStream;
    .restart local v13       #reader:Ljava/io/DataInputStream;
    :catch_2
    move-exception v3

    .line 77
    .local v3, e:Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v12, v13

    .line 78
    .end local v13           #reader:Ljava/io/DataInputStream;
    .restart local v12       #reader:Ljava/io/DataInputStream;
    goto :goto_3

    .line 76
    .end local v9           #line:Ljava/lang/String;
    .local v3, e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v3

    .line 77
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    .line 69
    .end local v3           #e:Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 70
    .restart local v3       #e:Ljava/io/IOException;
    :goto_6
    :try_start_b
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 73
    if-eqz v12, :cond_1

    .line 75
    :try_start_c
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_3

    .line 76
    :catch_5
    move-exception v3

    .line 77
    :try_start_d
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_3

    .line 73
    .end local v3           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v15

    :goto_7
    if-eqz v12, :cond_4

    .line 75
    :try_start_e
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    .line 78
    :cond_4
    :goto_8
    :try_start_f
    throw v15

    .line 76
    :catch_6
    move-exception v3

    .line 77
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_8

    .line 83
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v6       #i$:I
    .restart local v7       #keyword:Ljava/lang/String;
    .restart local v8       #len$:I
    .restart local v9       #line:Ljava/lang/String;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 92
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #keyword:Ljava/lang/String;
    .end local v8           #len$:I
    .end local v9           #line:Ljava/lang/String;
    .end local v10           #lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12           #reader:Ljava/io/DataInputStream;
    :cond_6
    monitor-exit v16

    return-object v14

    .line 73
    .restart local v9       #line:Ljava/lang/String;
    .restart local v10       #lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v13       #reader:Ljava/io/DataInputStream;
    :catchall_2
    move-exception v15

    move-object v12, v13

    .end local v13           #reader:Ljava/io/DataInputStream;
    .restart local v12       #reader:Ljava/io/DataInputStream;
    goto :goto_7

    .line 69
    .end local v12           #reader:Ljava/io/DataInputStream;
    .restart local v13       #reader:Ljava/io/DataInputStream;
    :catch_7
    move-exception v3

    move-object v12, v13

    .end local v13           #reader:Ljava/io/DataInputStream;
    .restart local v12       #reader:Ljava/io/DataInputStream;
    goto :goto_6

    .line 67
    .end local v9           #line:Ljava/lang/String;
    :catch_8
    move-exception v3

    goto :goto_2

    .end local v12           #reader:Ljava/io/DataInputStream;
    .restart local v9       #line:Ljava/lang/String;
    .restart local v13       #reader:Ljava/io/DataInputStream;
    :cond_7
    move-object v12, v13

    .end local v13           #reader:Ljava/io/DataInputStream;
    .restart local v12       #reader:Ljava/io/DataInputStream;
    goto :goto_3
.end method

.method public static redirect(Ljava/io/File;)V
    .locals 4
    .parameter "file"

    .prologue
    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logcat -f "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ltmsdk/common/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    .line 33
    return-void
.end method
