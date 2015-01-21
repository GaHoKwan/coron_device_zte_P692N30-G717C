.class public Lcom/mediatek/filemanager/FileManagerSelectFileActivity;
.super Lcom/mediatek/filemanager/AbsBaseActivity;
.source "FileManagerSelectFileActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileManagerSelectFileActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mediatek/filemanager/AbsBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected initCurrentFileInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 109
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    invoke-virtual {v1}, Lcom/mediatek/filemanager/MountPointManager;->getRootPath()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, rootPath:Ljava/lang/String;
    const-string v1, "FileManagerSelectFileActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initCurrentFileInfo,rootPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 78
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/filemanager/service/FileManagerService;->isBusy(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    const-string v4, "FileManagerSelectFileActivity"

    const-string v5, "onItemClick,service is busy."

    invoke-static {v4, v5}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/filemanager/FileInfo;

    .line 84
    .local v1, selecteItemFileInfo:Lcom/mediatek/filemanager/FileInfo;
    invoke-virtual {v1}, Lcom/mediatek/filemanager/FileInfo;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 85
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 86
    .local v2, top:I
    const-string v4, "FileManagerSelectFileActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onItemClick directory top = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/filemanager/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v4, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {p0, v4, v1, v2}, Lcom/mediatek/filemanager/AbsBaseActivity;->addToNavigationList(Ljava/lang/String;Lcom/mediatek/filemanager/FileInfo;I)V

    .line 88
    invoke-virtual {v1}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/filemanager/AbsBaseActivity;->showDirectoryContent(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    .end local v2           #top:I
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Lcom/mediatek/filemanager/FileInfo;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 92
    .local v3, uri:Landroid/net/Uri;
    const-string v4, "FileManagerSelectFileActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onItemClick RESULT_OK, uri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 94
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected setMainContentView()V
    .locals 2

    .prologue
    .line 64
    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 66
    const v1, 0x7f0c0012

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 67
    .local v0, btnCancel:Landroid/widget/Button;
    new-instance v1, Lcom/mediatek/filemanager/FileManagerSelectFileActivity$1;

    invoke-direct {v1, p0}, Lcom/mediatek/filemanager/FileManagerSelectFileActivity$1;-><init>(Lcom/mediatek/filemanager/FileManagerSelectFileActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method
