.class public Ltmsdkobf/hx;
.super Ltmsdkobf/hq;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ltmsdkobf/hv;)V
    .locals 0
    .parameter "admin"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Ltmsdkobf/hq;-><init>(Ltmsdkobf/hv;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected a(Ltmsdkobf/fx;)Ltmsdk/common/module/permission/PermissionRequestInfo;
    .locals 2
    .parameter "inContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 40
    iget v0, p1, Ltmsdkobf/fx;->mCode:I

    .line 42
    .local v0, code:I
    sget v1, Ltmsdkobf/gd$e;->mJ:I

    if-ne v0, v1, :cond_0

    .line 43
    const/4 v1, 0x7

    invoke-static {p1, v1}, Ltmsdkobf/hx;->a(Ltmsdkobf/fx;I)Ltmsdk/common/module/permission/PermissionRequestInfo;

    move-result-object v1

    .line 52
    :goto_0
    return-object v1

    .line 44
    :cond_0
    sget v1, Ltmsdkobf/gd$e;->mL:I

    if-ne v0, v1, :cond_1

    .line 45
    const/4 v1, 0x6

    invoke-static {p1, v1}, Ltmsdkobf/hx;->a(Ltmsdkobf/fx;I)Ltmsdk/common/module/permission/PermissionRequestInfo;

    move-result-object v1

    goto :goto_0

    .line 46
    :cond_1
    sget v1, Ltmsdkobf/gd$e;->mK:I

    if-ne v0, v1, :cond_2

    .line 47
    const/16 v1, 0x8

    invoke-static {p1, v1}, Ltmsdkobf/hx;->a(Ltmsdkobf/fx;I)Ltmsdk/common/module/permission/PermissionRequestInfo;

    move-result-object v1

    goto :goto_0

    .line 48
    :cond_2
    sget v1, Ltmsdkobf/gd$e;->mM:I

    if-ne v0, v1, :cond_3

    .line 49
    const/16 v1, 0xf

    invoke-static {p1, v1}, Ltmsdkobf/hx;->a(Ltmsdkobf/fx;I)Ltmsdk/common/module/permission/PermissionRequestInfo;

    move-result-object v1

    goto :goto_0

    .line 52
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected c(Ltmsdkobf/fx;Ltmsdkobf/fx;)I
    .locals 1
    .parameter "inContext"
    .parameter "outContext"

    .prologue
    .line 25
    const/4 v0, 0x2

    return v0
.end method

.method protected g(Ltmsdkobf/fx;Ltmsdkobf/fx;)I
    .locals 2
    .parameter "inContext"
    .parameter "outContext"

    .prologue
    .line 31
    iget-object v0, p2, Ltmsdkobf/fx;->mr:Landroid/os/Parcel;

    .line 32
    .local v0, reply:Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->writeNoException()V

    .line 33
    const-string v1, "0000000000000000"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    const/4 v1, 0x1

    return v1
.end method
