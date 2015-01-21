.class public abstract Lcom/mediatek/filemanager/AbsBaseActivity;
.super Landroid/app/Activity;
.source "AbsBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/mediatek/filemanager/AlertDialogFragment$OnDialogDismissListener;
.implements Lcom/mediatek/filemanager/MountReceiver$MountListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/filemanager/AbsBaseActivity$SlowHorizontalScrollView;,
        Lcom/mediatek/filemanager/AbsBaseActivity$LightOperationListener;,
        Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;,
        Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;,
        Lcom/mediatek/filemanager/AbsBaseActivity$CreateFolderListener;
    }
.end annotation


# static fields
.field public static final CREATE_FOLDER_DIALOG_TAG:Ljava/lang/String; = "CreateFolderDialog"

.field protected static final DIALOG_CREATE_FOLDER:I = 0x1

.field public static final MSG_DO_EJECTED:I = 0x1

.field public static final MSG_DO_MOUNTED:I = 0x0

.field public static final MSG_DO_SDSWAP:I = 0x3

.field public static final MSG_DO_UNMOUNTED:I = 0x2

.field private static final NAV_BAR_AUTO_SCROLL_DELAY:J = 0x64L

.field private static final PREF_SHOW_HIDEN_FILE:Ljava/lang/String; = "pref_show_hiden_file"

.field public static final SAVED_PATH_KEY:Ljava/lang/String; = "saved_path"

.field private static final TAB_TET_MAX_LENGTH:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "AbsBaseActivity"


# instance fields
.field protected mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

.field protected mCurrentPath:Ljava/lang/String;

.field protected mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

.field private mHandler:Landroid/os/Handler;

.field protected mIsAlertDialogShowing:Z

.field protected mListView:Landroid/widget/ListView;

.field protected mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

.field protected mMountReceiver:Lcom/mediatek/filemanager/MountReceiver;

.field protected mNavigationBar:Lcom/mediatek/filemanager/AbsBaseActivity$SlowHorizontalScrollView;

.field protected mSavedInstanceState:Landroid/os/Bundle;

.field protected mSelectedFileInfo:Lcom/mediatek/filemanager/FileInfo;

.field protected mSelectedTop:I

.field protected mService:Lcom/mediatek/filemanager/service/FileManagerService;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field protected mSortType:I

.field protected mTabManager:Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;

.field protected mToastHelper:Lcom/mediatek/filemanager/utils/ToastHelper;

.field protected mTop:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 101
    iput-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mListView:Landroid/widget/ListView;

    .line 102
    iput-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    .line 103
    iput-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mTabManager:Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;

    .line 104
    iput-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mNavigationBar:Lcom/mediatek/filemanager/AbsBaseActivity$SlowHorizontalScrollView;

    .line 105
    iput-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mSelectedFileInfo:Lcom/mediatek/filemanager/FileInfo;

    .line 106
    iput-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    .line 107
    iput-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountReceiver:Lcom/mediatek/filemanager/MountReceiver;

    .line 109
    iput-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    .line 110
    iput v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mTop:I

    .line 111
    iput v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mSortType:I

    .line 112
    iput-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    .line 113
    iput-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mToastHelper:Lcom/mediatek/filemanager/utils/ToastHelper;

    .line 114
    iput-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    .line 116
    iput-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 117
    iput v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mSelectedTop:I

    .line 124
    iput-boolean v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mIsAlertDialogShowing:Z

    .line 135
    new-instance v0, Lcom/mediatek/filemanager/AbsBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/filemanager/AbsBaseActivity$1;-><init>(Lcom/mediatek/filemanager/AbsBaseActivity;)V

    iput-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 151
    new-instance v0, Lcom/mediatek/filemanager/AbsBaseActivity$2;

    invoke-direct {v0, p0}, Lcom/mediatek/filemanager/AbsBaseActivity$2;-><init>(Lcom/mediatek/filemanager/AbsBaseActivity;)V

    iput-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mHandler:Landroid/os/Handler;

    .line 884
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/filemanager/AbsBaseActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/AbsBaseActivity;->doOnMounted(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/filemanager/AbsBaseActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/AbsBaseActivity;->doOnEjected(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/filemanager/AbsBaseActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/AbsBaseActivity;->doOnUnMounted(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/filemanager/AbsBaseActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/mediatek/filemanager/AbsBaseActivity;->doOnSdSwap()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/filemanager/AbsBaseActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/mediatek/filemanager/AbsBaseActivity;->restoreSelectedPosition()I

    move-result v0

    return v0
.end method

.method private backToRootPath()V
    .locals 2

    .prologue
    .line 383
    const-string v0, "AbsBaseActivity"

    const-string v1, "backToRootPath..."

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/filemanager/MountPointManager;->isRootPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/filemanager/AbsBaseActivity;->showDirectoryContent(Ljava/lang/String;)V

    .line 389
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/filemanager/AbsBaseActivity;->clearNavigationList()V

    .line 390
    return-void

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mTabManager:Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mTabManager:Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->updateNavigationBar(I)V

    goto :goto_0
.end method

.method private doOnEjected(Ljava/lang/String;)V
    .locals 3
    .parameter "unMountPoint"

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/filemanager/MountPointManager;->isRootPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/filemanager/MountPointManager;->isPrimaryVolume(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    :cond_0
    const-string v0, "AbsBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEjected,Current Path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/filemanager/service/FileManagerService;->isBusy(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/filemanager/service/FileManagerService;->cancel(Ljava/lang/String;)V

    .line 235
    :cond_1
    return-void
.end method

.method private doOnMounted(Ljava/lang/String;)V
    .locals 3
    .parameter "mountPoint"

    .prologue
    .line 194
    const-string v0, "AbsBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doOnMounted,mountPoint = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/AbsBaseActivity;->doPrepareForMount(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/filemanager/MountPointManager;->isRootPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const-string v0, "AbsBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doOnMounted,mCurrentPath is root path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/filemanager/AbsBaseActivity;->showDirectoryContent(Ljava/lang/String;)V

    .line 200
    :cond_0
    return-void
.end method

.method private doOnSdSwap()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/filemanager/MountPointManager;->init(Landroid/content/Context;)V

    .line 222
    invoke-direct {p0}, Lcom/mediatek/filemanager/AbsBaseActivity;->backToRootPath()V

    .line 223
    return-void
.end method

.method private doOnUnMounted(Ljava/lang/String;)V
    .locals 7
    .parameter "unMountPoint"

    .prologue
    .line 238
    iget-object v4, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    if-eqz v4, :cond_0

    .line 239
    iget-object v4, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    invoke-virtual {v4}, Lcom/mediatek/filemanager/FileInfoManager;->getPasteCount()I

    move-result v3

    .line 240
    .local v3, pasteCnt:I
    const-string v4, "AbsBaseActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doOnUnmounted,unMountPoint: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",pasteCnt = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    if-lez v3, :cond_0

    .line 244
    iget-object v4, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    invoke-virtual {v4}, Lcom/mediatek/filemanager/FileInfoManager;->getPasteList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/filemanager/FileInfo;

    .line 245
    .local v1, fileInfo:Lcom/mediatek/filemanager/FileInfo;
    invoke-virtual {v1}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 247
    const-string v4, "AbsBaseActivity"

    const-string v5, "doOnUnmounted,clear paste list. "

    invoke-static {v4, v5}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v4, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    invoke-virtual {v4}, Lcom/mediatek/filemanager/FileInfoManager;->clearPasteList()V

    .line 249
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 254
    .end local v1           #fileInfo:Lcom/mediatek/filemanager/FileInfo;
    .end local v3           #pasteCnt:I
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    iget-object v5, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mediatek/filemanager/MountPointManager;->isRootPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 257
    :cond_1
    const-string v4, "AbsBaseActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onUnmounted,Current Path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v4, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/filemanager/service/FileManagerService;->isBusy(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 259
    iget-object v4, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/filemanager/service/FileManagerService;->cancel(Ljava/lang/String;)V

    .line 261
    :cond_2
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/AbsBaseActivity;->showToastForUnmount(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "ListDialogFragment"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Landroid/app/DialogFragment;

    .line 265
    .local v2, listFramgent:Landroid/app/DialogFragment;
    if-eqz v2, :cond_3

    .line 266
    const-string v4, "AbsBaseActivity"

    const-string v5, "onUnmounted,listFramgent dismiss. "

    invoke-static {v4, v5}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 270
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "CreateFolderDialog"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;

    .line 272
    .local v0, createFolderDialogFragment:Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;
    if-eqz v0, :cond_4

    .line 273
    const-string v4, "AbsBaseActivity"

    const-string v5, "onUnmounted,createFolderDialogFragment dismiss. "

    invoke-static {v4, v5}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 277
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/filemanager/AbsBaseActivity;->backToRootPath()V

    .line 279
    .end local v0           #createFolderDialogFragment:Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;
    .end local v2           #listFramgent:Landroid/app/DialogFragment;
    :cond_5
    return-void
.end method

.method private doPrepareForMount(Ljava/lang/String;)V
    .locals 3
    .parameter "mountPoint"

    .prologue
    .line 174
    const-string v0, "AbsBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doPrepareForMount,mountPoint = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/filemanager/MountPointManager;->isRootPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    const-string v0, "AbsBaseActivity"

    const-string v1, "pre-onMounted"

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/filemanager/service/FileManagerService;->isBusy(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/filemanager/service/FileManagerService;->cancel(Ljava/lang/String;)V

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/filemanager/MountPointManager;->init(Landroid/content/Context;)V

    .line 185
    return-void
.end method

.method private reloadContent()V
    .locals 2

    .prologue
    .line 319
    const-string v0, "AbsBaseActivity"

    const-string v1, "reloadContent"

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/filemanager/service/FileManagerService;->isBusy(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/filemanager/FileInfoManager;->isPathModified(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/filemanager/AbsBaseActivity;->showDirectoryContent(Ljava/lang/String;)V

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private restoreSelectedPosition()I
    .locals 3

    .prologue
    .line 627
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mSelectedFileInfo:Lcom/mediatek/filemanager/FileInfo;

    if-nez v1, :cond_0

    .line 628
    const/4 v0, -0x1

    .line 632
    :goto_0
    return v0

    .line 630
    :cond_0
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mSelectedFileInfo:Lcom/mediatek/filemanager/FileInfo;

    invoke-virtual {v1, v2}, Lcom/mediatek/filemanager/FileInfoAdapter;->getPosition(Lcom/mediatek/filemanager/FileInfo;)I

    move-result v0

    .line 631
    .local v0, curSelectedItemPosition:I
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mSelectedFileInfo:Lcom/mediatek/filemanager/FileInfo;

    goto :goto_0
.end method

.method private showToastForUnmount(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 393
    const-string v1, "AbsBaseActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showToastForUnmount,path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    invoke-static {}, Lcom/mediatek/filemanager/MountPointManager;->getInstance()Lcom/mediatek/filemanager/MountPointManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mediatek/filemanager/MountPointManager;->getDescriptionPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, unMountPointDescription:Ljava/lang/String;
    const-string v1, "AbsBaseActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showToastForUnmount,unMountPointDescription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mToastHelper:Lcom/mediatek/filemanager/utils/ToastHelper;

    const v2, 0x7f08003a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/filemanager/utils/ToastHelper;->showToast(Ljava/lang/String;)V

    .line 401
    .end local v0           #unMountPointDescription:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected addToNavigationList(Ljava/lang/String;Lcom/mediatek/filemanager/FileInfo;I)V
    .locals 2
    .parameter "path"
    .parameter "selectedFileInfo"
    .parameter "top"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    new-instance v1, Lcom/mediatek/filemanager/FileInfoManager$NavigationRecord;

    invoke-direct {v1, p1, p2, p3}, Lcom/mediatek/filemanager/FileInfoManager$NavigationRecord;-><init>(Ljava/lang/String;Lcom/mediatek/filemanager/FileInfo;I)V

    invoke-virtual {v0, v1}, Lcom/mediatek/filemanager/FileInfoManager;->addToNavigationList(Lcom/mediatek/filemanager/FileInfoManager$NavigationRecord;)V

    .line 411
    return-void
.end method

.method protected changePrefsShowHidenFile()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 924
    invoke-virtual {p0}, Lcom/mediatek/filemanager/AbsBaseActivity;->getPrefsShowHidenFile()Z

    move-result v1

    .line 925
    .local v1, hide:Z
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 926
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_show_hiden_file"

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 927
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 928
    return v1
.end method

.method protected clearNavigationList()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfoManager;->clearNavigationList()V

    .line 418
    return-void
.end method

.method protected getPrefsShowHidenFile()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 932
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 933
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_show_hiden_file"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method protected abstract initCurrentFileInfo()Ljava/lang/String;
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    .line 665
    const-string v2, "AbsBaseActivity"

    const-string v3, "onBackPressed"

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
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

    .line 667
    const-string v2, "AbsBaseActivity"

    const-string v3, "onBackPressed, service is busy. "

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    :goto_0
    return-void

    .line 671
    :cond_0
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    iget-object v3, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/MountPointManager;->isRootPath(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 672
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    invoke-virtual {v2}, Lcom/mediatek/filemanager/FileInfoManager;->getPrevNavigation()Lcom/mediatek/filemanager/FileInfoManager$NavigationRecord;

    move-result-object v0

    .line 673
    .local v0, navRecord:Lcom/mediatek/filemanager/FileInfoManager$NavigationRecord;
    const/4 v1, 0x0

    .line 674
    .local v1, prevPath:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 675
    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfoManager$NavigationRecord;->getRecordPath()Ljava/lang/String;

    move-result-object v1

    .line 676
    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfoManager$NavigationRecord;->getSelectedFile()Lcom/mediatek/filemanager/FileInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mSelectedFileInfo:Lcom/mediatek/filemanager/FileInfo;

    .line 677
    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfoManager$NavigationRecord;->getTop()I

    move-result v2

    iput v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mTop:I

    .line 678
    if-eqz v1, :cond_1

    .line 679
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mTabManager:Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;

    #calls: Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->showPrevNavigationView(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->access$400(Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;Ljava/lang/String;)V

    .line 680
    const-string v2, "AbsBaseActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sonBackPressed,prevPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 685
    .end local v0           #navRecord:Lcom/mediatek/filemanager/FileInfoManager$NavigationRecord;
    .end local v1           #prevPath:Ljava/lang/String;
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 617
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/filemanager/service/FileManagerService;->isBusy(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 618
    const-string v1, "AbsBaseActivity"

    const-string v2, "onClick(), service is busy."

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :goto_0
    return-void

    .line 621
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 622
    .local v0, id:I
    const-string v1, "AbsBaseActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick() id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mTabManager:Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;

    invoke-virtual {v1, v0}, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->updateNavigationBar(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 283
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 284
    invoke-static {p0}, Lcom/mediatek/filemanager/IconManager;->updateCustomDrableMap(Landroid/content/Context;)V

    .line 285
    iput-object p1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 287
    const-string v0, "AbsBaseActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    new-instance v0, Lcom/mediatek/filemanager/utils/ToastHelper;

    invoke-direct {v0, p0}, Lcom/mediatek/filemanager/utils/ToastHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mToastHelper:Lcom/mediatek/filemanager/utils/ToastHelper;

    .line 291
    invoke-static {}, Lcom/mediatek/filemanager/MountPointManager;->getInstance()Lcom/mediatek/filemanager/MountPointManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    .line 292
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/filemanager/MountPointManager;->init(Landroid/content/Context;)V

    .line 294
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 297
    invoke-virtual {p0}, Lcom/mediatek/filemanager/AbsBaseActivity;->setMainContentView()V

    .line 300
    const v0, 0x7f0c0001

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mediatek/filemanager/AbsBaseActivity$SlowHorizontalScrollView;

    iput-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mNavigationBar:Lcom/mediatek/filemanager/AbsBaseActivity$SlowHorizontalScrollView;

    .line 301
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mNavigationBar:Lcom/mediatek/filemanager/AbsBaseActivity$SlowHorizontalScrollView;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mNavigationBar:Lcom/mediatek/filemanager/AbsBaseActivity$SlowHorizontalScrollView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 303
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mNavigationBar:Lcom/mediatek/filemanager/AbsBaseActivity$SlowHorizontalScrollView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 304
    new-instance v0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;

    invoke-direct {v0, p0}, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;-><init>(Lcom/mediatek/filemanager/AbsBaseActivity;)V

    iput-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mTabManager:Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;

    .line 308
    :cond_0
    const v0, 0x7f0c000c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mListView:Landroid/widget/ListView;

    .line 309
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mListView:Landroid/widget/ListView;

    const v1, 0x7f0c000f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 311
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 312
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 314
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 316
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 370
    const-string v0, "AbsBaseActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 373
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountReceiver:Lcom/mediatek/filemanager/MountReceiver;

    invoke-virtual {v0, p0}, Lcom/mediatek/filemanager/MountReceiver;->unregisterMountListener(Lcom/mediatek/filemanager/MountReceiver$MountListener;)V

    .line 374
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountReceiver:Lcom/mediatek/filemanager/MountReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 379
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 380
    return-void

    .line 376
    :cond_0
    const-string v0, "AbsBaseActivity"

    const-string v1, "#onDestroy(),the Service hasn\'t connected yet."

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDialogDismiss()V
    .locals 2

    .prologue
    .line 131
    const-string v0, "AbsBaseActivity"

    const-string v1, "dialog dismissed..."

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mIsAlertDialogShowing:Z

    .line 133
    return-void
.end method

.method public onEjected(Ljava/lang/String;)V
    .locals 3
    .parameter "unMountPoint"

    .prologue
    .line 210
    const-string v0, "AbsBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEjected,unMountPoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 212
    return-void
.end method

.method public onMounted(Ljava/lang/String;)V
    .locals 3
    .parameter "mountPoint"

    .prologue
    .line 189
    const-string v0, "AbsBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMounted,mountPoint = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 191
    return-void
.end method

.method protected onPathChanged()V
    .locals 2

    .prologue
    .line 656
    const-string v0, "AbsBaseActivity"

    const-string v1, "onPathChanged"

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mTabManager:Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mTabManager:Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;

    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->refreshTab(Ljava/lang/String;)V

    .line 660
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 661
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 331
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 332
    const-string v0, "AbsBaseActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-static {p0}, Lcom/mediatek/filemanager/IconManager;->updateCustomDrableMap(Landroid/content/Context;)V

    .line 334
    invoke-direct {p0}, Lcom/mediatek/filemanager/AbsBaseActivity;->reloadContent()V

    .line 335
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 750
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 751
    const-string v0, "saved_path"

    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 754
    return-void
.end method

.method public onSdSwap()V
    .locals 2

    .prologue
    .line 216
    const-string v0, "AbsBaseActivity"

    const-string v1, "onSdSwap..."

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 218
    return-void
.end method

.method public onUnMounted(Ljava/lang/String;)V
    .locals 3
    .parameter "unMountPoint"

    .prologue
    .line 204
    const-string v0, "AbsBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnMounted,unMountPoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 206
    return-void
.end method

.method protected restoreDialog()V
    .locals 5

    .prologue
    .line 729
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "ListDialogFragment"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroid/app/DialogFragment;

    .line 731
    .local v1, listFramgent:Landroid/app/DialogFragment;
    if-eqz v1, :cond_0

    .line 732
    const-string v2, "AbsBaseActivity"

    const-string v3, "listFramgent != null"

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/service/FileManagerService;->isBusy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 734
    const-string v2, "AbsBaseActivity"

    const-string v3, "list reconnected mService"

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;

    invoke-direct {v4, p0}, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;-><init>(Lcom/mediatek/filemanager/AbsBaseActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/filemanager/service/FileManagerService;->reconnected(Ljava/lang/String;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;)V

    .line 741
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "CreateFolderDialog"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;

    .line 743
    .local v0, createFolderDialogFragment:Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;
    if-eqz v0, :cond_1

    .line 744
    new-instance v2, Lcom/mediatek/filemanager/AbsBaseActivity$CreateFolderListener;

    invoke-direct {v2, p0}, Lcom/mediatek/filemanager/AbsBaseActivity$CreateFolderListener;-><init>(Lcom/mediatek/filemanager/AbsBaseActivity;)V

    invoke-virtual {v0, v2}, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;->setOnEditTextDoneListener(Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$EditTextDoneListener;)V

    .line 746
    :cond_1
    return-void

    .line 737
    .end local v0           #createFolderDialogFragment:Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;
    :cond_2
    const-string v2, "AbsBaseActivity"

    const-string v3, "the list is complete dismissAllowingStateLoss"

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0
.end method

.method protected serviceConnected()V
    .locals 4

    .prologue
    .line 689
    const-string v1, "AbsBaseActivity"

    const-string v2, "serviceConnected"

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/filemanager/service/FileManagerService;->initFileInfoManager(Ljava/lang/String;)Lcom/mediatek/filemanager/FileInfoManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    .line 692
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Lcom/mediatek/filemanager/AbsBaseActivity;->getPrefsShowHidenFile()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/mediatek/filemanager/service/FileManagerService;->setListType(ILjava/lang/String;)V

    .line 695
    new-instance v1, Lcom/mediatek/filemanager/FileInfoAdapter;

    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    iget-object v3, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    invoke-direct {v1, p0, v2, v3}, Lcom/mediatek/filemanager/FileInfoAdapter;-><init>(Landroid/content/Context;Lcom/mediatek/filemanager/service/FileManagerService;Lcom/mediatek/filemanager/FileInfoManager;)V

    iput-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    .line 696
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_1

    .line 697
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 699
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-nez v1, :cond_3

    .line 700
    invoke-virtual {p0}, Lcom/mediatek/filemanager/AbsBaseActivity;->initCurrentFileInfo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    .line 701
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 702
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/mediatek/filemanager/AbsBaseActivity;->showDirectoryContent(Ljava/lang/String;)V

    .line 721
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 724
    :cond_1
    invoke-static {p0}, Lcom/mediatek/filemanager/MountReceiver;->registerMountReceiver(Landroid/content/Context;)Lcom/mediatek/filemanager/MountReceiver;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountReceiver:Lcom/mediatek/filemanager/MountReceiver;

    .line 725
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountReceiver:Lcom/mediatek/filemanager/MountReceiver;

    invoke-virtual {v1, p0}, Lcom/mediatek/filemanager/MountReceiver;->registerMountListener(Lcom/mediatek/filemanager/MountReceiver$MountListener;)V

    .line 726
    return-void

    .line 692
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 705
    :cond_3
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v2, "saved_path"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 706
    .local v0, savePath:Ljava/lang/String;
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    invoke-virtual {v2, v0}, Lcom/mediatek/filemanager/MountPointManager;->getRealMountPointPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/filemanager/MountPointManager;->isMounted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 709
    iput-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    .line 714
    :goto_2
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 715
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mTabManager:Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;

    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->refreshTab(Ljava/lang/String;)V

    .line 716
    invoke-direct {p0}, Lcom/mediatek/filemanager/AbsBaseActivity;->reloadContent()V

    .line 718
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/filemanager/AbsBaseActivity;->restoreDialog()V

    goto :goto_1

    .line 711
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/filemanager/AbsBaseActivity;->initCurrentFileInfo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    goto :goto_2
.end method

.method protected abstract setMainContentView()V
.end method

.method protected showCreateFolderDialog()V
    .locals 4

    .prologue
    .line 338
    const-string v2, "AbsBaseActivity"

    const-string v3, "showCreateFolderDialog"

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-boolean v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mIsAlertDialogShowing:Z

    if-eqz v2, :cond_0

    .line 340
    const-string v2, "AbsBaseActivity"

    const-string v3, "Another Dialog showing, return!~~"

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :goto_0
    return-void

    .line 343
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mIsAlertDialogShowing:Z

    .line 344
    new-instance v0, Lcom/mediatek/filemanager/AlertDialogFragment$EditDialogFragmentBuilder;

    invoke-direct {v0}, Lcom/mediatek/filemanager/AlertDialogFragment$EditDialogFragmentBuilder;-><init>()V

    .line 345
    .local v0, builder:Lcom/mediatek/filemanager/AlertDialogFragment$EditDialogFragmentBuilder;
    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/filemanager/AlertDialogFragment$EditDialogFragmentBuilder;->setDefault(Ljava/lang/String;I)Lcom/mediatek/filemanager/AlertDialogFragment$EditDialogFragmentBuilder;

    move-result-object v2

    const v3, 0x7f08001b

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->setDoneTitle(I)Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v2

    const v3, 0x7f080019

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->setCancelTitle(I)Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v2

    const v3, 0x7f080009

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->setTitle(I)Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;

    .line 347
    invoke-virtual {v0}, Lcom/mediatek/filemanager/AlertDialogFragment$EditDialogFragmentBuilder;->create()Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;

    move-result-object v1

    .line 348
    .local v1, createFolderDialogFragment:Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;
    new-instance v2, Lcom/mediatek/filemanager/AbsBaseActivity$CreateFolderListener;

    invoke-direct {v2, p0}, Lcom/mediatek/filemanager/AbsBaseActivity$CreateFolderListener;-><init>(Lcom/mediatek/filemanager/AbsBaseActivity;)V

    invoke-virtual {v1, v2}, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;->setOnEditTextDoneListener(Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$EditTextDoneListener;)V

    .line 349
    invoke-virtual {v1, p0}, Lcom/mediatek/filemanager/AlertDialogFragment;->setOnDialogDismissListener(Lcom/mediatek/filemanager/AlertDialogFragment$OnDialogDismissListener;)V

    .line 350
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "CreateFolderDialog"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected showDirectoryContent(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 644
    const-string v0, "AbsBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDirectoryContent,path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 646
    const-string v0, "AbsBaseActivity"

    const-string v1, "showDirectoryContent,isFinishing: true, do not loading again"

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    iput-object p1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    .line 650
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    new-instance v3, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;

    invoke-direct {v3, p0}, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;-><init>(Lcom/mediatek/filemanager/AbsBaseActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/filemanager/service/FileManagerService;->listFiles(Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;)V

    goto :goto_0
.end method
