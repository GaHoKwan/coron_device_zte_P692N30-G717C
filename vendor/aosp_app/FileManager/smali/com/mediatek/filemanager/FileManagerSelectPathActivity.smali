.class public Lcom/mediatek/filemanager/FileManagerSelectPathActivity;
.super Lcom/mediatek/filemanager/AbsBaseActivity;
.source "FileManagerSelectPathActivity.java"


# static fields
.field public static final DOWNLOAD_PATH_KEY:Ljava/lang/String; = "download path"

.field private static final SHOW_PATH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FileManagerSelectPathActivity"


# instance fields
.field private mBtnCreateFolder:Landroid/widget/ImageButton;

.field private mBtnSave:Landroid/widget/Button;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Lcom/mediatek/filemanager/AbsBaseActivity;-><init>()V

    .line 75
    iput-object v0, p0, Lcom/mediatek/filemanager/FileManagerSelectPathActivity;->mBtnSave:Landroid/widget/Button;

    .line 76
    iput-object v0, p0, Lcom/mediatek/filemanager/FileManagerSelectPathActivity;->mBtnCreateFolder:Landroid/widget/ImageButton;

    .line 79
    new-instance v0, Lcom/mediatek/filemanager/FileManagerSelectPathActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/filemanager/FileManagerSelectPathActivity$1;-><init>(Lcom/mediatek/filemanager/FileManagerSelectPathActivity;)V

    iput-object v0, p0, Lcom/mediatek/filemanager/FileManagerSelectPathActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/filemanager/FileManagerSelectPathActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerSelectPathActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private updateButtonsState(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 212
    const-string v0, "FileManagerSelectPathActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateButtonsState flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerSelectPathActivity;->mBtnSave:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 214
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerSelectPathActivity;->mBtnSave:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 215
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerSelectPathActivity;->mBtnCreateFolder:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 216
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerSelectPathActivity;->mBtnCreateFolder:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 217
    return-void
.end method


# virtual methods
.method protected initCurrentFileInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 150
    const-string v2, "FileManagerSelectPathActivity"

    const-string v3, "initCurrentFileInfo..."

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 152
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 153
    const-string v2, "download path"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, downloadPathKey:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 156
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    invoke-virtual {v2, v0}, Lcom/mediatek/filemanager/MountPointManager;->isRootPathMount(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    const-string v2, "FileManagerSelectPathActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initCurrentFileInfo,downloadPathKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/mediatek/filemanager/FileManagerSelectPathActivity$5;

    invoke-direct {v4, p0, v0}, Lcom/mediatek/filemanager/FileManagerSelectPathActivity$5;-><init>(Lcom/mediatek/filemanager/FileManagerSelectPathActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v0, v4}, Lcom/mediatek/filemanager/service/FileManagerService;->createFolder(Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;)V

    .line 184
    const/4 v2, 0x0

    .line 190
    .end local v0           #downloadPathKey:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    invoke-virtual {v2}, Lcom/mediatek/filemanager/MountPointManager;->getRootPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 90
    invoke-super {p0, p1}, Lcom/mediatek/filemanager/AbsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/service/FileManagerService;->isBusy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    const-string v2, "FileManagerSelectPathActivity"

    const-string v3, "onItemClick,service is busy,return."

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/filemanager/FileInfo;

    .line 227
    .local v0, selecteItemFileInfo:Lcom/mediatek/filemanager/FileInfo;
    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfo;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 228
    const-string v2, "FileManagerSelectPathActivity"

    const-string v3, "onItemClick,click file,return."

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 233
    .local v1, top:I
    const-string v2, "FileManagerSelectPathActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "top = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v1}, Lcom/mediatek/filemanager/AbsBaseActivity;->addToNavigationList(Ljava/lang/String;Lcom/mediatek/filemanager/FileInfo;I)V

    .line 235
    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/filemanager/AbsBaseActivity;->showDirectoryContent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPathChanged()V
    .locals 3

    .prologue
    .line 195
    const-string v1, "FileManagerSelectPathActivity"

    const-string v2, "onPathChanged..."

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-super {p0}, Lcom/mediatek/filemanager/AbsBaseActivity;->onPathChanged()V

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, enable:Z
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/filemanager/MountPointManager;->isRootPathMount(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    const/4 v0, 0x1

    .line 203
    :cond_0
    invoke-direct {p0, v0}, Lcom/mediatek/filemanager/FileManagerSelectPathActivity;->updateButtonsState(Z)V

    .line 204
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 140
    const-string v0, "FileManagerSelectPathActivity"

    const-string v1, "onPause..."

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/filemanager/service/FileManagerService;->setListType(ILjava/lang/String;)V

    .line 145
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 146
    return-void
.end method

.method protected serviceConnected()V
    .locals 3

    .prologue
    .line 132
    const-string v0, "FileManagerSelectPathActivity"

    const-string v1, "serviceConnected..."

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-super {p0}, Lcom/mediatek/filemanager/AbsBaseActivity;->serviceConnected()V

    .line 135
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    const/4 v1, 0x2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/filemanager/service/FileManagerService;->setListType(ILjava/lang/String;)V

    .line 136
    return-void
.end method

.method protected setMainContentView()V
    .locals 3

    .prologue
    .line 95
    const v1, 0x7f030008

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 97
    const v1, 0x7f0c0016

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/filemanager/FileManagerSelectPathActivity;->mBtnSave:Landroid/widget/Button;

    .line 98
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerSelectPathActivity;->mBtnSave:Landroid/widget/Button;

    new-instance v2, Lcom/mediatek/filemanager/FileManagerSelectPathActivity$2;

    invoke-direct {v2, p0}, Lcom/mediatek/filemanager/FileManagerSelectPathActivity$2;-><init>(Lcom/mediatek/filemanager/FileManagerSelectPathActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v1, 0x7f0c0015

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 111
    .local v0, btnCancel:Landroid/widget/Button;
    new-instance v1, Lcom/mediatek/filemanager/FileManagerSelectPathActivity$3;

    invoke-direct {v1, p0}, Lcom/mediatek/filemanager/FileManagerSelectPathActivity$3;-><init>(Lcom/mediatek/filemanager/FileManagerSelectPathActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v1, 0x7f0c0013

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/mediatek/filemanager/FileManagerSelectPathActivity;->mBtnCreateFolder:Landroid/widget/ImageButton;

    .line 122
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerSelectPathActivity;->mBtnCreateFolder:Landroid/widget/ImageButton;

    new-instance v2, Lcom/mediatek/filemanager/FileManagerSelectPathActivity$4;

    invoke-direct {v2, p0}, Lcom/mediatek/filemanager/FileManagerSelectPathActivity$4;-><init>(Lcom/mediatek/filemanager/FileManagerSelectPathActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    return-void
.end method
