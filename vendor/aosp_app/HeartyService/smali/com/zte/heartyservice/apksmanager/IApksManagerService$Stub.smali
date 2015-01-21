.class public abstract Lcom/zte/heartyservice/apksmanager/IApksManagerService$Stub;
.super Landroid/os/Binder;
.source "IApksManagerService.java"

# interfaces
.implements Lcom/zte/heartyservice/apksmanager/IApksManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/apksmanager/IApksManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/apksmanager/IApksManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.zte.heartyservice.apksmanager.IApksManagerService"

.field static final TRANSACTION_backupApks:I = 0x9

.field static final TRANSACTION_clearDefaultSetting:I = 0x6

.field static final TRANSACTION_listDefaultSettingApp:I = 0x7

.field static final TRANSACTION_listMoveableApp:I = 0x1

.field static final TRANSACTION_listSDCardApks:I = 0x8

.field static final TRANSACTION_listUninstallableApp:I = 0x5

.field static final TRANSACTION_moveApptoInternal:I = 0x2

.field static final TRANSACTION_moveApptoSD:I = 0x3

.field static final TRANSACTION_registerCallBack:I = 0xa

.field static final TRANSACTION_uninstallApp:I = 0x4

.field static final TRANSACTION_unregisterCallBack:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.zte.heartyservice.apksmanager.IApksManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/zte/heartyservice/apksmanager/IApksManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/zte/heartyservice/apksmanager/IApksManagerService;
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
    const-string v1, "com.zte.heartyservice.apksmanager.IApksManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/zte/heartyservice/apksmanager/IApksManagerService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/zte/heartyservice/apksmanager/IApksManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v6, "com.zte.heartyservice.apksmanager.IApksManagerService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v6, "com.zte.heartyservice.apksmanager.IApksManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/IApksManagerService$Stub;->listMoveableApp()V

    goto :goto_0

    .line 53
    :sswitch_2
    const-string v6, "com.zte.heartyservice.apksmanager.IApksManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    sget-object v6, Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 56
    .local v2, _arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;>;"
    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/apksmanager/IApksManagerService$Stub;->moveApptoInternal(Ljava/util/List;)V

    goto :goto_0

    .line 61
    .end local v2           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;>;"
    :sswitch_3
    const-string v6, "com.zte.heartyservice.apksmanager.IApksManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    sget-object v6, Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 64
    .restart local v2       #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;>;"
    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/apksmanager/IApksManagerService$Stub;->moveApptoSD(Ljava/util/List;)V

    goto :goto_0

    .line 69
    .end local v2           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;>;"
    :sswitch_4
    const-string v6, "com.zte.heartyservice.apksmanager.IApksManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    sget-object v6, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 72
    .local v3, _arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;>;"
    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/apksmanager/IApksManagerService$Stub;->uninstallApp(Ljava/util/List;)V

    goto :goto_0

    .line 77
    .end local v3           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;>;"
    :sswitch_5
    const-string v6, "com.zte.heartyservice.apksmanager.IApksManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    move v0, v5

    .line 80
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/apksmanager/IApksManagerService$Stub;->listUninstallableApp(Z)V

    goto :goto_0

    .line 79
    .end local v0           #_arg0:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 85
    :sswitch_6
    const-string v6, "com.zte.heartyservice.apksmanager.IApksManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    sget-object v6, Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 88
    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;>;"
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/apksmanager/IApksManagerService$Stub;->clearDefaultSetting(Ljava/util/List;)V

    goto :goto_0

    .line 93
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;>;"
    :sswitch_7
    const-string v6, "com.zte.heartyservice.apksmanager.IApksManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/IApksManagerService$Stub;->listDefaultSettingApp()V

    goto :goto_0

    .line 99
    :sswitch_8
    const-string v6, "com.zte.heartyservice.apksmanager.IApksManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/IApksManagerService$Stub;->listSDCardApks()V

    goto :goto_0

    .line 105
    :sswitch_9
    const-string v6, "com.zte.heartyservice.apksmanager.IApksManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    sget-object v6, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 109
    .restart local v3       #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Lcom/zte/heartyservice/apksmanager/IApksManagerService$Stub;->backupApks(Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    .end local v3           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;>;"
    .end local v4           #_arg1:Ljava/lang/String;
    :sswitch_a
    const-string v6, "com.zte.heartyservice.apksmanager.IApksManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;

    move-result-object v0

    .line 118
    .local v0, _arg0:Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/apksmanager/IApksManagerService$Stub;->registerCallBack(Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;)V

    goto/16 :goto_0

    .line 123
    .end local v0           #_arg0:Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;
    :sswitch_b
    const-string v6, "com.zte.heartyservice.apksmanager.IApksManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;

    move-result-object v0

    .line 126
    .restart local v0       #_arg0:Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/apksmanager/IApksManagerService$Stub;->unregisterCallBack(Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;)V

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
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
