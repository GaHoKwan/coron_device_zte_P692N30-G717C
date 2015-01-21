.class public Ltmsdkobf/hr;
.super Ltmsdkobf/hq;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ltmsdkobf/hv;)V
    .locals 0
    .parameter "admin"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Ltmsdkobf/hq;-><init>(Ltmsdkobf/hv;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected a(Ltmsdkobf/fx;)Ltmsdk/common/module/permission/PermissionRequestInfo;
    .locals 3
    .parameter "inContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 63
    const/4 v1, 0x0

    .line 64
    .local v1, info:Ltmsdk/common/module/permission/PermissionRequestInfo;
    iget v0, p1, Ltmsdkobf/fx;->mCode:I

    .line 65
    .local v0, code:I
    sget v2, Ltmsdkobf/gd$b;->mw:I

    if-eq v0, v2, :cond_0

    sget v2, Ltmsdkobf/gd$b;->mx:I

    if-eq v0, v2, :cond_0

    sget v2, Ltmsdkobf/gd$b;->my:I

    if-eq v0, v2, :cond_0

    sget v2, Ltmsdkobf/gd$b;->mC:I

    if-eq v0, v2, :cond_0

    sget v2, Ltmsdkobf/gd$b;->mz:I

    if-eq v0, v2, :cond_0

    sget v2, Ltmsdkobf/gd$b;->mA:I

    if-eq v0, v2, :cond_0

    sget v2, Ltmsdkobf/gd$b;->mD:I

    if-eq v0, v2, :cond_0

    sget v2, Ltmsdkobf/gd$b;->mB:I

    if-ne v0, v2, :cond_1

    .line 73
    :cond_0
    const/16 v2, 0xc

    invoke-static {p1, v2}, Ltmsdkobf/hr;->a(Ltmsdkobf/fx;I)Ltmsdk/common/module/permission/PermissionRequestInfo;

    move-result-object v1

    .line 76
    .end local v1           #info:Ltmsdk/common/module/permission/PermissionRequestInfo;
    :cond_1
    return-object v1
.end method

.method protected c(Ltmsdkobf/fx;Ltmsdkobf/fx;)I
    .locals 1
    .parameter "inContext"
    .parameter "outContext"

    .prologue
    .line 24
    const/4 v0, 0x2

    return v0
.end method

.method protected g(Ltmsdkobf/fx;Ltmsdkobf/fx;)I
    .locals 5
    .parameter "inContext"
    .parameter "outContext"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 30
    iget v0, p1, Ltmsdkobf/fx;->mCode:I

    .line 31
    .local v0, code:I
    iget-object v1, p2, Ltmsdkobf/fx;->mr:Landroid/os/Parcel;

    .line 32
    .local v1, reply:Landroid/os/Parcel;
    sget v3, Ltmsdkobf/gd$b;->mw:I

    if-eq v0, v3, :cond_0

    sget v3, Ltmsdkobf/gd$b;->mx:I

    if-ne v0, v3, :cond_1

    .line 33
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    .line 34
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 57
    :goto_0
    return v2

    .line 36
    :cond_1
    sget v3, Ltmsdkobf/gd$b;->my:I

    if-ne v0, v3, :cond_2

    .line 37
    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    .line 38
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_2
    sget v3, Ltmsdkobf/gd$b;->mz:I

    if-eq v0, v3, :cond_3

    sget v3, Ltmsdkobf/gd$b;->mA:I

    if-ne v0, v3, :cond_4

    .line 41
    :cond_3
    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 43
    :cond_4
    sget v3, Ltmsdkobf/gd$b;->mB:I

    if-ne v0, v3, :cond_5

    .line 44
    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    .line 45
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 47
    :cond_5
    sget v3, Ltmsdkobf/gd$b;->mC:I

    if-ne v0, v3, :cond_6

    .line 48
    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    .line 49
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 51
    :cond_6
    sget v3, Ltmsdkobf/gd$b;->mD:I

    if-ne v0, v3, :cond_7

    .line 52
    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 57
    :cond_7
    const/4 v2, 0x2

    goto :goto_0
.end method
