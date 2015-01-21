.class final Ltmsdk/common/module/powersaving/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TRANSACTION_getAnimationScales:I

.field private static TRANSACTION_setAnimationScales:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x2b

    const/16 v3, 0x29

    .line 12
    sput v4, Ltmsdk/common/module/powersaving/e;->TRANSACTION_setAnimationScales:I

    .line 13
    sput v3, Ltmsdk/common/module/powersaving/e;->TRANSACTION_getAnimationScales:I

    .line 17
    :try_start_0
    const-string v1, "android.view.IWindowManager$Stub"

    const-string v2, "TRANSACTION_setAnimationScales"

    invoke-static {v1, v2}, Ltmsdkobf/kh;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Ltmsdk/common/module/powersaving/e;->TRANSACTION_setAnimationScales:I

    .line 18
    const-string v1, "android.view.IWindowManager$Stub"

    const-string v2, "TRANSACTION_getAnimationScales"

    invoke-static {v1, v2}, Ltmsdkobf/kh;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Ltmsdk/common/module/powersaving/e;->TRANSACTION_getAnimationScales:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .local v0, e1:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 19
    .end local v0           #e1:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 20
    .restart local v0       #e1:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    sput v4, Ltmsdk/common/module/powersaving/e;->TRANSACTION_setAnimationScales:I

    .line 22
    sput v3, Ltmsdk/common/module/powersaving/e;->TRANSACTION_getAnimationScales:I

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fe()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 27
    const-string v0, "window"

    invoke-static {v0}, Ltmsdkobf/ki;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getAnimationScales()[F
    .locals 7

    .prologue
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
    .local v3, result:[F
    :try_start_0
    const-string v4, "android.view.IWindowManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Ltmsdk/common/module/powersaving/e;->fe()Landroid/os/IBinder;

    move-result-object v4

    sget v5, Ltmsdk/common/module/powersaving/e;->TRANSACTION_getAnimationScales:I

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 54
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 56
    invoke-virtual {v2}, Landroid/os/Parcel;->createFloatArray()[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 60
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 61
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 64
    :goto_0
    return-object v3

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 61
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 60
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 61
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public final setAnimationScales([F)V
    .locals 6
    .parameter "scales"

    .prologue
    .line 31
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 32
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 34
    .local v2, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 36
    invoke-direct {p0}, Ltmsdk/common/module/powersaving/e;->fe()Landroid/os/IBinder;

    move-result-object v3

    sget v4, Ltmsdk/common/module/powersaving/e;->TRANSACTION_setAnimationScales:I

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 37
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 42
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 44
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 42
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 41
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 42
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
