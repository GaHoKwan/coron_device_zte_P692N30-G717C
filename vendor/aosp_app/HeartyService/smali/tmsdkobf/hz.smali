.class public Ltmsdkobf/hz;
.super Ltmsdkobf/hq;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ltmsdkobf/hv;)V
    .locals 0
    .parameter "admin"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ltmsdkobf/hq;-><init>(Ltmsdkobf/hv;)V

    .line 18
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
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 37
    iget v0, p1, Ltmsdkobf/fx;->mCode:I

    .line 38
    .local v0, code:I
    iget-object v1, p1, Ltmsdkobf/fx;->mq:Landroid/os/Parcel;

    .line 39
    .local v1, data:Landroid/os/Parcel;
    const/4 v2, 0x0

    .line 41
    .local v2, info:Ltmsdk/common/module/permission/PermissionRequestInfo;
    sget v3, Ltmsdkobf/gd$f;->mN:I

    if-eq v0, v3, :cond_1

    sget v3, Ltmsdkobf/gd$f;->sendText:I

    if-eq v0, v3, :cond_1

    sget v3, Ltmsdkobf/gd$f;->mO:I

    if-eq v0, v3, :cond_1

    sget v3, Ltmsdkobf/gd$f;->mP:I

    if-eq v3, v4, :cond_0

    sget v3, Ltmsdkobf/gd$f;->mP:I

    if-eq v0, v3, :cond_1

    :cond_0
    sget v3, Ltmsdkobf/gd$f;->mQ:I

    if-eq v3, v4, :cond_2

    sget v3, Ltmsdkobf/gd$f;->mQ:I

    if-ne v0, v3, :cond_2

    .line 44
    :cond_1
    sget-object v3, Ltmsdkobf/gd$f;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 46
    invoke-static {p1, v5}, Ltmsdkobf/hz;->a(Ltmsdkobf/fx;I)Ltmsdk/common/module/permission/PermissionRequestInfo;

    move-result-object v2

    .line 48
    sget v3, Ltmsdkobf/gd$f;->mN:I

    if-ne v0, v3, :cond_3

    .line 51
    new-array v3, v5, [Ljava/lang/String;

    iput-object v3, v2, Ltmsdk/common/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    .line 52
    iget-object v3, v2, Ltmsdk/common/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 53
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 54
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    iput-object v3, v2, Ltmsdk/common/module/permission/PermissionRequestInfo;->mInfo3:[B

    .line 76
    :cond_2
    :goto_0
    return-object v2

    .line 56
    :cond_3
    sget v3, Ltmsdkobf/gd$f;->sendText:I

    if-eq v0, v3, :cond_5

    sget v3, Ltmsdkobf/gd$f;->mQ:I

    if-eq v3, v4, :cond_4

    sget v3, Ltmsdkobf/gd$f;->mQ:I

    if-eq v0, v3, :cond_5

    :cond_4
    sget v3, Ltmsdkobf/gd$f;->mP:I

    if-eq v3, v4, :cond_6

    sget v3, Ltmsdkobf/gd$f;->mP:I

    if-ne v0, v3, :cond_6

    .line 63
    :cond_5
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v2, Ltmsdk/common/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    .line 64
    iget-object v3, v2, Ltmsdk/common/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 65
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 66
    iget-object v3, v2, Ltmsdk/common/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    goto :goto_0

    .line 68
    :cond_6
    sget v3, Ltmsdkobf/gd$f;->mO:I

    if-ne v0, v3, :cond_2

    .line 71
    new-array v3, v5, [Ljava/lang/String;

    iput-object v3, v2, Ltmsdk/common/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    .line 72
    iget-object v3, v2, Ltmsdk/common/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    goto :goto_0
.end method

.method protected c(Ltmsdkobf/fx;Ltmsdkobf/fx;)I
    .locals 1
    .parameter "inContext"
    .parameter "outContext"

    .prologue
    .line 23
    const/4 v0, 0x2

    return v0
.end method

.method protected g(Ltmsdkobf/fx;Ltmsdkobf/fx;)I
    .locals 2
    .parameter "inContext"
    .parameter "outContext"

    .prologue
    .line 29
    iget-object v0, p2, Ltmsdkobf/fx;->mr:Landroid/os/Parcel;

    .line 30
    .local v0, reply:Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->writeNoException()V

    .line 31
    const/4 v1, 0x1

    return v1
.end method
