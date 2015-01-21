.class public Lcom/zte/zdmdaemon/util/AndroidCMD;
.super Ljava/lang/Object;
.source "AndroidCMD.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static runCMD(Ljava/lang/String;)V
    .locals 10
    .parameter "cmd"

    .prologue
    const/4 v8, -0x1

    .line 9
    const/16 v7, 0x400

    new-array v0, v7, [C

    .line 10
    .local v0, buf:[C
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .local v5, res:Ljava/lang/StringBuilder;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 13
    .local v2, p:Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v6

    .line 16
    .local v6, status:I
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 17
    .local v3, r:Ljava/io/InputStreamReader;
    const/4 v4, 0x0

    .line 18
    .local v4, read:I
    :cond_0
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    if-ne v4, v8, :cond_2

    .line 24
    new-instance v3, Ljava/io/InputStreamReader;

    .end local v3           #r:Ljava/io/InputStreamReader;
    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 25
    .restart local v3       #r:Ljava/io/InputStreamReader;
    const/4 v4, 0x0

    .line 26
    :cond_1
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    if-ne v4, v8, :cond_3

    .line 31
    const-string v7, "DMC"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "runCMD#"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " res = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 32
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 31
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .end local v2           #p:Ljava/lang/Process;
    .end local v3           #r:Ljava/io/InputStreamReader;
    .end local v4           #read:I
    .end local v6           #status:I
    :goto_2
    return-void

    .line 19
    .restart local v2       #p:Ljava/lang/Process;
    .restart local v3       #r:Ljava/io/InputStreamReader;
    .restart local v4       #read:I
    .restart local v6       #status:I
    :cond_2
    if-eqz v5, :cond_0

    .line 20
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 33
    .end local v2           #p:Ljava/lang/Process;
    .end local v3           #r:Ljava/io/InputStreamReader;
    .end local v4           #read:I
    .end local v6           #status:I
    :catch_0
    move-exception v1

    .line 34
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "DMC"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Exception runCMD#"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 27
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #p:Ljava/lang/Process;
    .restart local v3       #r:Ljava/io/InputStreamReader;
    .restart local v4       #read:I
    .restart local v6       #status:I
    :cond_3
    if-eqz v5, :cond_1

    .line 28
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v5, v0, v7, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
