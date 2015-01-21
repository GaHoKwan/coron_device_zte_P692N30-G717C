.class public interface abstract Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClientCallback;
.super Ljava/lang/Object;
.source "IBluetoothFtpClientCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClientCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract postEvent(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract postEventWithData(ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
