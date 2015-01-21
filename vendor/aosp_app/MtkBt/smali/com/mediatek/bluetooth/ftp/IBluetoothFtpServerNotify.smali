.class public interface abstract Lcom/mediatek/bluetooth/ftp/IBluetoothFtpServerNotify;
.super Ljava/lang/Object;
.source "IBluetoothFtpServerNotify.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/ftp/IBluetoothFtpServerNotify$Stub;
    }
.end annotation


# virtual methods
.method public abstract authResult(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract disconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateNotify(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
