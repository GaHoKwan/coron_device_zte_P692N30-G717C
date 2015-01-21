.class public Lcom/mediatek/mtklogger/LogFolderListActivity;
.super Landroid/app/Activity;
.source "LogFolderListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mtklogger/LogFolderListActivity$LogFolderAdapter;,
        Lcom/mediatek/mtklogger/LogFolderListActivity$LogFileItem;
    }
.end annotation


# static fields
.field private static final CANCEL_MENU_ID:I = 0xb

.field private static final CLEAR_ALL_MENU_ID:I = 0xc

.field private static final DLG_WAITING_DELETE:I = 0x1

.field public static final EXTRA_FILTER_DUALMODEM_KEY:Ljava/lang/String; = "filterDualModemFile"

.field public static final EXTRA_FILTER_FILES_KEY:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_FILTER_FILE_PATH_KEY:Ljava/lang/String; = "filterFilePath"

.field public static final EXTRA_FROM_WHERE_KEY:Ljava/lang/String; = "fromWhere"

.field public static final EXTRA_ROOTPATH_KEY:Ljava/lang/String; = "rootpath"

.field public static final EXTRA_TAGLOG_INPUT_NAME_KEY:Ljava/lang/String; = "taglogInputName"

.field private static final FINISH_CLEAR_LOG:I = 0x1

.field public static final FROM_TAGLOG:Ljava/lang/String; = "fromTagLog"

.field private static final TAG:Ljava/lang/String; = "MTKLogger/LogFolderListActivity"


# instance fields
.field private mAdapter:Lcom/mediatek/mtklogger/LogFolderListActivity$LogFolderAdapter;

.field private mCancelButton:Landroid/widget/Button;

.field private mClearAllButton:Landroid/widget/Button;

.field private mClearLogConfirmDialog:Landroid/app/Dialog;

.field private mClearLogProgressHandler:Landroid/os/Handler;

.field private mIsClearDone:I

.field private mIsClearing:Z

.field private mIsLongClick:Z

.field private mListView:Landroid/widget/ListView;

.field private mLogFolderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/mtklogger/LogFolderListActivity$LogFileItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRootPath:Ljava/lang/String;

.field private mWaitingDeleteDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/mediatek/mtklogger/LogFolderListActivity;->EXTRA_FILTER_FILES_KEY:Landroid/util/SparseArray;

    .line 51
    sget-object v0, Lcom/mediatek/mtklogger/LogFolderListActivity;->EXTRA_FILTER_FILES_KEY:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "filterModemFile"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    sget-object v0, Lcom/mediatek/mtklogger/LogFolderListActivity;->EXTRA_FILTER_FILES_KEY:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "filterMobileFile"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    sget-object v0, Lcom/mediatek/mtklogger/LogFolderListActivity;->EXTRA_FILTER_FILES_KEY:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "filterNetworkFile"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mLogFolderList:Ljava/util/List;

    .line 70
    iput-boolean v1, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mIsLongClick:Z

    .line 73
    iput-boolean v1, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mIsClearing:Z

    .line 93
    new-instance v0, Lcom/mediatek/mtklogger/LogFolderListActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/mtklogger/LogFolderListActivity$1;-><init>(Lcom/mediatek/mtklogger/LogFolderListActivity;)V

    iput-object v0, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mClearLogProgressHandler:Landroid/os/Handler;

    .line 381
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/mtklogger/LogFolderListActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/mtklogger/LogFolderListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/mediatek/mtklogger/LogFolderListActivity;->clearAllLogs()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/mtklogger/LogFolderListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mIsClearing:Z

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/mtklogger/LogFolderListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mIsClearing:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/mtklogger/LogFolderListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mIsClearDone:I

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/mtklogger/LogFolderListActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mIsClearDone:I

    return p1
.end method

.method static synthetic access$310(Lcom/mediatek/mtklogger/LogFolderListActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mIsClearDone:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mIsClearDone:I

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/mtklogger/LogFolderListActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mLogFolderList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/mtklogger/LogFolderListActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mRootPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/mtklogger/LogFolderListActivity;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/mediatek/mtklogger/LogFolderListActivity;->clearAllLogs(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/mtklogger/LogFolderListActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mClearLogProgressHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private clearAllLogs()V
    .locals 3

    .prologue
    .line 260
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070056

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070057

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/mediatek/mtklogger/LogFolderListActivity$5;

    invoke-direct {v2, p0}, Lcom/mediatek/mtklogger/LogFolderListActivity$5;-><init>(Lcom/mediatek/mtklogger/LogFolderListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/mediatek/mtklogger/LogFolderListActivity$4;

    invoke-direct {v2, p0}, Lcom/mediatek/mtklogger/LogFolderListActivity$4;-><init>(Lcom/mediatek/mtklogger/LogFolderListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mClearLogConfirmDialog:Landroid/app/Dialog;

    .line 313
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mClearLogConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 314
    return-void
.end method

.method private clearAllLogs(Ljava/io/File;Ljava/lang/String;)V
    .locals 10
    .parameter "dir"
    .parameter "filterFilePath"

    .prologue
    .line 318
    const-string v7, "MTKLogger/LogFolderListActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "clearAllLogs() : dir="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " filterFilePath="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_1

    .line 332
    :cond_0
    return-void

    .line 323
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 324
    .local v4, filterFile:Ljava/io/File;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v1, 0x1

    .line 325
    .local v1, doFilter:Z
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 326
    .local v3, files:[Ljava/io/File;
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v2, v0, v5

    .line 327
    .local v2, file:Ljava/io/File;
    if-eqz v1, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 326
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 324
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #doFilter:Z
    .end local v2           #file:Ljava/io/File;
    .end local v3           #files:[Ljava/io/File;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 330
    .restart local v0       #arr$:[Ljava/io/File;
    .restart local v1       #doFilter:Z
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #files:[Ljava/io/File;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    :cond_3
    invoke-direct {p0, v2}, Lcom/mediatek/mtklogger/LogFolderListActivity;->clearLogs(Ljava/io/File;)V

    goto :goto_2
.end method

.method private clearLogs(Ljava/io/File;)V
    .locals 8
    .parameter "dir"

    .prologue
    .line 335
    const-string v5, "MTKLogger/LogFolderListActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dir"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 346
    :goto_0
    return-void

    .line 339
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 340
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 341
    .local v2, files:[Ljava/io/File;
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 342
    .local v1, file:Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/mediatek/mtklogger/LogFolderListActivity;->clearLogs(Ljava/io/File;)V

    .line 341
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 345
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #files:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 209
    const v0, 0x7f09001a

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/LogFolderListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mListView:Landroid/widget/ListView;

    .line 211
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/LogFolderListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mClearAllButton:Landroid/widget/Button;

    .line 212
    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/LogFolderListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mCancelButton:Landroid/widget/Button;

    .line 213
    return-void
.end method

.method private initLogItemList(Ljava/lang/String;)V
    .locals 12
    .parameter "rootPath"

    .prologue
    .line 349
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 350
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/mediatek/mtklogger/utils/Utils;->getCurrentLogPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/mtklog/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 352
    :cond_1
    const-string v5, "MTKLogger/LogFolderListActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initLogItemList() rootPath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 379
    :cond_2
    :goto_0
    return-void

    .line 356
    :cond_3
    iput-object p1, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mRootPath:Ljava/lang/String;

    .line 357
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 358
    .local v3, logType:Ljava/lang/Integer;
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->LOG_PATH_MAP:Landroid/util/SparseArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    .local v2, logRootPath:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_4

    .line 360
    iget-object v7, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mLogFolderList:Ljava/util/List;

    new-instance v8, Lcom/mediatek/mtklogger/LogFolderListActivity$LogFileItem;

    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->LOG_PATH_MAP:Landroid/util/SparseArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Lcom/mediatek/mtklogger/utils/Utils;->LOG_NAME_MAP:Landroid/util/SparseArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/mediatek/mtklogger/LogFolderListActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/mediatek/mtklogger/LogFolderListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    sget-object v6, Lcom/mediatek/mtklogger/LogFolderListActivity;->EXTRA_FILTER_FILES_KEY:Landroid/util/SparseArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v10, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v5, v9, v6}, Lcom/mediatek/mtklogger/LogFolderListActivity$LogFileItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 367
    .end local v2           #logRootPath:Ljava/io/File;
    .end local v3           #logType:Ljava/lang/Integer;
    :cond_5
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dualmdlog"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    .local v0, dualMdLogRootPath:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_6

    .line 369
    iget-object v5, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mLogFolderList:Ljava/util/List;

    new-instance v6, Lcom/mediatek/mtklogger/LogFolderListActivity$LogFileItem;

    const-string v7, "dualmdlog"

    const v8, 0x7f07000e

    invoke-virtual {p0, v8}, Lcom/mediatek/mtklogger/LogFolderListActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/mediatek/mtklogger/LogFolderListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "filterDualModemFile"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/mediatek/mtklogger/LogFolderListActivity$LogFileItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_6
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "taglog"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 375
    .local v4, taglogRootPath:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_2

    .line 376
    iget-object v5, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mLogFolderList:Ljava/util/List;

    new-instance v6, Lcom/mediatek/mtklogger/LogFolderListActivity$LogFileItem;

    const-string v7, "taglog"

    const v8, 0x7f07000f

    invoke-virtual {p0, v8}, Lcom/mediatek/mtklogger/LogFolderListActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-direct {v6, v7, v8, v9}, Lcom/mediatek/mtklogger/LogFolderListActivity$LogFileItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/mediatek/mtklogger/LogFolderListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "rootpath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/mtklogger/LogFolderListActivity;->initLogItemList(Ljava/lang/String;)V

    .line 217
    new-instance v0, Lcom/mediatek/mtklogger/LogFolderListActivity$LogFolderAdapter;

    invoke-direct {v0, p0, p0}, Lcom/mediatek/mtklogger/LogFolderListActivity$LogFolderAdapter;-><init>(Lcom/mediatek/mtklogger/LogFolderListActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mAdapter:Lcom/mediatek/mtklogger/LogFolderListActivity$LogFolderAdapter;

    .line 218
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mAdapter:Lcom/mediatek/mtklogger/LogFolderListActivity$LogFolderAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 219
    return-void
.end method

.method private removeManualButton()V
    .locals 2

    .prologue
    .line 204
    const v1, 0x7f090019

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/LogFolderListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 205
    .local v0, mainLinearLayout:Landroid/widget/LinearLayout;
    const v1, 0x7f09001b

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/LogFolderListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 206
    return-void
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mClearAllButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mClearAllButton:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/mtklogger/LogFolderListActivity$2;

    invoke-direct {v1, p0}, Lcom/mediatek/mtklogger/LogFolderListActivity$2;-><init>(Lcom/mediatek/mtklogger/LogFolderListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/mtklogger/LogFolderListActivity$3;

    invoke-direct {v1, p0}, Lcom/mediatek/mtklogger/LogFolderListActivity$3;-><init>(Lcom/mediatek/mtklogger/LogFolderListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    :cond_2
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 5

    .prologue
    .line 135
    const-string v2, "MTKLogger/LogFolderListActivity"

    const-string v3, "finish()"

    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/mediatek/mtklogger/LogFolderListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "fromWhere"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, fromWhere:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "fromTagLog"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 139
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.mediatek.log2server.EXCEPTION_HAPPEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v2, "path"

    invoke-virtual {p0}, Lcom/mediatek/mtklogger/LogFolderListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "path"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v2, "taglogInputName"

    invoke-virtual {p0}, Lcom/mediatek/mtklogger/LogFolderListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "taglogInputName"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/LogFolderListActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 146
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 147
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 105
    const-string v0, "MTKLogger/LogFolderListActivity"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/LogFolderListActivity;->setContentView(I)V

    .line 109
    sget v0, Lcom/mediatek/mtklogger/utils/Utils;->ANDROID_VERSION_NUMBER:F

    float-to-double v0, v0

    const-wide v2, 0x400ffdf3b645a1cbL

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/mediatek/mtklogger/LogFolderListActivity;->removeManualButton()V

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/mtklogger/LogFolderListActivity;->findViews()V

    .line 114
    invoke-direct {p0}, Lcom/mediatek/mtklogger/LogFolderListActivity;->initViews()V

    .line 115
    invoke-direct {p0}, Lcom/mediatek/mtklogger/LogFolderListActivity;->setListeners()V

    .line 116
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    .line 223
    if-ne p1, v3, :cond_0

    .line 224
    const v0, 0x7f07005a

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/LogFolderListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f07005b

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/LogFolderListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v3, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 229
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 151
    sget v0, Lcom/mediatek/mtklogger/utils/Utils;->ANDROID_VERSION_NUMBER:F

    float-to-double v0, v0

    const-wide v2, 0x400ffdf3b645a1cbL

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 159
    :goto_0
    return v4

    .line 154
    :cond_0
    const/16 v0, 0xb

    const v1, 0x7f070054

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/LogFolderListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v6, v0, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 156
    const/16 v0, 0xc

    const v1, 0x7f070055

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/LogFolderListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v6, v0, v5, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 120
    const-string v0, "MTKLogger/LogFolderListActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mClearLogConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mClearLogConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mClearLogConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 124
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 125
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 190
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-boolean v1, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mIsLongClick:Z

    if-eqz v1, :cond_0

    .line 191
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mIsLongClick:Z

    .line 201
    :goto_0
    return-void

    .line 194
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/mtklogger/LogFileListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "rootpath"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mRootPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mLogFolderList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mtklogger/LogFolderListActivity$LogFileItem;

    iget-object v1, v1, Lcom/mediatek/mtklogger/LogFolderListActivity$LogFileItem;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v2, "filterFilePath"

    iget-object v1, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mLogFolderList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mtklogger/LogFolderListActivity$LogFileItem;

    iget-object v1, v1, Lcom/mediatek/mtklogger/LogFolderListActivity$LogFileItem;->filterFilePath:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/LogFolderListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter
    .parameter "view"
    .parameter "i"
    .parameter "l"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, adapterview:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mtklogger/LogFolderListActivity;->mIsLongClick:Z

    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 164
    sget v0, Lcom/mediatek/mtklogger/utils/Utils;->ANDROID_VERSION_NUMBER:F

    float-to-double v0, v0

    const-wide v2, 0x400ffdf3b645a1cbL

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 165
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 177
    :goto_0
    return v0

    .line 167
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 177
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 169
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/mtklogger/LogFolderListActivity;->finish()V

    goto :goto_1

    .line 172
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/mtklogger/LogFolderListActivity;->clearAllLogs()V

    goto :goto_1

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 129
    const-string v0, "MTKLogger/LogFolderListActivity"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 131
    return-void
.end method
