.class public abstract Ltmsdk/common/ISDKClient$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Ltmsdk/common/ISDKClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/ISDKClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "com.tencent.tmsecure.common.ISDKClient"

    invoke-virtual {p0, p0, v0}, Ltmsdk/common/ISDKClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 59
    instance-of v1, p1, Ltmsdk/common/ISDKClient$Stub;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 60
    check-cast v0, Ltmsdk/common/ISDKClient$Stub;

    .line 61
    .local v0, other:Ltmsdk/common/ISDKClient$Stub;
    invoke-super {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 63
    .end local v0           #other:Ltmsdk/common/ISDKClient$Stub;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "com.tencent.tmsecure.common.ISDKClient"

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 45
    const v2, 0x132b535

    if-ne p1, v2, :cond_0

    .line 46
    const-string v2, "com.tencent.tmsecure.common.ISDKClient"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 47
    const-class v2, Ltmsdk/common/DataEntity;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ltmsdk/common/DataEntity;

    .line 48
    .local v0, param:Ltmsdk/common/DataEntity;
    invoke-virtual {p0, v0}, Ltmsdk/common/ISDKClient$Stub;->sendMessage(Ltmsdk/common/DataEntity;)Ltmsdk/common/DataEntity;

    move-result-object v1

    .line 49
    .local v1, result:Ltmsdk/common/DataEntity;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 51
    const/4 v2, 0x1

    .line 53
    .end local v0           #param:Ltmsdk/common/DataEntity;
    .end local v1           #result:Ltmsdk/common/DataEntity;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    goto :goto_0
.end method
