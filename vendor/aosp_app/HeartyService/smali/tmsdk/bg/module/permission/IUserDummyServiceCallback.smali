.class public interface abstract Ltmsdk/bg/module/permission/IUserDummyServiceCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onAppStarted(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRequestAborted(Ltmsdk/common/module/permission/PermissionRequestInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRequestAccepted(Ltmsdk/common/module/permission/PermissionRequestInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRequestAsked(Ltmsdk/common/module/permission/PermissionRequestInfo;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
