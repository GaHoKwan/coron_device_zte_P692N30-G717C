.class public Lcom/amoi/AmoiEngineerMode/auto/SDCardAutoTest;
.super Lcom/amoi/AmoiEngineerMode/base/SDCardBase;
.source "SDCardAutoTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getStorgeState()Ljava/lang/String;
    .locals 5

    .prologue
    .line 33
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->mContext:Landroid/content/Context;

    const-string v4, "storage"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 35
    .local v1, storageManager:Landroid/os/storage/StorageManager;
    const-string v3, "/mnt/sdcard"

    invoke-virtual {v1, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, state:Ljava/lang/String;
    const-string v3, "/mnt/sdcard2"

    invoke-virtual {v1, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, tempstate:Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    const-string v3, "/mnt/sdcard2"

    invoke-virtual {v1, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    :cond_0
    return-object v0
.end method

.method protected getStrogeDirectory()Ljava/io/File;
    .locals 5

    .prologue
    .line 46
    const-string v0, "/mnt/sdcard"

    .line 48
    .local v0, mountPoint:Ljava/lang/String;
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->mContext:Landroid/content/Context;

    const-string v4, "storage"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 50
    .local v2, storageManager:Landroid/os/storage/StorageManager;
    const-string v3, "/mnt/sdcard2"

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, state:Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    const-string v0, "/mnt/sdcard2"

    .line 55
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v3
.end method

.method protected initButton()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/amoi/AmoiEngineerMode/auto/AutoButtonListener;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/auto/AutoButtonListener;-><init>(Landroid/app/Activity;)V

    .line 16
    .local v0, listener:Lcom/amoi/AmoiEngineerMode/auto/AutoButtonListener;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->prevButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->nextButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->exitButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 29
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/auto/FinishHandler;->exit(Landroid/app/Activity;)V

    .line 30
    return-void
.end method

.method protected showButton(I)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->prevButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 24
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 25
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->exitButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 26
    return-void
.end method
