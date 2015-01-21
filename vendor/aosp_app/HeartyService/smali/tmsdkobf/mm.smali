.class public Ltmsdkobf/mm;
.super Ltmsdkobf/lx;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "instrType"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Ltmsdkobf/lx;-><init>(I)V

    .line 21
    return-void
.end method


# virtual methods
.method public hj()I
    .locals 6

    .prologue
    .line 30
    const/4 v1, 0x2

    .line 31
    .local v1, err:I
    iget-object v5, p0, Ltmsdkobf/mm;->Eu:Ltmsdkobf/df;

    if-eqz v5, :cond_0

    .line 32
    iget-object v4, p0, Ltmsdkobf/mm;->Eu:Ltmsdkobf/df;

    check-cast v4, Ltmsdkobf/ml;

    .line 33
    .local v4, uninstallInfo:Ltmsdkobf/ml;
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 34
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v4}, Ltmsdkobf/ml;->hv()Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, pkgName:Ljava/lang/String;
    const-class v5, Ltmsdk/common/module/software/SoftwareManager;

    invoke-static {v5}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v3

    check-cast v3, Ltmsdk/common/module/software/SoftwareManager;

    .line 37
    .local v3, softwareManager:Ltmsdk/common/module/software/SoftwareManager;
    invoke-virtual {v3, v2}, Ltmsdk/common/module/software/SoftwareManager;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 38
    invoke-virtual {v4}, Ltmsdkobf/ml;->ht()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 53
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #pkgName:Ljava/lang/String;
    .end local v3           #softwareManager:Ltmsdk/common/module/software/SoftwareManager;
    .end local v4           #uninstallInfo:Ltmsdkobf/ml;
    :cond_0
    :goto_0
    return v1

    .line 40
    .restart local v0       #context:Landroid/content/Context;
    .restart local v2       #pkgName:Ljava/lang/String;
    .restart local v3       #softwareManager:Ltmsdk/common/module/software/SoftwareManager;
    .restart local v4       #uninstallInfo:Ltmsdkobf/ml;
    :sswitch_0
    invoke-virtual {v4}, Ltmsdkobf/ml;->hv()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Ltmsdkobf/ku;->m(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    .line 41
    :goto_1
    goto :goto_0

    .line 40
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 44
    :sswitch_1
    invoke-virtual {v4}, Ltmsdkobf/ml;->hv()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Ltmsdkobf/ku;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    const/4 v1, 0x1

    .line 46
    goto :goto_0

    .line 38
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
    .line 25
    new-instance v0, Ltmsdkobf/ml;

    invoke-direct {v0}, Ltmsdkobf/ml;-><init>()V

    invoke-virtual {p0, p1, v0}, Ltmsdkobf/mm;->a([BLtmsdkobf/df;)V

    .line 26
    return-void
.end method
