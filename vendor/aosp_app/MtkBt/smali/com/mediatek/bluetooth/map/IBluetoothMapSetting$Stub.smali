.class public abstract Lcom/mediatek/bluetooth/map/IBluetoothMapSetting$Stub;
.super Landroid/os/Binder;
.source "IBluetoothMapSetting.java"

# interfaces
.implements Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/map/IBluetoothMapSetting$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.bluetooth.map.IBluetoothMapSetting"

.field static final TRANSACTION_disableServer:I = 0x2

.field static final TRANSACTION_enableServer:I = 0x1

.field static final TRANSACTION_getEmailAccount:I = 0x8

.field static final TRANSACTION_getSims:I = 0x7

.field static final TRANSACTION_isEnabled:I = 0x3

.field static final TRANSACTION_registerCallback:I = 0x9

.field static final TRANSACTION_registerSim:I = 0x4

.field static final TRANSACTION_replaceAccount:I = 0x6

.field static final TRANSACTION_unregisterCallback:I = 0xa

.field static final TRANSACTION_unregisterSim:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.mediatek.bluetooth.map.IBluetoothMapSetting"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;
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
    const-string v1, "com.mediatek.bluetooth.map.IBluetoothMapSetting"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/mediatek/bluetooth/map/IBluetoothMapSetting$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/map/IBluetoothMapSetting$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 131
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v4, "com.mediatek.bluetooth.map.IBluetoothMapSetting"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.mediatek.bluetooth.map.IBluetoothMapSetting"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/IBluetoothMapSetting$Stub;->enableServer()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 54
    :sswitch_2
    const-string v4, "com.mediatek.bluetooth.map.IBluetoothMapSetting"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/IBluetoothMapSetting$Stub;->disableServer()V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 61
    :sswitch_3
    const-string v6, "com.mediatek.bluetooth.map.IBluetoothMapSetting"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/IBluetoothMapSetting$Stub;->isEnabled()Z

    move-result v2

    .line 63
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v2, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 69
    .end local v2           #_result:Z
    :sswitch_4
    const-string v6, "com.mediatek.bluetooth.map.IBluetoothMapSetting"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/map/IBluetoothMapSetting$Stub;->registerSim(I)Z

    move-result v2

    .line 73
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v2, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 79
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_5
    const-string v4, "com.mediatek.bluetooth.map.IBluetoothMapSetting"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 82
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/map/IBluetoothMapSetting$Stub;->unregisterSim(I)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 88
    .end local v0           #_arg0:I
    :sswitch_6
    const-string v6, "com.mediatek.bluetooth.map.IBluetoothMapSetting"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 91
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetooth/map/IBluetoothMapSetting$Stub;->replaceAccount(J)Z

    move-result v2

    .line 92
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v2, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 98
    .end local v0           #_arg0:J
    .end local v2           #_result:Z
    :sswitch_7
    const-string v4, "com.mediatek.bluetooth.map.IBluetoothMapSetting"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/IBluetoothMapSetting$Stub;->getSims()[I

    move-result-object v2

    .line 100
    .local v2, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 106
    .end local v2           #_result:[I
    :sswitch_8
    const-string v4, "com.mediatek.bluetooth.map.IBluetoothMapSetting"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/IBluetoothMapSetting$Stub;->getEmailAccount()J

    move-result-wide v2

    .line 108
    .local v2, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 114
    .end local v2           #_result:J
    :sswitch_9
    const-string v4, "com.mediatek.bluetooth.map.IBluetoothMapSetting"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/bluetooth/map/IBluetoothMapSettingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/map/IBluetoothMapSettingCallback;

    move-result-object v0

    .line 117
    .local v0, _arg0:Lcom/mediatek/bluetooth/map/IBluetoothMapSettingCallback;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/map/IBluetoothMapSetting$Stub;->registerCallback(Lcom/mediatek/bluetooth/map/IBluetoothMapSettingCallback;)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 123
    .end local v0           #_arg0:Lcom/mediatek/bluetooth/map/IBluetoothMapSettingCallback;
    :sswitch_a
    const-string v4, "com.mediatek.bluetooth.map.IBluetoothMapSetting"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/bluetooth/map/IBluetoothMapSettingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/map/IBluetoothMapSettingCallback;

    move-result-object v0

    .line 126
    .restart local v0       #_arg0:Lcom/mediatek/bluetooth/map/IBluetoothMapSettingCallback;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/map/IBluetoothMapSetting$Stub;->unregisterCallback(Lcom/mediatek/bluetooth/map/IBluetoothMapSettingCallback;)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
