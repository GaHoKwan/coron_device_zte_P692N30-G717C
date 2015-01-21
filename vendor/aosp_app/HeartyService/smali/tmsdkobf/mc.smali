.class public Ltmsdkobf/mc;
.super Ltmsdkobf/lx;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "instrType"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Ltmsdkobf/lx;-><init>(I)V

    .line 17
    return-void
.end method


# virtual methods
.method public hj()I
    .locals 3

    .prologue
    .line 26
    iget-object v2, p0, Ltmsdkobf/mc;->Eu:Ltmsdkobf/df;

    if-eqz v2, :cond_1

    .line 27
    iget-object v0, p0, Ltmsdkobf/mc;->Eu:Ltmsdkobf/df;

    check-cast v0, Ltmsdkobf/mb;

    .line 28
    .local v0, deleteFileInfo:Ltmsdkobf/mb;
    invoke-virtual {v0}, Ltmsdkobf/mb;->getFile()Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, filePath:Ljava/lang/String;
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Ltmsdkobf/ku;->k(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 31
    .end local v0           #deleteFileInfo:Ltmsdkobf/mb;
    .end local v1           #filePath:Ljava/lang/String;
    :goto_0
    return v2

    .line 29
    .restart local v0       #deleteFileInfo:Ltmsdkobf/mb;
    .restart local v1       #filePath:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 31
    .end local v0           #deleteFileInfo:Ltmsdkobf/mb;
    .end local v1           #filePath:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public x([B)V
    .locals 1
    .parameter "data"

    .prologue
    .line 21
    new-instance v0, Ltmsdkobf/mb;

    invoke-direct {v0}, Ltmsdkobf/mb;-><init>()V

    invoke-virtual {p0, p1, v0}, Ltmsdkobf/mc;->a([BLtmsdkobf/df;)V

    .line 22
    return-void
.end method
