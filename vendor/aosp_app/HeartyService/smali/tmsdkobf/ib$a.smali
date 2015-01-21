.class public Ltmsdkobf/ib$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdkobf/ib;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/ib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;

.field private mUid:I


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .parameter "remote"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Ltmsdkobf/ib$a;->mRemote:Landroid/os/IBinder;

    .line 81
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Ltmsdkobf/ib$a;->mUid:I

    .line 82
    return-void
.end method

.method public static d(Landroid/os/IBinder;)Ltmsdkobf/ib;
    .locals 2
    .parameter "obj"

    .prologue
    .line 134
    if-nez p0, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 141
    :goto_0
    return-object v0

    .line 137
    :cond_0
    const-string v1, "com.tencent.tmsecure.common.ISDKClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 138
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Ltmsdkobf/ib;

    if-eqz v1, :cond_1

    .line 139
    check-cast v0, Ltmsdkobf/ib;

    goto :goto_0

    .line 141
    :cond_1
    new-instance v0, Ltmsdkobf/ib$a;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Ltmsdkobf/ib$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Ltmsdkobf/ib$a;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 116
    instance-of v2, p1, Ltmsdkobf/ib$a;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 117
    check-cast v0, Ltmsdkobf/ib$a;

    .line 118
    .local v0, other:Ltmsdkobf/ib$a;
    iget-object v2, p0, Ltmsdkobf/ib$a;->mRemote:Landroid/os/IBinder;

    iget-object v3, v0, Ltmsdkobf/ib$a;->mRemote:Landroid/os/IBinder;

    if-ne v2, v3, :cond_0

    iget v2, p0, Ltmsdkobf/ib$a;->mUid:I

    iget v3, v0, Ltmsdkobf/ib$a;->mUid:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 120
    .end local v0           #other:Ltmsdkobf/ib$a;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Ltmsdkobf/ib$a;->mUid:I

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

    .line 95
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 96
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 98
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "com.tencent.tmsecure.common.ISDKClient"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, p1, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 100
    const/4 v2, 0x0

    .line 103
    .local v2, result:Ltmsdk/common/DataEntity;
    :try_start_0
    iget-object v3, p0, Ltmsdkobf/ib$a;->mRemote:Landroid/os/IBinder;

    const v4, 0x132b535

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 104
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 105
    const-class v3, Ltmsdk/common/DataEntity;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2           #result:Ltmsdk/common/DataEntity;
    check-cast v2, Ltmsdk/common/DataEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .restart local v2       #result:Ltmsdk/common/DataEntity;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 108
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 111
    return-object v2

    .line 107
    .end local v2           #result:Ltmsdk/common/DataEntity;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 108
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
