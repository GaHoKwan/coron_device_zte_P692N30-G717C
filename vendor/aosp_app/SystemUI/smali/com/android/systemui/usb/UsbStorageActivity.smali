.class public Lcom/android/systemui/usb/UsbStorageActivity;
.super Landroid/app/Activity;
.source "UsbStorageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DLG_CONFIRM_KILL_STORAGE_USERS:I = 0x1

.field private static final DLG_ERROR_SHARING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "UsbStorageActivity"

.field static final localLOGV:Z = true

.field private static mSettingUMS:Z


# instance fields
.field private mAllowedShareNum:I

.field private mAsyncStorageHandler:Landroid/os/Handler;

.field private mBanner:Landroid/widget/TextView;

.field private mDestroyed:Z

.field private mHasCheck:Z

.field private mIcon:Landroid/widget/ImageView;

.field private mMessage:Landroid/widget/TextView;

.field private mMountButton:Landroid/widget/Button;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSharedCount:I

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUIHandler:Landroid/os/Handler;

.field private mUnmountButton:Landroid/widget/Button;

.field private mUsbStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/usb/UsbStorageActivity;->mSettingUMS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 78
    iput-boolean v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mHasCheck:Z

    .line 80
    iput v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mAllowedShareNum:I

    .line 81
    iput v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mSharedCount:I

    .line 90
    new-instance v0, Lcom/android/systemui/usb/UsbStorageActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/UsbStorageActivity$1;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;)V

    iput-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    new-instance v0, Lcom/android/systemui/usb/UsbStorageActivity$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/UsbStorageActivity$2;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;)V

    iput-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/usb/UsbStorageActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/UsbStorageActivity;->handleUsbStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/android/systemui/usb/UsbStorageActivity;->mSettingUMS:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/usb/UsbStorageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput-boolean p0, Lcom/android/systemui/usb/UsbStorageActivity;->mSettingUMS:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/usb/UsbStorageActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUnmountButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/usb/UsbStorageActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMountButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/usb/UsbStorageActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/usb/UsbStorageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/usb/UsbStorageActivity;->checkStorageUsersAsync()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/usb/UsbStorageActivity;)Landroid/os/storage/StorageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/usb/UsbStorageActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mAllowedShareNum:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/usb/UsbStorageActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mSharedCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/usb/UsbStorageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/usb/UsbStorageActivity;->isSharable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/usb/UsbStorageActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/UsbStorageActivity;->switchDisplay(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/usb/UsbStorageActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/UsbStorageActivity;->switchDisplayAsync(Z)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/systemui/usb/UsbStorageActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mHasCheck:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/usb/UsbStorageActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/UsbStorageActivity;->switchUsbMassStorage(Z)V

    return-void
.end method

.method private checkStorageUsers()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mAsyncStorageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/UsbStorageActivity$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/usb/UsbStorageActivity$10;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 423
    return-void
.end method

.method private checkStorageUsersAsync()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    .line 426
    invoke-direct {p0}, Lcom/android/systemui/usb/UsbStorageActivity;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    .line 427
    .local v3, ims:Landroid/os/storage/IMountService;
    if-nez v3, :cond_0

    .line 429
    invoke-direct {p0, v13}, Lcom/android/systemui/usb/UsbStorageActivity;->scheduleShowDialog(I)V

    .line 431
    :cond_0
    const/4 v6, 0x0

    .line 433
    .local v6, showDialog:Z
    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v9}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v8

    .line 434
    .local v8, volumes:[Landroid/os/storage/StorageVolume;
    const/4 v7, 0x0

    .line 435
    .local v7, stUsers:[I
    if-eqz v8, :cond_1

    .line 436
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v9, v8

    if-ge v2, v9, :cond_1

    .line 437
    aget-object v9, v8, v2

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v9

    if-eqz v9, :cond_4

    aget-object v9, v8, v2

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v9

    if-nez v9, :cond_4

    .line 438
    aget-object v9, v8, v2

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 439
    .local v5, path:Ljava/lang/String;
    invoke-interface {v3, v5}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v7

    .line 440
    if-eqz v7, :cond_3

    .line 441
    const-string v9, "UsbStorageActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkStorageUsersAsync - path="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    array-length v9, v7

    if-lez v9, :cond_4

    .line 449
    .end local v2           #i:I
    .end local v5           #path:Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_5

    array-length v9, v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v9, :cond_5

    .line 450
    const/4 v6, 0x1

    .line 468
    .end local v7           #stUsers:[I
    .end local v8           #volumes:[Landroid/os/storage/StorageVolume;
    :cond_2
    :goto_1
    if-eqz v6, :cond_7

    .line 469
    const-string v9, "UsbStorageActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkStorageUsersAsync - [SHOW DIALOG] showDialog: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-direct {p0, v12}, Lcom/android/systemui/usb/UsbStorageActivity;->scheduleShowDialog(I)V

    .line 477
    :goto_2
    return-void

    .line 444
    .restart local v2       #i:I
    .restart local v5       #path:Ljava/lang/String;
    .restart local v7       #stUsers:[I
    .restart local v8       #volumes:[Landroid/os/storage/StorageVolume;
    :cond_3
    :try_start_1
    const-string v9, "UsbStorageActivity"

    const-string v10, "checkStorageUsersAsync - [NO Storage Users]"

    invoke-static {v9, v10}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    .end local v5           #path:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 453
    .end local v2           #i:I
    :cond_5
    const-string v9, "activity"

    invoke-virtual {p0, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 454
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v4

    .line 455
    .local v4, infoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v4, :cond_6

    .line 456
    const-string v9, "UsbStorageActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkStorageUsersAsync - infoList.size(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :goto_3
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 461
    const/4 v6, 0x1

    goto :goto_1

    .line 458
    :cond_6
    const-string v9, "UsbStorageActivity"

    const-string v10, "checkStorageUsersAsync - [NO EXT RUNNING APPS]"

    invoke-static {v9, v10}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 464
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v4           #infoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v7           #stUsers:[I
    .end local v8           #volumes:[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v1

    .line 466
    .local v1, e:Landroid/os/RemoteException;
    invoke-direct {p0, v13}, Lcom/android/systemui/usb/UsbStorageActivity;->scheduleShowDialog(I)V

    goto :goto_1

    .line 473
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_7
    const-string v9, "UsbStorageActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkStorageUsersAsync - [NO DIALOG] showDialog: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string v9, "UsbStorageActivity"

    const-string v10, "Enabling UMS"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-direct {p0, v12}, Lcom/android/systemui/usb/UsbStorageActivity;->switchUsbMassStorage(Z)V

    goto :goto_2
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    .line 335
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 336
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 337
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 339
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleUsbStateChanged(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 316
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "connected"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 317
    .local v0, connected:Z
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "mass_storage"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 319
    .local v1, isUMSmode:Z
    const-string v2, "UsbStorageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUsbStateChanged - connected:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isUMSmode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    .line 322
    :cond_0
    sget-boolean v2, Lcom/android/systemui/usb/UsbStorageActivity;->mSettingUMS:Z

    if-eqz v2, :cond_1

    .line 323
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/systemui/usb/UsbStorageActivity;->mSettingUMS:Z

    .line 324
    const-string v2, "UsbStorageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUsbStateChanged - [Unplug when UMS enabled] connected:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 332
    :cond_2
    return-void
.end method

.method private isSharable()Z
    .locals 8

    .prologue
    .line 109
    iget-object v5, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 110
    .local v4, volumes:[Landroid/os/storage/StorageVolume;
    const/4 v0, 0x0

    .line 111
    .local v0, allowedShareNum:I
    if-eqz v4, :cond_1

    .line 112
    const-string v5, "UsbStorageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSharable - length:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 114
    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v5

    if-eqz v5, :cond_0

    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v5

    if-nez v5, :cond_0

    .line 115
    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, pth:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, st:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 118
    const-string v5, "UsbStorageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSharable - allowMassStorage:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v1

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isEmulated:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v1

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v5, "unmountable"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "nofs"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "removed"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "bad_removal"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 122
    add-int/lit8 v0, v0, 0x1

    .line 113
    .end local v2           #pth:Ljava/lang/String;
    .end local v3           #st:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v1           #i:I
    :cond_1
    const-string v5, "UsbStorageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSharable - allowedShareNum:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    if-nez v0, :cond_2

    .line 130
    const/4 v5, 0x0

    .line 132
    :goto_1
    return v5

    :cond_2
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private scheduleShowDialog(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/UsbStorageActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/usb/UsbStorageActivity$7;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 383
    return-void
.end method

.method private switchDisplay(Z)V
    .locals 2
    .parameter "usbStorageInUse"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/UsbStorageActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/usb/UsbStorageActivity$3;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    return-void
.end method

.method private switchDisplayAsync(Z)V
    .locals 5
    .parameter "usbStorageInUse"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 267
    if-eqz p1, :cond_0

    .line 268
    const-string v0, "UsbStorageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchDisplayAsync - [Mount] usbStorageInUse:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUnmountButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMountButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mIcon:Landroid/widget/ImageView;

    const v1, 0x108063d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 273
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mBanner:Landroid/widget/TextView;

    const v1, 0x1040440

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMessage:Landroid/widget/TextView;

    const v1, 0x1040441

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 284
    :goto_0
    return-void

    .line 276
    :cond_0
    const-string v0, "UsbStorageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchDisplayAsync - [Unmount] usbStorageInUse:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUnmountButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMountButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mIcon:Landroid/widget/ImageView;

    const v1, 0x108063c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 281
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mBanner:Landroid/widget/TextView;

    const v1, 0x1040438

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 282
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMessage:Landroid/widget/TextView;

    const v1, 0x1040439

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private switchUsbMassStorage(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/UsbStorageActivity$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/usb/UsbStorageActivity$8;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 399
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mAsyncStorageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/UsbStorageActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/usb/UsbStorageActivity$9;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 414
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 504
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 505
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 480
    const-string v0, "UsbStorageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClickaa"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mHasCheck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMountButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 484
    iget-boolean v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mHasCheck:Z

    if-nez v0, :cond_0

    .line 485
    const-string v0, "UsbStorageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mHasCheck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mHasCheck:Z

    .line 494
    invoke-direct {p0}, Lcom/android/systemui/usb/UsbStorageActivity;->checkStorageUsers()V

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUnmountButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 497
    const-string v0, "UsbStorageActivity"

    const-string v1, "Disabling UMS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iput-boolean v3, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mHasCheck:Z

    .line 499
    invoke-direct {p0, v3}, Lcom/android/systemui/usb/UsbStorageActivity;->switchUsbMassStorage(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 197
    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    .line 198
    const-string v1, "storage"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 199
    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    .line 200
    const-string v1, "UsbStorageActivity"

    const-string v2, "Failed to get StorageManager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    sget-boolean v1, Lcom/android/systemui/usb/UsbStorageActivity;->mSettingUMS:Z

    iget-object v2, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v2

    or-int/2addr v1, v2

    sput-boolean v1, Lcom/android/systemui/usb/UsbStorageActivity;->mSettingUMS:Z

    .line 205
    const-string v1, "UsbStorageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSettingUMS="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/systemui/usb/UsbStorageActivity;->mSettingUMS:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUIHandler:Landroid/os/Handler;

    .line 228
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SystemUI UsbStorageActivity"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, thr:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 230
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mAsyncStorageHandler:Landroid/os/Handler;

    .line 232
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 233
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 237
    :cond_1
    const v1, 0x10900e3

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 239
    const v1, 0x1020006

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mIcon:Landroid/widget/ImageView;

    .line 240
    const v1, 0x10203b4

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mBanner:Landroid/widget/TextView;

    .line 241
    const v1, 0x102000b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMessage:Landroid/widget/TextView;

    .line 243
    const v1, 0x10203b5

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMountButton:Landroid/widget/Button;

    .line 244
    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMountButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    const v1, 0x10203b6

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUnmountButton:Landroid/widget/Button;

    .line 246
    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUnmountButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    const v1, 0x102000d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 248
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v0, 0x0

    const v3, 0x1040447

    .line 344
    const-string v1, "UsbStorageActivity"

    const-string v2, "onCreateDialoge"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    packed-switch p1, :pswitch_data_0

    .line 370
    :goto_0
    return-object v0

    .line 348
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040444

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/usb/UsbStorageActivity$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/usb/UsbStorageActivity$6;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/systemui/usb/UsbStorageActivity$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/usb/UsbStorageActivity$5;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040445

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 363
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040446

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104043b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 252
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mAsyncStorageHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mDestroyed:Z

    .line 255
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 307
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 309
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 310
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 313
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 288
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 290
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mHasCheck:Z

    .line 291
    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 292
    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mAsyncStorageHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/usb/UsbStorageActivity$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/usb/UsbStorageActivity$4;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "UsbStorageActivity"

    const-string v2, "Failed to read UMS enable state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
