.class final Ltmsdk/common/module/software/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static Be:I

.field private static Bf:I


# instance fields
.field private mBinder:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0x29

    sput v0, Ltmsdk/common/module/software/b;->Be:I

    .line 26
    const/16 v0, 0x2b

    sput v0, Ltmsdk/common/module/software/b;->Bf:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "android.app.admin.IDevicePolicyManager$Stub"

    invoke-static {v0}, Ltmsdkobf/kh;->aN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const-string v0, "TRANSACTION_packageHasActiveAdmins"

    const/16 v1, 0x29

    invoke-static {v0, v1}, Ltmsdkobf/kh;->c(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ltmsdk/common/module/software/b;->Be:I

    .line 34
    const-string v0, "TRANSACTION_removeActiveAdmin"

    const/16 v1, 0x2b

    invoke-static {v0, v1}, Ltmsdkobf/kh;->c(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ltmsdk/common/module/software/b;->Bf:I

    .line 35
    const-string v0, "device_policy"

    invoke-static {v0}, Ltmsdkobf/ki;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/software/b;->mBinder:Landroid/os/IBinder;

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public cs(Ljava/lang/String;)Z
    .locals 12
    .parameter "packageName"

    .prologue
    .line 75
    iget-object v8, p0, Ltmsdk/common/module/software/b;->mBinder:Landroid/os/IBinder;

    if-nez v8, :cond_0

    .line 76
    const/4 v8, 0x0

    .line 123
    :goto_0
    return v8

    .line 79
    :cond_0
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 81
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 85
    .local v5, pkgInfo:Landroid/content/pm/PackageInfo;
    const/4 v8, 0x2

    :try_start_0
    invoke-static {v6, p1, v8}, Ltmsdkobf/id;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 87
    if-eqz v5, :cond_1

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v8, :cond_2

    .line 88
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v2

    .line 91
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "DevicePolicyManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in removeActiveAdmin: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    const/4 v8, 0x0

    goto :goto_0

    .line 95
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v1, cmds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .local v0, arr$:[Landroid/content/pm/ActivityInfo;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_6

    aget-object v7, v0, v3

    .line 98
    .local v7, receiverInfo:Landroid/content/pm/ActivityInfo;
    iget-boolean v8, v7, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v8, :cond_3

    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    const-string v9, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 97
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 106
    :cond_4
    invoke-static {}, Ltmsdk/common/utils/SDKUtil;->getSDKVersion()I

    move-result v8

    const/16 v9, 0x11

    if-ge v8, v9, :cond_5

    .line 107
    const-string v8, "service call %s %d i32 1 s16 %s s16 %s"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "device_policy"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget v11, Ltmsdk/common/module/software/b;->Bf:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object p1, v9, v10

    const/4 v10, 0x3

    iget-object v11, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 112
    :cond_5
    const-string v8, "service call %s %d i32 1 s16 %s s16 %s i32 0"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "device_policy"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget v11, Ltmsdk/common/module/software/b;->Bf:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object p1, v9, v10

    const/4 v10, 0x3

    iget-object v11, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 119
    .end local v7           #receiverInfo:Landroid/content/pm/ActivityInfo;
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 120
    invoke-static {v1}, Ltmsdk/common/utils/ScriptHelper;->runScriptAsRoot(Ljava/util/List;)I

    .line 123
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;)Z
    .locals 8
    .parameter "packageName"

    .prologue
    const/4 v4, 0x0

    .line 46
    iget-object v5, p0, Ltmsdk/common/module/software/b;->mBinder:Landroid/os/IBinder;

    if-eqz v5, :cond_1

    .line 47
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 48
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 49
    .local v2, reply:Landroid/os/Parcel;
    const/4 v3, 0x0

    .line 52
    .local v3, result:Z
    :try_start_0
    const-string v5, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v5, p0, Ltmsdk/common/module/software/b;->mBinder:Landroid/os/IBinder;

    sget v6, Ltmsdk/common/module/software/b;->Be:I

    const/4 v7, 0x0

    invoke-interface {v5, v6, v0, v2, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 56
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 57
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    .line 62
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 63
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 69
    .end local v0           #data:Landroid/os/Parcel;
    .end local v2           #reply:Landroid/os/Parcel;
    .end local v3           #result:Z
    :goto_1
    return v3

    .restart local v0       #data:Landroid/os/Parcel;
    .restart local v2       #reply:Landroid/os/Parcel;
    .restart local v3       #result:Z
    :cond_0
    move v3, v4

    .line 57
    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, e:Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 63
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 62
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 63
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v4

    .end local v0           #data:Landroid/os/Parcel;
    .end local v2           #reply:Landroid/os/Parcel;
    .end local v3           #result:Z
    :cond_1
    move v3, v4

    .line 69
    goto :goto_1
.end method
