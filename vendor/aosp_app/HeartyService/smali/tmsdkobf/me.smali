.class public Ltmsdkobf/me;
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
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 25
    iget-object v1, p0, Ltmsdkobf/me;->Eu:Ltmsdkobf/df;

    if-eqz v1, :cond_2

    .line 26
    iget-object v0, p0, Ltmsdkobf/me;->Eu:Ltmsdkobf/df;

    check-cast v0, Ltmsdkobf/md;

    .line 27
    .local v0, execShell:Ltmsdkobf/md;
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Ltmsdkobf/md;->hr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ltmsdkobf/md;->hs()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Ltmsdkobf/ku;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    .end local v0           #execShell:Ltmsdkobf/md;
    :goto_1
    return v2

    .restart local v0       #execShell:Ltmsdkobf/md;
    :cond_0
    move v1, v3

    .line 27
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 29
    .end local v0           #execShell:Ltmsdkobf/md;
    :cond_2
    const/4 v2, 0x2

    goto :goto_1
.end method

.method public x([B)V
    .locals 1
    .parameter "data"

    .prologue
    .line 21
    new-instance v0, Ltmsdkobf/md;

    invoke-direct {v0}, Ltmsdkobf/md;-><init>()V

    invoke-virtual {p0, p1, v0}, Ltmsdkobf/me;->a([BLtmsdkobf/df;)V

    .line 22
    return-void
.end method
