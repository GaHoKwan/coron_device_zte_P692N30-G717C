.class public abstract Lcom/zte/heartyservice/speedup/ISpeedUpCallBack$Stub;
.super Landroid/os/Binder;
.source "ISpeedUpCallBack.java"

# interfaces
.implements Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/speedup/ISpeedUpCallBack$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.zte.heartyservice.speedup.ISpeedUpCallBack"

.field static final TRANSACTION_UpdateAppCacheList:I = 0x3

.field static final TRANSACTION_UpdateAppDataList:I = 0x5

.field static final TRANSACTION_UpdateAppFileList:I = 0x4

.field static final TRANSACTION_UpdateAutoRunAppList:I = 0x2

.field static final TRANSACTION_UpdateBackgroundAutoRunAppList:I = 0x6

.field static final TRANSACTION_UpdateRunningProcessList:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.zte.heartyservice.speedup.ISpeedUpCallBack"

    invoke-virtual {p0, p0, v0}, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;
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
    const-string v1, "com.zte.heartyservice.speedup.ISpeedUpCallBack"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
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
    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 42
    :sswitch_0
    const-string v8, "com.zte.heartyservice.speedup.ISpeedUpCallBack"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v8, "com.zte.heartyservice.speedup.ISpeedUpCallBack"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v4, _arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 52
    .local v5, _arg1:J
    invoke-virtual {p0, v4, v5, v6}, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack$Stub;->UpdateRunningProcessList(Ljava/util/List;J)V

    .line 53
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 58
    .end local v4           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;>;"
    .end local v5           #_arg1:J
    :sswitch_2
    const-string v8, "com.zte.heartyservice.speedup.ISpeedUpCallBack"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v2, _arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;>;"
    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack$Stub;->UpdateAutoRunAppList(Ljava/util/List;)V

    .line 62
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 67
    .end local v2           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;>;"
    :sswitch_3
    const-string v8, "com.zte.heartyservice.speedup.ISpeedUpCallBack"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v0, _arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack$Stub;->UpdateAppCacheList(Ljava/util/List;)V

    .line 71
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 76
    .end local v0           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    :sswitch_4
    const-string v8, "com.zte.heartyservice.speedup.ISpeedUpCallBack"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppFileInfo;>;"
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack$Stub;->UpdateAppFileList(Ljava/util/List;)V

    .line 80
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 85
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppFileInfo;>;"
    :sswitch_5
    const-string v8, "com.zte.heartyservice.speedup.ISpeedUpCallBack"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .restart local v0       #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack$Stub;->UpdateAppDataList(Ljava/util/List;)V

    .line 89
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 94
    .end local v0           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    :sswitch_6
    const-string v8, "com.zte.heartyservice.speedup.ISpeedUpCallBack"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v3, _arg0:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;>;"
    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack$Stub;->UpdateBackgroundAutoRunAppList(Ljava/util/List;)V

    .line 98
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
