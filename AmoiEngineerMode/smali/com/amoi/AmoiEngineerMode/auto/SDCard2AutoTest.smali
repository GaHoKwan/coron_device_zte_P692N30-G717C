.class public Lcom/amoi/AmoiEngineerMode/auto/SDCard2AutoTest;
.super Lcom/amoi/AmoiEngineerMode/base/SDCardBase;
.source "SDCard2AutoTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getInputStreamFromMp3()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 49
    const v1, 0x7f040003

    .line 50
    .local v1, resId:I
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/auto/SDCard2AutoTest;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 51
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    return-object v2
.end method

.method protected getStorgeState()Ljava/lang/String;
    .locals 5

    .prologue
    .line 36
    const-string v0, "/mnt/sdcard2"

    .line 37
    .local v0, mountPoint:Ljava/lang/String;
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->mContext:Landroid/content/Context;

    const-string v4, "storage"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 39
    .local v2, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v2, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, state:Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    const-string v3, "/mnt/sdcard"

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    :cond_0
    return-object v1
.end method

.method protected getStrogeDirectory()Ljava/io/File;
    .locals 5

    .prologue
    .line 55
    const-string v0, "/mnt/sdcard2"

    .line 57
    .local v0, mountPoint:Ljava/lang/String;
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->mContext:Landroid/content/Context;

    const-string v4, "storage"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 59
    .local v2, storageManager:Landroid/os/storage/StorageManager;
    const-string v3, "/mnt/sdcard2"

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, state:Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    const-string v0, "/mnt/sdcard"

    .line 64
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v3
.end method

.method protected initButton()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/amoi/AmoiEngineerMode/auto/AutoButtonListener;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/auto/AutoButtonListener;-><init>(Landroid/app/Activity;)V

    .line 19
    .local v0, listener:Lcom/amoi/AmoiEngineerMode/auto/AutoButtonListener;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->prevButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->nextButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->exitButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    return-void
.end method

.method protected isExternalStroge2()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 32
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/auto/FinishHandler;->exit(Landroid/app/Activity;)V

    .line 33
    return-void
.end method

.method protected showButton(I)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->prevButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 27
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 28
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->exitButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 29
    return-void
.end method
