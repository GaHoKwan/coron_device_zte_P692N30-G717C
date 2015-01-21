.class public Ltmsdkobf/mk;
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
    iget-object v1, p0, Ltmsdkobf/mk;->Eu:Ltmsdkobf/df;

    if-eqz v1, :cond_1

    .line 27
    iget-object v0, p0, Ltmsdkobf/mk;->Eu:Ltmsdkobf/df;

    check-cast v0, Ltmsdkobf/mj;

    .line 28
    .local v0, killProcessInfo:Ltmsdkobf/mj;
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ltmsdkobf/mj;->hu()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltmsdkobf/ku;->n(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 30
    .end local v0           #killProcessInfo:Ltmsdkobf/mj;
    :goto_0
    return v1

    .line 28
    .restart local v0       #killProcessInfo:Ltmsdkobf/mj;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 30
    .end local v0           #killProcessInfo:Ltmsdkobf/mj;
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public x([B)V
    .locals 1
    .parameter "data"

    .prologue
    .line 21
    new-instance v0, Ltmsdkobf/mj;

    invoke-direct {v0}, Ltmsdkobf/mj;-><init>()V

    invoke-virtual {p0, p1, v0}, Ltmsdkobf/mk;->a([BLtmsdkobf/df;)V

    .line 22
    return-void
.end method
