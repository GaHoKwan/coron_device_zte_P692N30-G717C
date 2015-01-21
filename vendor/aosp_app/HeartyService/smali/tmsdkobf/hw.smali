.class public Ltmsdkobf/hw;
.super Ltmsdkobf/hq;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Ltmsdkobf/hv;)V
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
    .locals 7
    .parameter "inContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x0

    .line 55
    iget v0, p1, Ltmsdkobf/fx;->mCode:I

    .line 56
    .local v0, code:I
    iget-object v1, p1, Ltmsdkobf/fx;->mq:Landroid/os/Parcel;

    .line 57
    .local v1, data:Landroid/os/Parcel;
    const/4 v2, 0x0

    .line 59
    .local v2, info:Ltmsdk/common/module/permission/PermissionRequestInfo;
    sget v4, Ltmsdkobf/gd$d;->mF:I

    if-eq v0, v4, :cond_0

    sget v4, Ltmsdkobf/gd$d;->dial:I

    if-ne v0, v4, :cond_2

    .line 60
    :cond_0
    sget-object v4, Ltmsdkobf/gd$d;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, number:Ljava/lang/String;
    invoke-static {p1, v5}, Ltmsdkobf/hw;->a(Ltmsdkobf/fx;I)Ltmsdk/common/module/permission/PermissionRequestInfo;

    move-result-object v2

    .line 64
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, v2, Ltmsdk/common/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    .line 65
    iget-object v4, v2, Ltmsdk/common/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    aput-object v3, v4, v5

    .line 77
    .end local v3           #number:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v2

    .line 66
    :cond_2
    sget v4, Ltmsdkobf/gd$d;->mG:I

    if-ne v0, v4, :cond_3

    .line 67
    invoke-static {p1, v6}, Ltmsdkobf/hw;->a(Ltmsdkobf/fx;I)Ltmsdk/common/module/permission/PermissionRequestInfo;

    move-result-object v2

    goto :goto_0

    .line 69
    :cond_3
    sget v4, Ltmsdkobf/gd$d;->mH:I

    if-ne v0, v4, :cond_4

    .line 70
    const/16 v4, 0xb

    invoke-static {p1, v4}, Ltmsdkobf/hw;->a(Ltmsdkobf/fx;I)Ltmsdk/common/module/permission/PermissionRequestInfo;

    move-result-object v2

    goto :goto_0

    .line 72
    :cond_4
    sget v4, Ltmsdkobf/gd$d;->mI:I

    if-ne v0, v4, :cond_1

    .line 73
    invoke-static {p1, v6}, Ltmsdkobf/hw;->a(Ltmsdkobf/fx;I)Ltmsdk/common/module/permission/PermissionRequestInfo;

    move-result-object v2

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
    .locals 4
    .parameter "inContext"
    .parameter "outContext"

    .prologue
    const/4 v2, 0x1

    .line 31
    iget v0, p1, Ltmsdkobf/fx;->mCode:I

    .line 32
    .local v0, code:I
    iget-object v1, p2, Ltmsdkobf/fx;->mr:Landroid/os/Parcel;

    .line 33
    .local v1, reply:Landroid/os/Parcel;
    sget v3, Ltmsdkobf/gd$d;->mF:I

    if-eq v0, v3, :cond_0

    sget v3, Ltmsdkobf/gd$d;->dial:I

    if-ne v0, v3, :cond_1

    .line 34
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    .line 49
    :goto_0
    return v2

    .line 36
    :cond_1
    sget v3, Ltmsdkobf/gd$d;->mG:I

    if-ne v0, v3, :cond_2

    .line 37
    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    .line 38
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 40
    :cond_2
    sget v3, Ltmsdkobf/gd$d;->mH:I

    if-ne v0, v3, :cond_3

    .line 41
    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    .line 42
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 44
    :cond_3
    sget v3, Ltmsdkobf/gd$d;->mI:I

    if-ne v0, v3, :cond_4

    .line 45
    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 49
    :cond_4
    const/4 v2, 0x2

    goto :goto_0
.end method
