.class public abstract Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;
.super Landroid/os/Binder;
.source "ISpeedUpService.java"

# interfaces
.implements Lcom/zte/heartyservice/speedup/ISpeedUpService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/ISpeedUpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.zte.heartyservice.speedup.ISpeedUpService"

.field static final TRANSACTION_clearAppCache:I = 0xf

.field static final TRANSACTION_clearAppFile:I = 0x10

.field static final TRANSACTION_closeRunningProcess:I = 0xa

.field static final TRANSACTION_disableAutoRunApp:I = 0xb

.field static final TRANSACTION_disableBackgroundAutoRunApp:I = 0xd

.field static final TRANSACTION_enableAutoRunApp:I = 0xc

.field static final TRANSACTION_enableBackgroundAutoRunApp:I = 0xe

.field static final TRANSACTION_listAppCache:I = 0x6

.field static final TRANSACTION_listAppData:I = 0x9

.field static final TRANSACTION_listAppFile:I = 0x8

.field static final TRANSACTION_listAutoRunApp:I = 0x4

.field static final TRANSACTION_listBackgroundAutoRunApp:I = 0x5

.field static final TRANSACTION_listRunningProcess:I = 0x3

.field static final TRANSACTION_listSysGarbage:I = 0x7

.field static final TRANSACTION_registerCallBack:I = 0x1

.field static final TRANSACTION_setRunningProcessIsChecked:I = 0x12

.field static final TRANSACTION_setRunningProcessIsUnChecked:I = 0x11

.field static final TRANSACTION_unregisterCallBack:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.zte.heartyservice.speedup.ISpeedUpService"

    invoke-virtual {p0, p0, v0}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/zte/heartyservice/speedup/ISpeedUpService;
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
    const-string v1, "com.zte.heartyservice.speedup.ISpeedUpService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/zte/heartyservice/speedup/ISpeedUpService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/zte/heartyservice/speedup/ISpeedUpService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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
    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 176
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 42
    :sswitch_0
    const-string v7, "com.zte.heartyservice.speedup.ISpeedUpService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v7, "com.zte.heartyservice.speedup.ISpeedUpService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    move-result-object v0

    .line 50
    .local v0, _arg0:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;->registerCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V

    goto :goto_0

    .line 55
    .end local v0           #_arg0:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;
    :sswitch_2
    const-string v7, "com.zte.heartyservice.speedup.ISpeedUpService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    move-result-object v0

    .line 58
    .restart local v0       #_arg0:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;->unregisterCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V

    goto :goto_0

    .line 63
    .end local v0           #_arg0:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;
    :sswitch_3
    const-string v7, "com.zte.heartyservice.speedup.ISpeedUpService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;->listRunningProcess()V

    goto :goto_0

    .line 69
    :sswitch_4
    const-string v7, "com.zte.heartyservice.speedup.ISpeedUpService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;->listAutoRunApp()V

    goto :goto_0

    .line 75
    :sswitch_5
    const-string v7, "com.zte.heartyservice.speedup.ISpeedUpService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;->listBackgroundAutoRunApp()V

    goto :goto_0

    .line 81
    :sswitch_6
    const-string v7, "com.zte.heartyservice.speedup.ISpeedUpService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;->listAppCache()V

    goto :goto_0

    .line 87
    :sswitch_7
    const-string v7, "com.zte.heartyservice.speedup.ISpeedUpService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;->listSysGarbage()V

    goto :goto_0

    .line 93
    :sswitch_8
    const-string v7, "com.zte.heartyservice.speedup.ISpeedUpService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;->listAppFile()V

    goto :goto_0

    .line 99
    :sswitch_9
    const-string v7, "com.zte.heartyservice.speedup.ISpeedUpService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;->listAppData()V

    goto :goto_0

    .line 105
    :sswitch_a
    const-string v7, "com.zte.heartyservice.speedup.ISpeedUpService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    sget-object v7, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v5

    .line 108
    .local v5, _arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;>;"
    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;->closeRunningProcess(Ljava/util/List;)V

    goto :goto_0

    .line 113
    .end local v5           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;>;"
    :sswitch_b
    const-string v7, "com.zte.heartyservice.speedup.ISpeedUpService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    sget-object v7, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 116
    .local v3, _arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;>;"
    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;->disableAutoRunApp(Ljava/util/List;)V

    goto/16 :goto_0

    .line 121
    .end local v3           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;>;"
    :sswitch_c
    const-string v7, "com.zte.heartyservice.speedup.ISpeedUpService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    sget-object v7, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 124
    .restart local v3       #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;>;"
    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;->enableAutoRunApp(Ljava/util/List;)V

    goto/16 :goto_0

    .line 129
    .end local v3           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;>;"
    :sswitch_d
    const-string v7, "com.zte.heartyservice.speedup.ISpeedUpService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    sget-object v7, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 132
    .local v4, _arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;>;"
    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;->disableBackgroundAutoRunApp(Ljava/util/List;)V

    goto/16 :goto_0

    .line 137
    .end local v4           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;>;"
    :sswitch_e
    const-string v7, "com.zte.heartyservice.speedup.ISpeedUpService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    sget-object v7, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 140
    .restart local v4       #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;>;"
    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;->enableBackgroundAutoRunApp(Ljava/util/List;)V

    goto/16 :goto_0

    .line 145
    .end local v4           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;>;"
    :sswitch_f
    const-string v7, "com.zte.heartyservice.speedup.ISpeedUpService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    sget-object v7, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 148
    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;->clearAppCache(Ljava/util/List;)V

    goto/16 :goto_0

    .line 153
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    :sswitch_10
    const-string v7, "com.zte.heartyservice.speedup.ISpeedUpService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    sget-object v7, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 156
    .local v2, _arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppFileInfo;>;"
    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;->clearAppFile(Ljava/util/List;)V

    goto/16 :goto_0

    .line 161
    .end local v2           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppFileInfo;>;"
    :sswitch_11
    const-string v7, "com.zte.heartyservice.speedup.ISpeedUpService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;->setRunningProcessIsUnChecked(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 169
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_12
    const-string v7, "com.zte.heartyservice.speedup.ISpeedUpService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 172
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;->setRunningProcessIsChecked(Ljava/lang/String;)V

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
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
