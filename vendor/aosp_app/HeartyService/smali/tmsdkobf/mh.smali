.class public Ltmsdkobf/mh;
.super Ltmsdkobf/lx;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "instrType"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Ltmsdkobf/lx;-><init>(I)V

    .line 23
    return-void
.end method


# virtual methods
.method public hj()I
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 32
    const/4 v2, 0x2

    .line 33
    .local v2, err:I
    iget-object v6, p0, Ltmsdkobf/mh;->Eu:Ltmsdkobf/df;

    if-eqz v6, :cond_0

    .line 34
    iget-object v3, p0, Ltmsdkobf/mh;->Eu:Ltmsdkobf/df;

    check-cast v3, Ltmsdkobf/mg;

    .line 35
    .local v3, installInfo:Ltmsdkobf/mg;
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 36
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v3}, Ltmsdkobf/mg;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 37
    .local v4, url:Ljava/lang/String;
    const-string v6, "temp.apk"

    invoke-static {v1, v4, v6, v5}, Ltmsdkobf/ku;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/temp.apk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, apkPath:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 40
    invoke-virtual {v3}, Ltmsdkobf/mg;->ht()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 55
    .end local v0           #apkPath:Ljava/lang/String;
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #installInfo:Ltmsdkobf/mg;
    .end local v4           #url:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 42
    .restart local v0       #apkPath:Ljava/lang/String;
    .restart local v1       #context:Landroid/content/Context;
    .restart local v3       #installInfo:Ltmsdkobf/mg;
    .restart local v4       #url:Ljava/lang/String;
    :sswitch_0
    invoke-static {v1, v0}, Ltmsdkobf/ku;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v2, v5

    .line 43
    :goto_1
    goto :goto_0

    .line 42
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 46
    :sswitch_1
    invoke-static {v1, v0}, Ltmsdkobf/ku;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    const/4 v2, 0x1

    .line 48
    goto :goto_0

    .line 40
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method public x([B)V
    .locals 1
    .parameter "data"

    .prologue
    .line 27
    new-instance v0, Ltmsdkobf/mg;

    invoke-direct {v0}, Ltmsdkobf/mg;-><init>()V

    invoke-virtual {p0, p1, v0}, Ltmsdkobf/mh;->a([BLtmsdkobf/df;)V

    .line 28
    return-void
.end method
