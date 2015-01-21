.class public Ltmsdk/common/ISDKClient$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdk/common/ISDKClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/ISDKClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;

.field private mUid:I


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .parameter "remote"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Ltmsdk/common/ISDKClient$Proxy;->mRemote:Landroid/os/IBinder;

    .line 79
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Ltmsdk/common/ISDKClient$Proxy;->mUid:I

    .line 80
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Ltmsdk/common/ISDKClient;
    .locals 2
    .parameter "obj"

    .prologue
    .line 132
    if-nez p0, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    .line 135
    :cond_0
    const-string v1, "com.tencent.tmsecure.common.ISDKClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 136
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Ltmsdk/common/ISDKClient;

    if-eqz v1, :cond_1

    .line 137
    check-cast v0, Ltmsdk/common/ISDKClient;

    goto :goto_0

    .line 139
    :cond_1
    new-instance v0, Ltmsdk/common/ISDKClient$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Ltmsdk/common/ISDKClient$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Ltmsdk/common/ISDKClient$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 114
    instance-of v2, p1, Ltmsdk/common/ISDKClient$Proxy;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 115
    check-cast v0, Ltmsdk/common/ISDKClient$Proxy;

    .line 116
    .local v0, other:Ltmsdk/common/ISDKClient$Proxy;
    iget-object v2, p0, Ltmsdk/common/ISDKClient$Proxy;->mRemote:Landroid/os/IBinder;

    iget-object v3, v0, Ltmsdk/common/ISDKClient$Proxy;->mRemote:Landroid/os/IBinder;

    if-ne v2, v3, :cond_0

    iget v2, p0, Ltmsdk/common/ISDKClient$Proxy;->mUid:I

    iget v3, v0, Ltmsdk/common/ISDKClient$Proxy;->mUid:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 118
    .end local v0           #other:Ltmsdk/common/ISDKClient$Proxy;
    :cond_0
    return v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "com.tencent.tmsecure.common.ISDKClient"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Ltmsdk/common/ISDKClient$Proxy;->mUid:I

    return v0
.end method

.method public sendMessage(Ltmsdk/common/DataEntity;)Ltmsdk/common/DataEntity;
    .locals 6
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 93
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 94
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 96
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "com.tencent.tmsecure.common.ISDKClient"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, p1, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 98
    const/4 v2, 0x0

    .line 101
    .local v2, result:Ltmsdk/common/DataEntity;
    :try_start_0
    iget-object v3, p0, Ltmsdk/common/ISDKClient$Proxy;->mRemote:Landroid/os/IBinder;

    const v4, 0x132b535

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 102
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 103
    const-class v3, Ltmsdk/common/DataEntity;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2           #result:Ltmsdk/common/DataEntity;
    check-cast v2, Ltmsdk/common/DataEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .restart local v2       #result:Ltmsdk/common/DataEntity;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 106
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 109
    return-object v2

    .line 105
    .end local v2           #result:Ltmsdk/common/DataEntity;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 106
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
