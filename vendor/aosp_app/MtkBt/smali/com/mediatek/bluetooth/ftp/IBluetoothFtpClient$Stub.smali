.class public abstract Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient$Stub;
.super Landroid/os/Binder;
.source "IBluetoothFtpClient.java"

# interfaces
.implements Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.bluetooth.ftp.IBluetoothFtpClient"

.field static final TRANSACTION_abort:I = 0x7

.field static final TRANSACTION_connect:I = 0x6

.field static final TRANSACTION_createFolder:I = 0xd

.field static final TRANSACTION_delete:I = 0x10

.field static final TRANSACTION_disconnect:I = 0x8

.field static final TRANSACTION_getCurrentPath:I = 0x4

.field static final TRANSACTION_getLastTransferResult:I = 0x5

.field static final TRANSACTION_getState:I = 0x3

.field static final TRANSACTION_goBackward:I = 0xb

.field static final TRANSACTION_goForward:I = 0xa

.field static final TRANSACTION_goToRoot:I = 0xc

.field static final TRANSACTION_refresh:I = 0x9

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_startPull:I = 0xe

.field static final TRANSACTION_startPush:I = 0xf

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.mediatek.bluetooth.ftp.IBluetoothFtpClient"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.mediatek.bluetooth.ftp.IBluetoothFtpClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v2, "com.mediatek.bluetooth.ftp.IBluetoothFtpClient"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.mediatek.bluetooth.ftp.IBluetoothFtpClient"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClientCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClientCallback;

    move-result-object v0

    .line 50
    .local v0, _arg0:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClientCallback;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient$Stub;->registerCallback(Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClientCallback;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0           #_arg0:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClientCallback;
    :sswitch_2
    const-string v2, "com.mediatek.bluetooth.ftp.IBluetoothFtpClient"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClientCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClientCallback;

    move-result-object v0

    .line 59
    .restart local v0       #_arg0:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClientCallback;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient$Stub;->unregisterCallback(Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClientCallback;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 65
    .end local v0           #_arg0:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClientCallback;
    :sswitch_3
    const-string v2, "com.mediatek.bluetooth.ftp.IBluetoothFtpClient"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient$Stub;->getState()I

    move-result v1

    .line 67
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 73
    .end local v1           #_result:I
    :sswitch_4
    const-string v2, "com.mediatek.bluetooth.ftp.IBluetoothFtpClient"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient$Stub;->getCurrentPath()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_5
    const-string v2, "com.mediatek.bluetooth.ftp.IBluetoothFtpClient"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient$Stub;->getLastTransferResult()I

    move-result v1

    .line 83
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 89
    .end local v1           #_result:I
    :sswitch_6
    const-string v2, "com.mediatek.bluetooth.ftp.IBluetoothFtpClient"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient$Stub;->connect()V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 96
    :sswitch_7
    const-string v2, "com.mediatek.bluetooth.ftp.IBluetoothFtpClient"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient$Stub;->abort()Z

    move-result v1

    .line 98
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v1, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 104
    .end local v1           #_result:Z
    :sswitch_8
    const-string v2, "com.mediatek.bluetooth.ftp.IBluetoothFtpClient"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient$Stub;->disconnect()V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 111
    :sswitch_9
    const-string v2, "com.mediatek.bluetooth.ftp.IBluetoothFtpClient"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient$Stub;->refresh()V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 118
    :sswitch_a
    const-string v2, "com.mediatek.bluetooth.ftp.IBluetoothFtpClient"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient$Stub;->goForward(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 127
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_b
    const-string v2, "com.mediatek.bluetooth.ftp.IBluetoothFtpClient"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient$Stub;->goBackward()V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 134
    :sswitch_c
    const-string v2, "com.mediatek.bluetooth.ftp.IBluetoothFtpClient"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient$Stub;->goToRoot()V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 141
    :sswitch_d
    const-string v2, "com.mediatek.bluetooth.ftp.IBluetoothFtpClient"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient$Stub;->createFolder(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 150
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_e
    const-string v2, "com.mediatek.bluetooth.ftp.IBluetoothFtpClient"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient$Stub;->startPull()V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 157
    :sswitch_f
    const-string v2, "com.mediatek.bluetooth.ftp.IBluetoothFtpClient"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient$Stub;->startPush()V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 164
    :sswitch_10
    const-string v2, "com.mediatek.bluetooth.ftp.IBluetoothFtpClient"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient$Stub;->delete(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
