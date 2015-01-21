.class public Lcom/zte/engineer/EmodeSvrManager;
.super Ljava/lang/Object;
.source "EmodeSvrManager.java"


# static fields
.field public static final EMODE_CMD_INIT_EMODE:I = 0x5

.field public static final EMODE_CMD_USB_ACM:I = 0x4

.field public static final EMODE_CMD_USB_ADB:I = 0x3

.field public static final EMODE_CMD_USB_RNDIS:I = 0x2

.field public static final EMODE_CMD_USB_STOR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EmodeSvrManager"

.field private static mEmodeSvrMgr:Lcom/zte/engineer/EmodeSvrManager;


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mEmodeService:Lcom/zte/engineer/IEmodeService;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/engineer/EmodeSvrManager;->mCamera:Landroid/hardware/Camera;

    .line 29
    const-string v0, "EmodeService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/engineer/IEmodeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/engineer/IEmodeService;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/engineer/EmodeSvrManager;->mEmodeService:Lcom/zte/engineer/IEmodeService;

    .line 31
    iget-object v0, p0, Lcom/zte/engineer/EmodeSvrManager;->mEmodeService:Lcom/zte/engineer/IEmodeService;

    if-nez v0, :cond_0

    .line 32
    const-string v0, "EmodeSvrManager"

    const-string v1, "mEmodeService == NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    const-string v0, "EmodeSvrManager"

    const-string v1, "Got EmodeService instance."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/zte/engineer/EmodeSvrManager;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/zte/engineer/EmodeSvrManager;->mEmodeSvrMgr:Lcom/zte/engineer/EmodeSvrManager;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/zte/engineer/EmodeSvrManager;

    invoke-direct {v0}, Lcom/zte/engineer/EmodeSvrManager;-><init>()V

    sput-object v0, Lcom/zte/engineer/EmodeSvrManager;->mEmodeSvrMgr:Lcom/zte/engineer/EmodeSvrManager;

    .line 44
    :cond_0
    sget-object v0, Lcom/zte/engineer/EmodeSvrManager;->mEmodeSvrMgr:Lcom/zte/engineer/EmodeSvrManager;

    return-object v0
.end method


# virtual methods
.method public BackupNvramToBinRegion_All()I
    .locals 5

    .prologue
    .line 224
    const/4 v1, 0x0

    .line 226
    .local v1, ret:I
    iget-object v2, p0, Lcom/zte/engineer/EmodeSvrManager;->mEmodeService:Lcom/zte/engineer/IEmodeService;

    if-nez v2, :cond_0

    .line 227
    const/4 v2, 0x0

    .line 236
    :goto_0
    return v2

    .line 231
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/zte/engineer/EmodeSvrManager;->mEmodeService:Lcom/zte/engineer/IEmodeService;

    invoke-interface {v2}, Lcom/zte/engineer/IEmodeService;->BackupNvramToBinRegion_All()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 236
    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "EmodeSvrManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BackupNvramToBinRegion_All() failed with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public backupNvData(Ljava/lang/String;)I
    .locals 5
    .parameter "path"

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 66
    .local v1, ret:I
    iget-object v2, p0, Lcom/zte/engineer/EmodeSvrManager;->mEmodeService:Lcom/zte/engineer/IEmodeService;

    if-nez v2, :cond_0

    .line 67
    const/4 v2, 0x0

    .line 76
    :goto_0
    return v2

    .line 71
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/zte/engineer/EmodeSvrManager;->mEmodeService:Lcom/zte/engineer/IEmodeService;

    invoke-interface {v2, p1}, Lcom/zte/engineer/IEmodeService;->backupNvData(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 76
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "EmodeSvrManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backupNvData() failed with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public copylogtosd(Ljava/lang/String;)I
    .locals 5
    .parameter "path"

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 81
    .local v1, ret:I
    iget-object v2, p0, Lcom/zte/engineer/EmodeSvrManager;->mEmodeService:Lcom/zte/engineer/IEmodeService;

    if-nez v2, :cond_0

    .line 82
    const/4 v2, 0x0

    .line 91
    :goto_0
    return v2

    .line 86
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/zte/engineer/EmodeSvrManager;->mEmodeService:Lcom/zte/engineer/IEmodeService;

    invoke-interface {v2, p1}, Lcom/zte/engineer/IEmodeService;->copylogtosd(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 91
    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "EmodeSvrManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copylogtosd() failed with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public doEmodeCmd(II)I
    .locals 5
    .parameter "cmd"
    .parameter "param"

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 50
    .local v1, ret:I
    iget-object v2, p0, Lcom/zte/engineer/EmodeSvrManager;->mEmodeService:Lcom/zte/engineer/IEmodeService;

    if-nez v2, :cond_0

    .line 51
    const/4 v2, 0x0

    .line 60
    :goto_0
    return v2

    .line 55
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/zte/engineer/EmodeSvrManager;->mEmodeService:Lcom/zte/engineer/IEmodeService;

    invoke-interface {v2, p1, p2}, Lcom/zte/engineer/IEmodeService;->doEmodeCmd(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 60
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "EmodeSvrManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doEmodeCmd() failed with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public fileWrite(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "file"
    .parameter "dat"

    .prologue
    .line 207
    const/4 v1, 0x0

    .line 209
    .local v1, ret:I
    iget-object v2, p0, Lcom/zte/engineer/EmodeSvrManager;->mEmodeService:Lcom/zte/engineer/IEmodeService;

    if-nez v2, :cond_0

    .line 210
    const/4 v2, 0x0

    .line 220
    :goto_0
    return v2

    .line 214
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/zte/engineer/EmodeSvrManager;->mEmodeService:Lcom/zte/engineer/IEmodeService;

    invoke-interface {v2, p1, p2}, Lcom/zte/engineer/IEmodeService;->fileWrite(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 220
    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "EmodeSvrManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileWrite() failed with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public getDownloadFlagState(I)I
    .locals 5
    .parameter "offset"

    .prologue
    .line 156
    const/4 v0, -0x1

    .line 157
    .local v0, data:I
    iget-object v2, p0, Lcom/zte/engineer/EmodeSvrManager;->mEmodeService:Lcom/zte/engineer/IEmodeService;

    if-nez v2, :cond_0

    .line 158
    const-string v2, "EmodeSvrManager"

    const-string v3, "getDownloadFlagState() failed with: mEmodeService == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v2, -0x1

    .line 170
    :goto_0
    return v2

    .line 163
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/zte/engineer/EmodeSvrManager;->mEmodeService:Lcom/zte/engineer/IEmodeService;

    invoke-interface {v2, p1}, Lcom/zte/engineer/IEmodeService;->getDownloadFlagState(I)I

    move-result v0

    .line 164
    const-string v2, "EmodeSvrManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloaddata: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v2, v0

    .line 170
    goto :goto_0

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "EmodeSvrManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDownloadFlagState() failed with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public getLcdBrand()Ljava/lang/String;
    .locals 6

    .prologue
    .line 240
    const-string v1, ""

    .line 241
    .local v1, ret:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/engineer/EmodeSvrManager;->mEmodeService:Lcom/zte/engineer/IEmodeService;

    if-nez v3, :cond_0

    move-object v2, v1

    .line 250
    .end local v1           #ret:Ljava/lang/String;
    .local v2, ret:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 245
    .end local v2           #ret:Ljava/lang/String;
    .restart local v1       #ret:Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/zte/engineer/EmodeSvrManager;->mEmodeService:Lcom/zte/engineer/IEmodeService;

    invoke-interface {v3}, Lcom/zte/engineer/IEmodeService;->getLcdBrand()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 250
    .end local v1           #ret:Ljava/lang/String;
    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_0

    .line 246
    .end local v2           #ret:Ljava/lang/String;
    .restart local v1       #ret:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 247
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "EmodeSvrManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLcdBrand() failed with: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public getSensorId(I)Ljava/lang/String;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    .line 256
    const-string v1, "unknown"

    .line 258
    .local v1, ret:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/zte/engineer/EmodeSvrManager;->mCamera:Landroid/hardware/Camera;

    if-nez v3, :cond_0

    .line 259
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/engineer/EmodeSvrManager;->mCamera:Landroid/hardware/Camera;

    .line 262
    :cond_0
    iget-object v3, p0, Lcom/zte/engineer/EmodeSvrManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v3, :cond_3

    .line 263
    iget-object v3, p0, Lcom/zte/engineer/EmodeSvrManager;->mEmodeService:Lcom/zte/engineer/IEmodeService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_2

    .line 277
    iget-object v3, p0, Lcom/zte/engineer/EmodeSvrManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v3, :cond_1

    .line 278
    iget-object v3, p0, Lcom/zte/engineer/EmodeSvrManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    .line 279
    iput-object v6, p0, Lcom/zte/engineer/EmodeSvrManager;->mCamera:Landroid/hardware/Camera;

    :cond_1
    move-object v2, v1

    .line 282
    .end local v1           #ret:Ljava/lang/String;
    .local v2, ret:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 267
    .end local v2           #ret:Ljava/lang/String;
    .restart local v1       #ret:Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/zte/engineer/EmodeSvrManager;->mEmodeService:Lcom/zte/engineer/IEmodeService;

    invoke-interface {v3}, Lcom/zte/engineer/IEmodeService;->getSensorId()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 277
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/zte/engineer/EmodeSvrManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v3, :cond_4

    .line 278
    iget-object v3, p0, Lcom/zte/engineer/EmodeSvrManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    .line 279
    iput-object v6, p0, Lcom/zte/engineer/EmodeSvrManager;->mCamera:Landroid/hardware/Camera;

    :cond_4
    :goto_2
    move-object v2, v1

    .line 282
    .end local v1           #ret:Ljava/lang/String;
    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_0

    .line 268
    .end local v2           #ret:Ljava/lang/String;
    .restart local v1       #ret:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 269
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "EmodeSvrManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSensorId() failed with: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 273
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 274
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "EmodeSvrManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSensorId() failed with: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 277
    iget-object v3, p0, Lcom/zte/engineer/EmodeSvrManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v3, :cond_4

    .line 278
    iget-object v3, p0, Lcom/zte/engineer/EmodeSvrManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    .line 279
    iput-object v6, p0, Lcom/zte/engineer/EmodeSvrManager;->mCamera:Landroid/hardware/Camera;

    goto :goto_2

    .line 277
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/zte/engineer/EmodeSvrManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v4, :cond_5

    .line 278
    iget-object v4, p0, Lcom/zte/engineer/EmodeSvrManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->release()V

    .line 279
    iput-object v6, p0, Lcom/zte/engineer/EmodeSvrManager;->mCamera:Landroid/hardware/Camera;

    :cond_5
    throw v3
.end method

.method public readSmsSecurityState()[B
    .locals 7

    .prologue
    .line 111
    const/4 v3, 0x0

    .line 113
    .local v3, smsdata:[B
    iget-object v4, p0, Lcom/zte/engineer/EmodeSvrManager;->mEmodeService:Lcom/zte/engineer/IEmodeService;

    if-nez v4, :cond_0

    .line 114
    const/4 v4, 0x0

    .line 130
    :goto_0
    return-object v4

    .line 118
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/zte/engineer/EmodeSvrManager;->mEmodeService:Lcom/zte/engineer/IEmodeService;

    invoke-interface {v4}, Lcom/zte/engineer/IEmodeService;->getSmsSecurityState()[B

    move-result-object v3

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, log:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v4, 0x78

    if-ge v1, v4, :cond_1

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, v3, v1

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 124
    :cond_1
    const-string v4, "EmodeSvrManager"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #i:I
    .end local v2           #log:Ljava/lang/String;
    :goto_2
    move-object v4, v3

    .line 130
    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "EmodeSvrManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readSmsSecurityState() failed with: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public restorNvData(Ljava/lang/String;)I
    .locals 5
    .parameter "path"

    .prologue
    .line 95
    const/4 v1, 0x0

    .line 97
    .local v1, ret:I
    iget-object v2, p0, Lcom/zte/engineer/EmodeSvrManager;->mEmodeService:Lcom/zte/engineer/IEmodeService;

    if-nez v2, :cond_0

    .line 98
    const/4 v2, 0x0

    .line 107
    :goto_0
    return v2

    .line 102
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/zte/engineer/EmodeSvrManager;->mEmodeService:Lcom/zte/engineer/IEmodeService;

    invoke-interface {v2, p1}, Lcom/zte/engineer/IEmodeService;->restorNvData(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 107
    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "EmodeSvrManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backupNvData() failed with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public setDownloadFlagState(II)I
    .locals 5
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 174
    const/4 v1, -0x1

    .line 176
    .local v1, ret:I
    iget-object v2, p0, Lcom/zte/engineer/EmodeSvrManager;->mEmodeService:Lcom/zte/engineer/IEmodeService;

    if-nez v2, :cond_0

    .line 177
    const/4 v2, -0x1

    .line 187
    :goto_0
    return v2

    .line 181
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/zte/engineer/EmodeSvrManager;->mEmodeService:Lcom/zte/engineer/IEmodeService;

    invoke-interface {v2, p1, p2}, Lcom/zte/engineer/IEmodeService;->setDownloadFlagState(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 187
    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "EmodeSvrManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDownloadFlagState() failed with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public setSysProp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "key"
    .parameter "val"

    .prologue
    .line 190
    const/4 v1, 0x0

    .line 192
    .local v1, ret:I
    iget-object v2, p0, Lcom/zte/engineer/EmodeSvrManager;->mEmodeService:Lcom/zte/engineer/IEmodeService;

    if-nez v2, :cond_0

    .line 193
    const/4 v2, 0x0

    .line 203
    :goto_0
    return v2

    .line 197
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/zte/engineer/EmodeSvrManager;->mEmodeService:Lcom/zte/engineer/IEmodeService;

    invoke-interface {v2, p1, p2}, Lcom/zte/engineer/IEmodeService;->setSysProp(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 203
    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "EmodeSvrManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSysProp() failed with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public updateSmsSecurityState([B)I
    .locals 7
    .parameter "smsdata"

    .prologue
    .line 134
    const/4 v3, 0x0

    .line 136
    .local v3, ret:I
    iget-object v4, p0, Lcom/zte/engineer/EmodeSvrManager;->mEmodeService:Lcom/zte/engineer/IEmodeService;

    if-nez v4, :cond_0

    .line 137
    const/4 v4, 0x0

    .line 153
    :goto_0
    return v4

    .line 141
    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, log:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_1

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 145
    :cond_1
    const-string v4, "EmodeSvrManager"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v4, p0, Lcom/zte/engineer/EmodeSvrManager;->mEmodeService:Lcom/zte/engineer/IEmodeService;

    array-length v5, p1

    invoke-interface {v4, p1, v5}, Lcom/zte/engineer/IEmodeService;->updateSmsSecurityState([BI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .end local v1           #i:I
    .end local v2           #log:Ljava/lang/String;
    :goto_2
    move v4, v3

    .line 153
    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "EmodeSvrManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writeSmsSecurityState() failed with: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method
