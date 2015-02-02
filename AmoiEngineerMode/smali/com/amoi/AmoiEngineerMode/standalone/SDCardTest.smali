.class public Lcom/amoi/AmoiEngineerMode/standalone/SDCardTest;
.super Lcom/amoi/AmoiEngineerMode/base/SDCardBase;
.source "SDCardTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;-><init>()V

    return-void
.end method

.method private static isExSdcardInserted()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 32
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 33
    .local v2, service:Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 34
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 36
    .local v1, mountService:Landroid/os/storage/IMountService;
    if-nez v1, :cond_1

    .line 45
    .end local v1           #mountService:Landroid/os/storage/IMountService;
    :cond_0
    :goto_0
    return v3

    .line 40
    .restart local v1       #mountService:Landroid/os/storage/IMountService;
    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/os/storage/IMountService;->isSDExist()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method protected getStorgeState()Ljava/lang/String;
    .locals 4

    .prologue
    .line 50
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->mContext:Landroid/content/Context;

    const-string v3, "storage"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 52
    .local v1, storageManager:Landroid/os/storage/StorageManager;
    const-string v2, "/mnt/sdcard"

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, state:Ljava/lang/String;
    invoke-static {}, Lcom/amoi/AmoiEngineerMode/standalone/SDCardTest;->isExSdcardInserted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    const-string v2, "/mnt/sdcard2"

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    :cond_0
    return-object v0
.end method

.method protected getStrogeDirectory()Ljava/io/File;
    .locals 2

    .prologue
    .line 63
    const-string v0, "/mnt/sdcard"

    .line 65
    .local v0, mountPoint:Ljava/lang/String;
    invoke-static {}, Lcom/amoi/AmoiEngineerMode/standalone/SDCardTest;->isExSdcardInserted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const-string v0, "/mnt/sdcard2"

    .line 69
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method protected initButton()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 21
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->prevButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 23
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->exitButton:Landroid/widget/Button;

    new-instance v1, Lcom/amoi/AmoiEngineerMode/base/ExitButtonListener;

    invoke-direct {v1, p0}, Lcom/amoi/AmoiEngineerMode/base/ExitButtonListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    return-void
.end method

.method protected showButton(I)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->exitButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 29
    return-void
.end method
