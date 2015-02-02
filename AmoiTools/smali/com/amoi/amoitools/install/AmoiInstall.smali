.class public Lcom/amoi/amoitools/install/AmoiInstall;
.super Landroid/app/Activity;
.source "AmoiInstall.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amoi/amoitools/install/AmoiInstall$PackageInstallObserver;,
        Lcom/amoi/amoitools/install/AmoiInstall$QueryDataTask;
    }
.end annotation


# static fields
.field private static final AMOI_ADD_SHORTCUT_ACTION:Ljava/lang/String; = "android.intent.action.AMOI_ADD_SHORTCUT"

.field private static final TAG:Ljava/lang/String; = "AmoiInstall"


# instance fields
.field private final MSG_APP_LOADED:I

.field private final MSG_APP_LOADING:I

.field private final MSG_INSTALL_COMPLETE:I

.field private final MSG_NO_SDCARD:I

.field private apkListView:Landroid/widget/ListView;

.field private bt:Landroid/view/View;

.field private isSearchAllSdcard:Z

.field private mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

.field private mApkInfo:Landroid/widget/TextView;

.field private mApk_List:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amoi/amoitools/install/Apk_Item;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelAll:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mCurrent:I

.field private mHandler:Landroid/os/Handler;

.field private mIsAddShortCut:Z

.field private mIsUnmountMedia:Z

.field private mPm:Landroid/content/pm/PackageManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRootPath:Ljava/lang/String;

.field private mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectAll:Landroid/widget/Button;

.field private mSelectCount:I

.field private mSequence:I

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private pause:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    iput v2, p0, Lcom/amoi/amoitools/install/AmoiInstall;->MSG_INSTALL_COMPLETE:I

    .line 51
    const/4 v0, 0x2

    iput v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->MSG_APP_LOADED:I

    .line 52
    const/4 v0, 0x3

    iput v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->MSG_APP_LOADING:I

    .line 53
    const/4 v0, 0x4

    iput v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->MSG_NO_SDCARD:I

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mApk_List:Ljava/util/ArrayList;

    .line 64
    iput-boolean v2, p0, Lcom/amoi/amoitools/install/AmoiInstall;->isSearchAllSdcard:Z

    .line 67
    iput-boolean v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->pause:Z

    .line 69
    iput v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mCurrent:I

    .line 70
    iput v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mSelectCount:I

    .line 71
    iput v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mSequence:I

    .line 72
    iput-boolean v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mIsAddShortCut:Z

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    .line 74
    iput-boolean v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mIsUnmountMedia:Z

    .line 76
    new-instance v0, Lcom/amoi/amoitools/install/AmoiInstall$1;

    invoke-direct {v0, p0}, Lcom/amoi/amoitools/install/AmoiInstall$1;-><init>(Lcom/amoi/amoitools/install/AmoiInstall;)V

    iput-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/amoi/amoitools/install/AmoiInstall;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/amoi/amoitools/install/AmoiInstall;->installResult(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/amoi/amoitools/install/AmoiInstall;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/amoi/amoitools/install/AmoiInstall;->refreshView(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/amoi/amoitools/install/AmoiInstall;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/amoi/amoitools/install/AmoiInstall;->cancelProgressDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/amoi/amoitools/install/AmoiInstall;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/amoi/amoitools/install/AmoiInstall;->showProgressDialog(III)V

    return-void
.end method

.method static synthetic access$402(Lcom/amoi/amoitools/install/AmoiInstall;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mIsUnmountMedia:Z

    return p1
.end method

.method static synthetic access$500(Lcom/amoi/amoitools/install/AmoiInstall;)Lcom/amoi/amoitools/install/ApkListViewAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/amoi/amoitools/install/AmoiInstall;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/amoi/amoitools/install/AmoiInstall;->setListData()V

    return-void
.end method

.method static synthetic access$700(Lcom/amoi/amoitools/install/AmoiInstall;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/amoi/amoitools/install/AmoiInstall;->queryComplete()V

    return-void
.end method

.method static synthetic access$800(Lcom/amoi/amoitools/install/AmoiInstall;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addTolist(Ljava/lang/String;)V
    .locals 7
    .parameter "path"

    .prologue
    .line 585
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 586
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/amoi/amoitools/install/AmoiInstall;->checkApkFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 588
    invoke-direct {p0, v1}, Lcom/amoi/amoitools/install/AmoiInstall;->getPackageInfo(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 589
    .local v3, pkgInfo:Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_0

    .line 590
    invoke-direct {p0, v3, v1}, Lcom/amoi/amoitools/install/AmoiInstall;->getAppSnippet(Landroid/content/pm/PackageParser$Package;Ljava/io/File;)Lcom/amoi/amoitools/install/AppSnippet;

    move-result-object v0

    .line 591
    .local v0, as:Lcom/amoi/amoitools/install/AppSnippet;
    invoke-virtual {p0, v0}, Lcom/amoi/amoitools/install/AmoiInstall;->checkApkExist(Lcom/amoi/amoitools/install/AppSnippet;)I

    move-result v4

    .line 592
    .local v4, status:I
    new-instance v2, Lcom/amoi/amoitools/install/Apk_Item;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6, v4, v0}, Lcom/amoi/amoitools/install/Apk_Item;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/amoi/amoitools/install/AppSnippet;)V

    .line 594
    .local v2, item:Lcom/amoi/amoitools/install/Apk_Item;
    iget-object v5, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mApk_List:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    .end local v0           #as:Lcom/amoi/amoitools/install/AppSnippet;
    .end local v2           #item:Lcom/amoi/amoitools/install/Apk_Item;
    .end local v3           #pkgInfo:Landroid/content/pm/PackageParser$Package;
    .end local v4           #status:I
    :cond_0
    return-void
.end method

.method private cancelAllItem()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 238
    iput v2, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mSelectCount:I

    .line 239
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    invoke-virtual {v1}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    invoke-virtual {v1, v0}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->getItemSlect(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    invoke-virtual {v1, v0, v2}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->setItemSlect(IZ)V

    .line 239
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_1
    invoke-direct {p0, v2}, Lcom/amoi/amoitools/install/AmoiInstall;->refreshView(Z)V

    .line 245
    return-void
.end method

.method private cancelProgressDialog()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 409
    iput v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mSequence:I

    .line 410
    iput v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mSelectCount:I

    .line 411
    iget-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 415
    :cond_0
    return-void
.end method

.method private checkApkFile(Ljava/lang/String;)Z
    .locals 2
    .parameter "fileName"

    .prologue
    .line 601
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, extName:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 604
    const/4 v1, 0x1

    .line 606
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkInstallPackage()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 323
    const/4 v1, 0x0

    .line 324
    .local v1, i:I
    iget v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mCurrent:I

    :goto_0
    iget-object v5, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    invoke-virtual {v5}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 325
    iget-object v5, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    invoke-virtual {v5, v1}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->getApkItem(I)Lcom/amoi/amoitools/install/Apk_Item;

    move-result-object v2

    .line 326
    .local v2, item:Lcom/amoi/amoitools/install/Apk_Item;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Lcom/amoi/amoitools/install/Apk_Item;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 327
    .local v0, file:Ljava/io/File;
    invoke-virtual {v2}, Lcom/amoi/amoitools/install/Apk_Item;->getSelect()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 331
    .end local v0           #file:Ljava/io/File;
    .end local v2           #item:Lcom/amoi/amoitools/install/Apk_Item;
    :cond_0
    iget-object v5, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    invoke-virtual {v5}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 332
    iget-object v4, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v4, :cond_1

    .line 333
    const v4, 0x7f040010

    const v5, 0x7f04000d

    invoke-direct {p0, v3, v4, v5}, Lcom/amoi/amoitools/install/AmoiInstall;->showProgressDialog(III)V

    .line 336
    :cond_1
    iput v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mCurrent:I

    .line 341
    :goto_1
    return v3

    .line 324
    .restart local v0       #file:Ljava/io/File;
    .restart local v2       #item:Lcom/amoi/amoitools/install/Apk_Item;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 339
    .end local v0           #file:Ljava/io/File;
    .end local v2           #item:Lcom/amoi/amoitools/install/Apk_Item;
    :cond_3
    iput v4, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mCurrent:I

    .line 340
    invoke-direct {p0}, Lcom/amoi/amoitools/install/AmoiInstall;->cancelProgressDialog()V

    move v3, v4

    .line 341
    goto :goto_1
.end method

.method private checkList()V
    .locals 4

    .prologue
    .line 465
    iget-object v3, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    invoke-virtual {v3}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 466
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    invoke-virtual {v3}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 467
    iget-object v3, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    invoke-virtual {v3, v1}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->getApkItem(I)Lcom/amoi/amoitools/install/Apk_Item;

    move-result-object v2

    .line 468
    .local v2, item:Lcom/amoi/amoitools/install/Apk_Item;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Lcom/amoi/amoitools/install/Apk_Item;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 469
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 470
    iget-object v3, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    invoke-virtual {v3, v1}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->removeItem(I)V

    .line 471
    add-int/lit8 v1, v1, -0x1

    .line 466
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 475
    .end local v0           #file:Ljava/io/File;
    .end local v1           #i:I
    .end local v2           #item:Lcom/amoi/amoitools/install/Apk_Item;
    :cond_1
    return-void
.end method

.method private checkifAllInstalled()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 450
    iget-object v3, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    invoke-virtual {v3}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 451
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    invoke-virtual {v3}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 452
    iget-object v3, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    invoke-virtual {v3, v0}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->getApkItem(I)Lcom/amoi/amoitools/install/Apk_Item;

    move-result-object v1

    .line 453
    .local v1, item:Lcom/amoi/amoitools/install/Apk_Item;
    invoke-virtual {v1}, Lcom/amoi/amoitools/install/Apk_Item;->getStatus()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 454
    const/4 v2, 0x0

    .line 458
    .end local v0           #i:I
    .end local v1           #item:Lcom/amoi/amoitools/install/Apk_Item;
    :cond_0
    return v2

    .line 451
    .restart local v0       #i:I
    .restart local v1       #item:Lcom/amoi/amoitools/install/Apk_Item;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private findAPKFile(Ljava/io/File;)V
    .locals 6
    .parameter "file"

    .prologue
    .line 522
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 523
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 524
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_1

    array-length v5, v2

    if-lez v5, :cond_1

    .line 525
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 526
    .local v1, f:Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/amoi/amoitools/install/AmoiInstall;->findAPKFile(Ljava/io/File;)V

    .line 525
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 530
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #f:Ljava/io/File;
    .end local v2           #files:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/amoi/amoitools/install/AmoiInstall;->addTolist(Ljava/lang/String;)V

    .line 532
    :cond_1
    return-void
.end method

.method private getAppSnippet(Landroid/content/pm/PackageParser$Package;Ljava/io/File;)Lcom/amoi/amoitools/install/AppSnippet;
    .locals 12
    .parameter "pkgInfo"
    .parameter "sourceFile"

    .prologue
    .line 627
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 628
    .local v6, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 629
    .local v7, archiveFilePath:Ljava/lang/String;
    iget-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 630
    .local v10, pRes:Landroid/content/res/Resources;
    new-instance v8, Landroid/content/res/AssetManager;

    invoke-direct {v8}, Landroid/content/res/AssetManager;-><init>()V

    .line 631
    .local v8, assmgr:Landroid/content/res/AssetManager;
    invoke-virtual {v8, v7}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 632
    new-instance v11, Landroid/content/res/Resources;

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v11, v8, v0, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 635
    .local v11, res:Landroid/content/res/Resources;
    const/4 v9, 0x0

    .line 636
    .local v9, label:Ljava/lang/CharSequence;
    iget v0, v6, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v0, :cond_0

    .line 638
    :try_start_0
    iget v0, v6, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 642
    :cond_0
    :goto_0
    if-nez v9, :cond_1

    .line 643
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    iget-object v9, v6, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 647
    :cond_1
    :goto_1
    const/4 v2, 0x0

    .line 648
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    iget v0, v6, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v0, :cond_2

    .line 650
    :try_start_1
    iget v0, v6, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 654
    :cond_2
    :goto_2
    if-nez v2, :cond_3

    .line 655
    iget-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 657
    :cond_3
    new-instance v0, Lcom/amoi/amoitools/install/AppSnippet;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iget v5, p1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    invoke-direct/range {v0 .. v5}, Lcom/amoi/amoitools/install/AppSnippet;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    .line 643
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v9, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 651
    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 639
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private getPackageInfo(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;
    .locals 5
    .parameter "apkfile"

    .prologue
    .line 611
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 612
    const/4 v3, 0x0

    .line 622
    :goto_0
    return-object v3

    .line 614
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, archiveFilePath:Ljava/lang/String;
    new-instance v2, Landroid/content/pm/PackageParser;

    invoke-direct {v2, v0}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 616
    .local v2, packageParser:Landroid/content/pm/PackageParser;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 617
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 618
    const/4 v4, 0x0

    invoke-virtual {v2, p1, v0, v1, v4}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 621
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    const/4 v2, 0x0

    .line 622
    goto :goto_0
.end method

.method private getStoragePath()V
    .locals 3

    .prologue
    .line 488
    iget-boolean v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->isSearchAllSdcard:Z

    if-eqz v1, :cond_0

    .line 489
    const-string v1, "/storage"

    iput-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mRootPath:Ljava/lang/String;

    .line 511
    :goto_0
    return-void

    .line 492
    :cond_0
    const-string v1, "storage"

    invoke-virtual {p0, v1}, Lcom/amoi/amoitools/install/AmoiInstall;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 493
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mStorageManager:Landroid/os/storage/StorageManager;

    const-string v2, "/storage/sdcard1"

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, state:Ljava/lang/String;
    const-string v1, "/storage/sdcard0"

    iput-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mRootPath:Ljava/lang/String;

    .line 496
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 497
    const-string v1, "/storage/sdcard0"

    iput-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mRootPath:Ljava/lang/String;

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mRootPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/APKS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mRootPath:Ljava/lang/String;

    goto :goto_0

    .line 499
    :cond_1
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private initView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 173
    const v1, 0x7f070009

    invoke-virtual {p0, v1}, Lcom/amoi/amoitools/install/AmoiInstall;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mApkInfo:Landroid/widget/TextView;

    .line 174
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mApkInfo:Landroid/widget/TextView;

    const v2, 0x7f04000a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 175
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mApkInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    const v1, 0x7f070002

    invoke-virtual {p0, v1}, Lcom/amoi/amoitools/install/AmoiInstall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 178
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    const v1, 0x7f07000b

    invoke-virtual {p0, v1}, Lcom/amoi/amoitools/install/AmoiInstall;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mSelectAll:Landroid/widget/Button;

    .line 180
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mSelectAll:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    const v1, 0x7f07000c

    invoke-virtual {p0, v1}, Lcom/amoi/amoitools/install/AmoiInstall;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mCancelAll:Landroid/widget/Button;

    .line 182
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mCancelAll:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    const v1, 0x7f07000a

    invoke-virtual {p0, v1}, Lcom/amoi/amoitools/install/AmoiInstall;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->bt:Landroid/view/View;

    .line 185
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->bt:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 186
    const v1, 0x7f070001

    invoke-virtual {p0, v1}, Lcom/amoi/amoitools/install/AmoiInstall;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->apkListView:Landroid/widget/ListView;

    .line 187
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->apkListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 188
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->apkListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 190
    new-instance v1, Lcom/amoi/amoitools/install/ApkListViewAdapter;

    iget-object v2, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/amoi/amoitools/install/ApkListViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    .line 191
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->apkListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 192
    return-void
.end method

.method private installExStroage(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 305
    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, fileName:Ljava/lang/String;
    iput-boolean v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mIsAddShortCut:Z

    .line 308
    if-eqz v0, :cond_1

    const-string v3, "fav11"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "fav12"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "fav13"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "fav14"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "fav15"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "fav16"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "fav17"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 313
    :cond_0
    iput-boolean v2, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mIsAddShortCut:Z

    .line 316
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private installResult(I)V
    .locals 5
    .parameter "code"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 346
    iget-boolean v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mIsUnmountMedia:Z

    if-eqz v0, :cond_0

    .line 347
    iput v3, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mSelectCount:I

    .line 348
    iput v3, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mCurrent:I

    .line 349
    invoke-direct {p0}, Lcom/amoi/amoitools/install/AmoiInstall;->cancelProgressDialog()V

    .line 377
    :goto_0
    return-void

    .line 352
    :cond_0
    iget v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mCurrent:I

    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    invoke-virtual {v1}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 353
    iget-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    iget v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mCurrent:I

    invoke-virtual {v0, v1, v3}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->setItemSlect(IZ)V

    .line 354
    if-ne p1, v4, :cond_2

    .line 355
    iget-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    iget v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mCurrent:I

    invoke-virtual {v0, v1, v4}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->setItemStatus(II)V

    .line 356
    iget-boolean v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mIsAddShortCut:Z

    if-eqz v0, :cond_1

    .line 357
    iput-boolean v3, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mIsAddShortCut:Z

    .line 358
    invoke-direct {p0}, Lcom/amoi/amoitools/install/AmoiInstall;->onSendBroadcast()V

    .line 366
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/amoi/amoitools/install/AmoiInstall;->checkInstallPackage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 367
    iget v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mSequence:I

    .line 368
    invoke-direct {p0}, Lcom/amoi/amoitools/install/AmoiInstall;->onInstallPackage()V

    .line 376
    :goto_2
    invoke-direct {p0, v3}, Lcom/amoi/amoitools/install/AmoiInstall;->refreshView(Z)V

    goto :goto_0

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    iget v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mCurrent:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->setItemStatus(II)V

    goto :goto_1

    .line 370
    :cond_3
    iput v3, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mSelectCount:I

    .line 371
    iget-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/amoi/amoitools/install/AmoiInstall;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 374
    invoke-direct {p0}, Lcom/amoi/amoitools/install/AmoiInstall;->cancelAllItem()V

    goto :goto_2
.end method

.method private isSelectAll()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 261
    iget v2, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mSelectCount:I

    if-lez v2, :cond_0

    .line 262
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    invoke-virtual {v2}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 263
    iget-object v2, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    invoke-virtual {v2, v0}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->getItemStatus(I)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    invoke-virtual {v2, v0}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->getItemSlect(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 270
    .end local v0           #i:I
    :cond_0
    :goto_1
    return v1

    .line 262
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private onInstallPackage()V
    .locals 10

    .prologue
    .line 275
    iget-object v7, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    iget v8, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mCurrent:I

    invoke-virtual {v7, v8}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->getApkItem(I)Lcom/amoi/amoitools/install/Apk_Item;

    move-result-object v4

    .line 276
    .local v4, item:Lcom/amoi/amoitools/install/Apk_Item;
    invoke-virtual {v4}, Lcom/amoi/amoitools/install/Apk_Item;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, fileName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    .local v0, appFile:Ljava/io/File;
    const/4 v3, 0x0

    .line 279
    .local v3, installFlags:I
    invoke-virtual {v4}, Lcom/amoi/amoitools/install/Apk_Item;->getAppSnippet()Lcom/amoi/amoitools/install/AppSnippet;

    move-result-object v1

    .line 281
    .local v1, as:Lcom/amoi/amoitools/install/AppSnippet;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 291
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {v4}, Lcom/amoi/amoitools/install/Apk_Item;->getStatus()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    invoke-virtual {v4}, Lcom/amoi/amoitools/install/Apk_Item;->getStatus()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    .line 293
    :cond_0
    or-int/lit8 v3, v3, 0x2

    .line 296
    :cond_1
    new-instance v5, Lcom/amoi/amoitools/install/AmoiInstall$PackageInstallObserver;

    invoke-direct {v5, p0}, Lcom/amoi/amoitools/install/AmoiInstall$PackageInstallObserver;-><init>(Lcom/amoi/amoitools/install/AmoiInstall;)V

    .line 297
    .local v5, observer:Lcom/amoi/amoitools/install/AmoiInstall$PackageInstallObserver;
    const-string v7, "AmoiInstall"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "chenpx info.packageName"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/amoi/amoitools/install/AppSnippet;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v7, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mPm:Landroid/content/pm/PackageManager;

    iget-object v8, v1, Lcom/amoi/amoitools/install/AppSnippet;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v6, v5, v3, v8}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 299
    iget-object v7, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    iget v8, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mCurrent:I

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->setItemStatus(II)V

    .line 300
    iget-object v7, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mProgressDialog:Landroid/app/ProgressDialog;

    iget v8, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mSequence:I

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 301
    return-void
.end method

.method private onSendBroadcast()V
    .locals 5

    .prologue
    .line 381
    iget-object v3, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    iget v4, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mCurrent:I

    invoke-virtual {v3, v4}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->getApkItem(I)Lcom/amoi/amoitools/install/Apk_Item;

    move-result-object v2

    .line 382
    .local v2, item:Lcom/amoi/amoitools/install/Apk_Item;
    invoke-virtual {v2}, Lcom/amoi/amoitools/install/Apk_Item;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, fileName:Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 385
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.AMOI_ADD_SHORTCUT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 386
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "fileName"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    const-string v3, "packageName"

    invoke-virtual {v2}, Lcom/amoi/amoitools/install/Apk_Item;->getAppSnippet()Lcom/amoi/amoitools/install/AppSnippet;

    move-result-object v4

    iget-object v4, v4, Lcom/amoi/amoitools/install/AppSnippet;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    const-string v3, "AmoiInstall"

    const-string v4, "sendBroadcast"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {p0, v1}, Lcom/amoi/amoitools/install/AmoiInstall;->sendBroadcast(Landroid/content/Intent;)V

    .line 390
    return-void
.end method

.method private queryComplete()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 536
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mApk_List:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 537
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mApk_List:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 538
    iget-object v2, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mApk_List:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amoi/amoitools/install/Apk_Item;

    invoke-virtual {v2, v1}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->addItem(Lcom/amoi/amoitools/install/Apk_Item;)V

    .line 537
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 541
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/amoi/amoitools/install/AmoiInstall;->refreshView(Z)V

    .line 542
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 543
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 544
    return-void
.end method

.method private refreshView(Z)V
    .locals 5
    .parameter "isLoad"

    .prologue
    const v4, 0x7f040003

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 419
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    invoke-virtual {v1}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 420
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mApkInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 421
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->apkListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 422
    invoke-direct {p0}, Lcom/amoi/amoitools/install/AmoiInstall;->checkifAllInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->bt:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 434
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/amoi/amoitools/install/AmoiInstall;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mSelectCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    invoke-virtual {v2}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, title:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/amoi/amoitools/install/AmoiInstall;->setTitle(Ljava/lang/CharSequence;)V

    .line 445
    :goto_1
    return-void

    .line 425
    .end local v0           #title:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->bt:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 426
    invoke-direct {p0}, Lcom/amoi/amoitools/install/AmoiInstall;->isSelectAll()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mSelectAll:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 428
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mCancelAll:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 430
    :cond_1
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mSelectAll:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 431
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mCancelAll:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 438
    :cond_2
    invoke-virtual {p0, v4}, Lcom/amoi/amoitools/install/AmoiInstall;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 439
    .restart local v0       #title:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/amoi/amoitools/install/AmoiInstall;->setTitle(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->apkListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 441
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->bt:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 442
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mApkInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 443
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mApkInfo:Landroid/widget/TextView;

    const v2, 0x7f040006

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private registerExternalStorageListener()V
    .locals 2

    .prologue
    .line 108
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 109
    new-instance v1, Lcom/amoi/amoitools/install/AmoiInstall$2;

    invoke-direct {v1, p0}, Lcom/amoi/amoitools/install/AmoiInstall$2;-><init>(Lcom/amoi/amoitools/install/AmoiInstall;)V

    iput-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 125
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/amoi/amoitools/install/AmoiInstall;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private selecAllItem()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 249
    iput v3, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mSelectCount:I

    .line 250
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    invoke-virtual {v1}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 251
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    invoke-virtual {v1, v0}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->getItemStatus(I)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    invoke-virtual {v1, v0}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->getItemStatus(I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 253
    :cond_0
    iget v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mSelectCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mSelectCount:I

    .line 254
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->setItemSlect(IZ)V

    .line 250
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_2
    invoke-direct {p0, v3}, Lcom/amoi/amoitools/install/AmoiInstall;->refreshView(Z)V

    .line 258
    return-void
.end method

.method private setListData()V
    .locals 3

    .prologue
    .line 479
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    invoke-virtual {v1}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->clearItem()V

    .line 480
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 481
    new-instance v0, Lcom/amoi/amoitools/install/AmoiInstall$QueryDataTask;

    invoke-direct {v0, p0}, Lcom/amoi/amoitools/install/AmoiInstall$QueryDataTask;-><init>(Lcom/amoi/amoitools/install/AmoiInstall;)V

    .line 482
    .local v0, queryTask:Lcom/amoi/amoitools/install/AmoiInstall$QueryDataTask;
    const-string v1, "AmoiInstall"

    const-string v2, "queryTask"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/amoi/amoitools/install/AmoiInstall$QueryDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 484
    return-void
.end method

.method private showProgressDialog(III)V
    .locals 3
    .parameter "style"
    .parameter "message"
    .parameter "title"

    .prologue
    const/4 v2, 0x0

    .line 394
    iget-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 395
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 398
    iget-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p2}, Lcom/amoi/amoitools/install/AmoiInstall;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p3}, Lcom/amoi/amoitools/install/AmoiInstall;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 401
    iget-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 402
    iget-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mProgressDialog:Landroid/app/ProgressDialog;

    iget v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mSelectCount:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 403
    iget-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mProgressDialog:Landroid/app/ProgressDialog;

    iget v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mSequence:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 404
    iget-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 405
    return-void
.end method


# virtual methods
.method public checkApkExist(Lcom/amoi/amoitools/install/AppSnippet;)I
    .locals 5
    .parameter "as"

    .prologue
    .line 662
    const/4 v1, 0x0

    .line 666
    .local v1, pakInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v2, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Lcom/amoi/amoitools/install/AppSnippet;->packageName:Ljava/lang/String;

    const/16 v4, 0x2000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 671
    :goto_0
    if-eqz v1, :cond_1

    .line 672
    iget v2, p1, Lcom/amoi/amoitools/install/AppSnippet;->code:I

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v2, v3, :cond_0

    .line 673
    const/4 v2, 0x4

    .line 677
    :goto_1
    return v2

    .line 668
    :catch_0
    move-exception v0

    .line 669
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0

    .line 675
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    .line 677
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected getApplicationFromSD()V
    .locals 2

    .prologue
    .line 515
    invoke-direct {p0}, Lcom/amoi/amoitools/install/AmoiInstall;->getStoragePath()V

    .line 516
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mRootPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 517
    .local v0, file:Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/amoi/amoitools/install/AmoiInstall;->findAPKFile(Ljava/io/File;)V

    .line 518
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 216
    .local v0, id:I
    sparse-switch v0, :sswitch_data_0

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 218
    :sswitch_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mCurrent:I

    .line 219
    invoke-direct {p0}, Lcom/amoi/amoitools/install/AmoiInstall;->checkInstallPackage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    const/4 v1, 0x1

    iput v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mSequence:I

    .line 221
    invoke-direct {p0}, Lcom/amoi/amoitools/install/AmoiInstall;->onInstallPackage()V

    goto :goto_0

    .line 225
    :sswitch_1
    invoke-direct {p0}, Lcom/amoi/amoitools/install/AmoiInstall;->selecAllItem()V

    goto :goto_0

    .line 229
    :sswitch_2
    invoke-direct {p0}, Lcom/amoi/amoitools/install/AmoiInstall;->cancelAllItem()V

    goto :goto_0

    .line 216
    :sswitch_data_0
    .sparse-switch
        0x7f070002 -> :sswitch_0
        0x7f07000b -> :sswitch_1
        0x7f07000c -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/amoi/amoitools/install/AmoiInstall;->setContentView(I)V

    .line 137
    iput-object p0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mContext:Landroid/content/Context;

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mIsUnmountMedia:Z

    .line 139
    invoke-direct {p0}, Lcom/amoi/amoitools/install/AmoiInstall;->initView()V

    .line 140
    invoke-virtual {p0}, Lcom/amoi/amoitools/install/AmoiInstall;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mPm:Landroid/content/pm/PackageManager;

    .line 141
    invoke-direct {p0}, Lcom/amoi/amoitools/install/AmoiInstall;->registerExternalStorageListener()V

    .line 142
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/amoi/amoitools/install/AmoiInstall;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    .line 167
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 169
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "index"
    .parameter "arg3"
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
    .line 197
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amoi/amoitools/install/ViewHolder;

    .line 199
    .local v0, holder:Lcom/amoi/amoitools/install/ViewHolder;
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    invoke-virtual {v1, p3}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->getItemStatus(I)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    invoke-virtual {v1, p3}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->getItemStatus(I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 201
    :cond_0
    iget-object v1, v0, Lcom/amoi/amoitools/install/ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->toggle()V

    .line 202
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mAdapter:Lcom/amoi/amoitools/install/ApkListViewAdapter;

    iget-object v2, v0, Lcom/amoi/amoitools/install/ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, p3, v2}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->setItemSlect(IZ)V

    .line 203
    iget-object v1, v0, Lcom/amoi/amoitools/install/ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    iget v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mSelectCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mSelectCount:I

    .line 208
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/amoi/amoitools/install/AmoiInstall;->refreshView(Z)V

    .line 210
    :cond_1
    return-void

    .line 206
    :cond_2
    iget v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mSelectCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mSelectCount:I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->pause:Z

    .line 160
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 147
    iget-boolean v0, p0, Lcom/amoi/amoitools/install/AmoiInstall;->pause:Z

    if-eqz v0, :cond_0

    .line 148
    iput-boolean v1, p0, Lcom/amoi/amoitools/install/AmoiInstall;->pause:Z

    .line 149
    invoke-direct {p0}, Lcom/amoi/amoitools/install/AmoiInstall;->checkList()V

    .line 150
    invoke-direct {p0, v1}, Lcom/amoi/amoitools/install/AmoiInstall;->refreshView(Z)V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/amoi/amoitools/install/AmoiInstall;->setListData()V

    goto :goto_0
.end method

.method public queryApk()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amoi/amoitools/install/Apk_Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 547
    iget-object v5, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mApk_List:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 548
    iget-object v5, p0, Lcom/amoi/amoitools/install/AmoiInstall;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 549
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v5, "external"

    invoke-static {v5}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 550
    .local v1, uri:Landroid/net/Uri;
    const/4 v5, 0x3

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v12, "_id"

    aput-object v12, v2, v5

    const/4 v5, 0x1

    const-string v12, "_data"

    aput-object v12, v2, v5

    const/4 v5, 0x2

    const-string v12, "_size"

    aput-object v12, v2, v5

    .line 554
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "mime_type=?"

    .line 556
    .local v3, selectionMimeType:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v5

    const-string v12, "apk"

    invoke-virtual {v5, v12}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 559
    .local v9, mimeType:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    .line 560
    .local v4, selectionArgsApk:[Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 562
    .local v6, allapkFiles:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_2

    .line 563
    :cond_0
    if-eqz v6, :cond_1

    .line 564
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 566
    :cond_1
    const/4 v5, 0x0

    .line 580
    :goto_0
    return-object v5

    .line 568
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 569
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 570
    .local v10, num:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v10, :cond_3

    .line 571
    const-string v5, "_data"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 573
    .local v7, dataindex:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 574
    .local v11, path:Ljava/lang/String;
    invoke-direct {p0, v11}, Lcom/amoi/amoitools/install/AmoiInstall;->addTolist(Ljava/lang/String;)V

    .line 575
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 570
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 577
    .end local v7           #dataindex:I
    .end local v11           #path:Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_4

    .line 578
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 580
    :cond_4
    const/4 v5, 0x0

    goto :goto_0
.end method
