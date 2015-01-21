.class public Lzte/android/flashlight/FlashService;
.super Landroid/app/Service;
.source "FlashService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/android/flashlight/FlashService$FlashBinder;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field private static final FLASHLIGHT_STATUS_CHANGED:Ljava/lang/String; = "android.intent.action.FLASH_CHANGED"

.field public static final LIGHTE_OFF:[B = null

.field public static final LIGHTE_ON:[B = null

.field private static final MSG_DESTORY:I = 0x10

.field private static final TAG:Ljava/lang/String; = "FlashLight"


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mCamera:Landroid/hardware/Camera;

.field mCameraParas:Landroid/hardware/Camera$Parameters;

.field private mHandle:Landroid/os/Handler;

.field private mRecevicer:Landroid/content/BroadcastReceiver;

.field private nodePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lzte/android/flashlight/FlashService;->LIGHTE_ON:[B

    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    sput-object v0, Lzte/android/flashlight/FlashService;->LIGHTE_OFF:[B

    return-void

    .line 25
    nop

    :array_0
    .array-data 0x1
        0x32t
        0x35t
        0x35t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    iput-object v0, p0, Lzte/android/flashlight/FlashService;->mCamera:Landroid/hardware/Camera;

    .line 30
    iput-object v0, p0, Lzte/android/flashlight/FlashService;->mCameraParas:Landroid/hardware/Camera$Parameters;

    .line 31
    iput-object v0, p0, Lzte/android/flashlight/FlashService;->nodePath:Ljava/lang/String;

    .line 32
    new-instance v0, Lzte/android/flashlight/FlashService$FlashBinder;

    invoke-direct {v0, p0}, Lzte/android/flashlight/FlashService$FlashBinder;-><init>(Lzte/android/flashlight/FlashService;)V

    iput-object v0, p0, Lzte/android/flashlight/FlashService;->mBinder:Landroid/os/IBinder;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lzte/android/flashlight/FlashService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lzte/android/flashlight/FlashService;->mHandle:Landroid/os/Handler;

    return-object v0
.end method

.method private isFileExist(Ljava/lang/String;)Z
    .locals 5
    .parameter "fileName"

    .prologue
    const/4 v2, 0x0

    .line 166
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 174
    .end local v1           #f:Ljava/io/File;
    :goto_0
    return v2

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "FlashLight"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #f:Ljava/io/File;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private setLEDStatus(Z)Z
    .locals 7
    .parameter "status"

    .prologue
    .line 131
    const/4 v3, 0x0

    .line 135
    .local v3, setStatusResult:Z
    :try_start_0
    const-string v4, "FlashLight"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FlashService current LED status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    if-eqz p1, :cond_0

    sget-object v1, Lzte/android/flashlight/FlashService;->LIGHTE_ON:[B

    .line 137
    .local v1, ledData:[B
    :goto_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lzte/android/flashlight/FlashService;->nodePath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 138
    .local v2, red:Ljava/io/FileOutputStream;
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 139
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 140
    const/4 v3, 0x1

    .line 161
    .end local v1           #ledData:[B
    .end local v2           #red:Ljava/io/FileOutputStream;
    :goto_1
    return v3

    .line 136
    :cond_0
    sget-object v1, Lzte/android/flashlight/FlashService;->LIGHTE_OFF:[B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v4, "FlashLight"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v4, p0, Lzte/android/flashlight/FlashService;->mCamera:Landroid/hardware/Camera;

    if-nez v4, :cond_1

    .line 145
    invoke-virtual {p0}, Lzte/android/flashlight/FlashService;->OpenCamera()V

    .line 148
    :cond_1
    iget-object v4, p0, Lzte/android/flashlight/FlashService;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iput-object v4, p0, Lzte/android/flashlight/FlashService;->mCameraParas:Landroid/hardware/Camera$Parameters;

    .line 149
    if-eqz p1, :cond_2

    .line 150
    iget-object v4, p0, Lzte/android/flashlight/FlashService;->mCameraParas:Landroid/hardware/Camera$Parameters;

    const-string v5, "torch"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 151
    iget-object v4, p0, Lzte/android/flashlight/FlashService;->mCamera:Landroid/hardware/Camera;

    iget-object v5, p0, Lzte/android/flashlight/FlashService;->mCameraParas:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 156
    :goto_2
    const/4 v3, 0x1

    .line 160
    goto :goto_1

    .line 153
    :cond_2
    iget-object v4, p0, Lzte/android/flashlight/FlashService;->mCameraParas:Landroid/hardware/Camera$Parameters;

    const-string v5, "off"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 154
    iget-object v4, p0, Lzte/android/flashlight/FlashService;->mCamera:Landroid/hardware/Camera;

    iget-object v5, p0, Lzte/android/flashlight/FlashService;->mCameraParas:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_2

    .line 158
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 159
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public Close_Light()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FLASH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, lightChanged:Landroid/content/Intent;
    const-string v1, "FLASH_CHANGED"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, v0}, Lzte/android/flashlight/FlashService;->sendBroadcast(Landroid/content/Intent;)V

    .line 61
    const/4 v1, 0x4

    sput v1, Lzte/android/flashlight/FlashState;->mState:I

    .line 62
    invoke-direct {p0, v2}, Lzte/android/flashlight/FlashService;->setLEDStatus(Z)Z

    move-result v1

    return v1
.end method

.method public OpenCamera()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lzte/android/flashlight/CameraHolder;->instance()Lzte/android/flashlight/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lzte/android/flashlight/CameraHolder;->getOpenCamera()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lzte/android/flashlight/FlashService;->mCamera:Landroid/hardware/Camera;

    .line 46
    return-void
.end method

.method public Open_Light()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FLASH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, lightChanged:Landroid/content/Intent;
    const-string v1, "FLASH_CHANGED"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v0}, Lzte/android/flashlight/FlashService;->sendBroadcast(Landroid/content/Intent;)V

    .line 53
    const/4 v1, 0x5

    sput v1, Lzte/android/flashlight/FlashState;->mState:I

    .line 54
    invoke-direct {p0, v2}, Lzte/android/flashlight/FlashService;->setLEDStatus(Z)Z

    move-result v1

    return v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 126
    iget-object v0, p0, Lzte/android/flashlight/FlashService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 77
    const-string v1, "/sys/class/leds/torch-light/brightness"

    iput-object v1, p0, Lzte/android/flashlight/FlashService;->nodePath:Ljava/lang/String;

    .line 78
    const-string v1, "/sys/class/leds/torch-light/brightness"

    invoke-direct {p0, v1}, Lzte/android/flashlight/FlashService;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const-string v1, "FlashLight"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FlashService onCreate exists nodePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lzte/android/flashlight/FlashService;->nodePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    new-instance v1, Lzte/android/flashlight/FlashService$1;

    invoke-direct {v1, p0}, Lzte/android/flashlight/FlashService$1;-><init>(Lzte/android/flashlight/FlashService;)V

    iput-object v1, p0, Lzte/android/flashlight/FlashService;->mRecevicer:Landroid/content/BroadcastReceiver;

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    .local v0, intentfilter:Landroid/content/IntentFilter;
    const-string v1, "zte.android.flashlight.receiver.closelight"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lzte/android/flashlight/FlashService;->mRecevicer:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lzte/android/flashlight/FlashService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    new-instance v1, Lzte/android/flashlight/FlashService$2;

    invoke-direct {v1, p0}, Lzte/android/flashlight/FlashService$2;-><init>(Lzte/android/flashlight/FlashService;)V

    iput-object v1, p0, Lzte/android/flashlight/FlashService;->mHandle:Landroid/os/Handler;

    .line 109
    return-void

    .line 81
    .end local v0           #intentfilter:Landroid/content/IntentFilter;
    :cond_0
    invoke-virtual {p0}, Lzte/android/flashlight/FlashService;->OpenCamera()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lzte/android/flashlight/FlashService;->releaseLight()V

    .line 120
    iget-object v0, p0, Lzte/android/flashlight/FlashService;->mRecevicer:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lzte/android/flashlight/FlashService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 121
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 122
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 113
    invoke-virtual {p0}, Lzte/android/flashlight/FlashService;->Open_Light()Z

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public releaseLight()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "FlashLight"

    const-string v1, "FlashService releaseLight"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p0}, Lzte/android/flashlight/FlashService;->Close_Light()Z

    .line 68
    iget-object v0, p0, Lzte/android/flashlight/FlashService;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lzte/android/flashlight/CameraHolder;->instance()Lzte/android/flashlight/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lzte/android/flashlight/CameraHolder;->release()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/android/flashlight/FlashService;->mCamera:Landroid/hardware/Camera;

    .line 72
    :cond_0
    return-void
.end method
