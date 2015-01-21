.class public Ltmsdkobf/ia;
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
    .locals 5
    .parameter "inContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    iget v0, p1, Ltmsdkobf/fx;->mCode:I

    .line 59
    .local v0, code:I
    iget-object v1, p1, Ltmsdkobf/fx;->mq:Landroid/os/Parcel;

    .line 60
    .local v1, data:Landroid/os/Parcel;
    const/4 v3, 0x0

    .line 62
    .local v3, info:Ltmsdk/common/module/permission/PermissionRequestInfo;
    sget v4, Ltmsdkobf/gd$g;->mR:I

    if-ne v0, v4, :cond_0

    .line 64
    sget-object v4, Ltmsdkobf/gd$a;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 66
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 67
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 68
    .local v2, events:I
    and-int/lit8 v4, v2, 0x10

    if-eqz v4, :cond_0

    .line 69
    const/16 v4, 0xa

    invoke-static {p1, v4}, Ltmsdkobf/ia;->a(Ltmsdkobf/fx;I)Ltmsdk/common/module/permission/PermissionRequestInfo;

    move-result-object v3

    .line 79
    .end local v2           #events:I
    .end local v3           #info:Ltmsdk/common/module/permission/PermissionRequestInfo;
    :cond_0
    return-object v3
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
    .locals 4
    .parameter "inContext"
    .parameter "outContext"

    .prologue
    .line 30
    iget v1, p1, Ltmsdkobf/fx;->mCode:I

    .line 31
    .local v1, code:I
    iget-object v2, p1, Ltmsdkobf/fx;->mq:Landroid/os/Parcel;

    .line 32
    .local v2, data:Landroid/os/Parcel;
    sget v3, Ltmsdkobf/gd$g;->mR:I

    if-ne v1, v3, :cond_0

    .line 34
    iget-object v0, p2, Ltmsdkobf/fx;->mq:Landroid/os/Parcel;

    .line 36
    .local v0, altData:Landroid/os/Parcel;
    sget-object v3, Ltmsdkobf/gd$a;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 37
    sget-object v3, Ltmsdkobf/gd$a;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 43
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    and-int/lit8 v3, v3, -0x11

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    const/4 v3, 0x0

    .line 52
    .end local v0           #altData:Landroid/os/Parcel;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x2

    goto :goto_0
.end method
