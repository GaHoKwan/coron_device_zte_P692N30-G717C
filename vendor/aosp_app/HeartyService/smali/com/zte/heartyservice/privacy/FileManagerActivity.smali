.class public Lcom/zte/heartyservice/privacy/FileManagerActivity;
.super Lcom/zte/heartyservice/privacy/FilesActivity;
.source "FileManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/privacy/FileManagerActivity$FileEncryptTask;,
        Lcom/zte/heartyservice/privacy/FileManagerActivity$FileData;,
        Lcom/zte/heartyservice/privacy/FileManagerActivity$ViewHolder;,
        Lcom/zte/heartyservice/privacy/FileManagerActivity$FilePathAdapter;
    }
.end annotation


# static fields
.field private static final IMAGE_END:[Ljava/lang/String;

.field private static final MUSIC_END:[Ljava/lang/String;

.field private static final ROOT_PATHS:[Ljava/lang/String;


# instance fields
.field private mActionBarAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurDir:Ljava/io/File;

.field private mEmptyView:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;

.field private mNextDir:Ljava/io/File;

.field private mNormalActionBarLayout:Landroid/view/View;

.field private mOrderMenuButton:Landroid/widget/Button;

.field private mPathPopup:Landroid/widget/ListPopupWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 348
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".mp3"

    aput-object v1, v0, v3

    const-string v1, ".aac"

    aput-object v1, v0, v4

    const-string v1, ".ogg"

    aput-object v1, v0, v5

    const-string v1, ".wav"

    aput-object v1, v0, v6

    const-string v1, ".m4a"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, ".wma"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ".mra"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->MUSIC_END:[Ljava/lang/String;

    .line 350
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, ".jpg"

    aput-object v1, v0, v3

    const-string v1, ".png"

    aput-object v1, v0, v4

    const-string v1, ".bmp"

    aput-object v1, v0, v5

    const-string v1, ".gif"

    aput-object v1, v0, v6

    sput-object v0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->IMAGE_END:[Ljava/lang/String;

    .line 368
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "/"

    aput-object v1, v0, v3

    const-string v1, "/mnt"

    aput-object v1, v0, v4

    const-string v1, "/storage"

    aput-object v1, v0, v5

    sput-object v0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->ROOT_PATHS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/FilesActivity;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mArray:Ljava/util/ArrayList;

    .line 39
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mCurDir:Ljava/io/File;

    .line 40
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mNextDir:Ljava/io/File;

    .line 44
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mPathPopup:Landroid/widget/ListPopupWindow;

    .line 478
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/privacy/FileManagerActivity;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mActionBarAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/privacy/FileManagerActivity;Ljava/io/File;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->openDir(Ljava/io/File;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/privacy/FileManagerActivity;)Landroid/widget/ListPopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mPathPopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/privacy/FileManagerActivity;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mCurDir:Ljava/io/File;

    return-object v0
.end method

.method private createPathPopupWindow()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mPathPopup:Landroid/widget/ListPopupWindow;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Landroid/widget/ListPopupWindow;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mPathPopup:Landroid/widget/ListPopupWindow;

    .line 78
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mPathPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mOrderMenuButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mPathPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mActionBarAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mPathPopup:Landroid/widget/ListPopupWindow;

    new-instance v1, Lcom/zte/heartyservice/privacy/FileManagerActivity$1;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/privacy/FileManagerActivity$1;-><init>(Lcom/zte/heartyservice/privacy/FileManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mPathPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 92
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mPathPopup:Landroid/widget/ListPopupWindow;

    const/16 v1, 0x17c

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 93
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mPathPopup:Landroid/widget/ListPopupWindow;

    const/16 v1, -0x64

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mPathPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 96
    return-void
.end method

.method private getDefaultDir()Ljava/io/File;
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getExternalSD()Ljava/io/File;

    move-result-object v0

    .line 100
    .local v0, defaultDir:Ljava/io/File;
    if-nez v0, :cond_0

    .line 101
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getInternalSD()Ljava/io/File;

    move-result-object v0

    .line 104
    :cond_0
    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    .line 112
    :cond_1
    :goto_0
    return-object v0

    .line 107
    :cond_2
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getJustExternalSDPath()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, defaultDirPath:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 109
    new-instance v0, Ljava/io/File;

    .end local v0           #defaultDir:Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #defaultDir:Ljava/io/File;
    goto :goto_0
.end method

.method private static getIconRes(Ljava/io/File;)I
    .locals 2
    .parameter "file"

    .prologue
    .line 354
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    const v0, 0x7f0200fb

    .line 362
    :goto_0
    return v0

    .line 357
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zte/heartyservice/privacy/FileManagerActivity;->MUSIC_END:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/StringUtils;->stringEndsWith(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    const v0, 0x7f02011a

    goto :goto_0

    .line 359
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zte/heartyservice/privacy/FileManagerActivity;->IMAGE_END:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/StringUtils;->stringEndsWith(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    const v0, 0x7f02011d

    goto :goto_0

    .line 362
    :cond_2
    const v0, 0x7f02011b

    goto :goto_0
.end method

.method private getShowDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    .line 258
    if-eqz p1, :cond_0

    .line 259
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getJustInternalSDPath()Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, internalSDPath:Ljava/lang/String;
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getJustExternalSDPath()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, externalSDPath:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    const v2, 0x7f0a02f8

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 270
    .end local v0           #externalSDPath:Ljava/lang/String;
    .end local v1           #internalSDPath:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 263
    .restart local v0       #externalSDPath:Ljava/lang/String;
    .restart local v1       #internalSDPath:Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 264
    const v2, 0x7f0a02f9

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 266
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getShowPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "path"

    .prologue
    const v5, 0x7f0a02f9

    .line 234
    if-eqz p1, :cond_1

    .line 235
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getJustInternalSDPath()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, internalSDPath:Ljava/lang/String;
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getJustExternalSDPath()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, externalSDPath:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 238
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    .line 254
    .end local v0           #externalSDPath:Ljava/lang/String;
    .end local v1           #internalSDPath:Ljava/lang/String;
    .end local p1
    .local v2, path:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 246
    .end local v2           #path:Ljava/lang/String;
    .restart local v0       #externalSDPath:Ljava/lang/String;
    .restart local v1       #internalSDPath:Ljava/lang/String;
    .restart local p1
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0a02f8

    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local v0           #externalSDPath:Ljava/lang/String;
    .end local v1           #internalSDPath:Ljava/lang/String;
    :cond_1
    :goto_1
    move-object v2, p1

    .line 254
    .end local p1
    .restart local v2       #path:Ljava/lang/String;
    goto :goto_0

    .line 248
    .end local v2           #path:Ljava/lang/String;
    .restart local v0       #externalSDPath:Ljava/lang/String;
    .restart local v1       #internalSDPath:Ljava/lang/String;
    .restart local p1
    :cond_2
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method private openDir(Ljava/io/File;Z)V
    .locals 2
    .parameter "newDir"
    .parameter "forceRefresh"

    .prologue
    .line 382
    if-eqz p1, :cond_0

    .line 383
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    .line 385
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 386
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mNextDir:Ljava/io/File;

    .line 391
    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mNextDir:Ljava/io/File;

    if-nez v0, :cond_1

    .line 392
    const v0, 0x7f0a02d5

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 396
    :cond_1
    invoke-virtual {p0, p2}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->loadData(Z)V

    .line 397
    return-void

    .line 388
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mNextDir:Ljava/io/File;

    goto :goto_0
.end method

.method private upOneLevel()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 418
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mCurDir:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mCurDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mCurDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 419
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->openDir(Ljava/io/File;Z)V

    .line 429
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mCurDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getJustExternalSDPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mCurDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getJustInternalSDPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 424
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mCurDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->openDir(Ljava/io/File;Z)V

    goto :goto_0

    .line 426
    :cond_2
    const v0, 0x7f0a02e3

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected checkItem(Lcom/zte/heartyservice/common/datatype/CommonListItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 332
    return-void
.end method

.method protected checkedChanged(Landroid/view/View;ZLcom/zte/heartyservice/common/datatype/CommonListItem;)V
    .locals 2
    .parameter "view"
    .parameter "isChecked"
    .parameter "item"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mCurState:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    sget-object v1, Lcom/zte/heartyservice/privacy/FilesActivity$State;->NORMAL:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    if-ne v0, v1, :cond_0

    .line 338
    if-eqz p2, :cond_0

    .line 339
    sget-object v0, Lcom/zte/heartyservice/privacy/FilesActivity$State;->SELECTED:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->setCurState(Lcom/zte/heartyservice/privacy/FilesActivity$State;)V

    .line 342
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/zte/heartyservice/privacy/FilesActivity;->checkedChanged(Landroid/view/View;ZLcom/zte/heartyservice/common/datatype/CommonListItem;)V

    .line 343
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 344
    sget-object v0, Lcom/zte/heartyservice/privacy/FilesActivity$State;->NORMAL:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->setCurState(Lcom/zte/heartyservice/privacy/FilesActivity$State;)V

    .line 346
    :cond_1
    return-void
.end method

.method public getSavedArray(Ljava/io/File;)V
    .locals 2
    .parameter "file"

    .prologue
    .line 372
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, filePath:Ljava/lang/String;
    sget-object v1, Lcom/zte/heartyservice/privacy/FileManagerActivity;->ROOT_PATHS:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/StringUtils;->stringEquals(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 375
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->getSavedArray(Ljava/io/File;)V

    .line 376
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    .end local v0           #filePath:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public handleClickEvent(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 65
    .local v0, viewId:I
    packed-switch v0, :pswitch_data_0

    .line 70
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/FilesActivity;->handleClickEvent(Landroid/view/View;)V

    .line 73
    :goto_0
    return-void

    .line 67
    :pswitch_0
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->createPathPopupWindow()V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00e6
        :pswitch_0
    .end packed-switch
.end method

.method protected initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "title"
    .parameter "icon"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 276
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 277
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mNormalActionBarLayout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030045

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mNormalActionBarLayout:Landroid/view/View;

    .line 280
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mNormalActionBarLayout:Landroid/view/View;

    const v1, 0x7f0e00e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mOrderMenuButton:Landroid/widget/Button;

    .line 282
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mOrderMenuButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mNormalActionBarLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 285
    return-void
.end method

.method protected loadData(Z)V
    .locals 12
    .parameter "force"

    .prologue
    const/4 v11, 0x0

    .line 117
    if-nez p1, :cond_1

    .line 118
    iget-object v9, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mNextDir:Ljava/io/File;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mNextDir:Ljava/io/File;

    iget-object v10, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mCurDir:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v9, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mNextDir:Ljava/io/File;

    iput-object v9, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mCurDir:Ljava/io/File;

    .line 124
    iput-object v11, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mNextDir:Ljava/io/File;

    .line 125
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/FilesActivity;->loadData(Z)V

    .line 126
    iget-object v9, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 127
    iget-object v9, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mItems:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 129
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getJustInternalSDPath()Ljava/lang/String;

    move-result-object v6

    .line 130
    .local v6, internalSDPath:Ljava/lang/String;
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getJustExternalSDPath()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, externalSDPath:Ljava/lang/String;
    iget-object v9, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mCurDir:Ljava/io/File;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mCurDir:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mCurDir:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_3

    .line 133
    :cond_2
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->getDefaultDir()Ljava/io/File;

    move-result-object v9

    iput-object v9, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mCurDir:Ljava/io/File;

    .line 136
    :cond_3
    iget-object v9, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mCurDir:Ljava/io/File;

    if-eqz v9, :cond_7

    .line 137
    iget-object v9, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mCurDir:Ljava/io/File;

    invoke-virtual {p0, v9}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->getSavedArray(Ljava/io/File;)V

    .line 138
    iget-object v9, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mCurDir:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 139
    .local v4, fileslist:[Ljava/io/File;
    if-eqz v4, :cond_7

    .line 140
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v8, tempFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/privacy/FileManagerActivity$FileData;>;"
    move-object v0, v4

    .local v0, arr$:[Ljava/io/File;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v7, :cond_6

    aget-object v2, v0, v5

    .line 142
    .local v2, file:Ljava/io/File;
    new-instance v3, Lcom/zte/heartyservice/privacy/FileManagerActivity$FileData;

    invoke-direct {v3, p0, v11}, Lcom/zte/heartyservice/privacy/FileManagerActivity$FileData;-><init>(Lcom/zte/heartyservice/privacy/FileManagerActivity;Lcom/zte/heartyservice/privacy/FileManagerActivity$1;)V

    .line 143
    .local v3, filedata:Lcom/zte/heartyservice/privacy/FileManagerActivity$FileData;
    iput-object v2, v3, Lcom/zte/heartyservice/privacy/FileManagerActivity$FileData;->file:Ljava/io/File;

    .line 144
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/zte/heartyservice/privacy/FileManagerActivity$FileData;->name:Ljava/lang/String;

    .line 145
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 146
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 147
    iget-object v9, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mItems:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 150
    :cond_5
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 153
    .end local v2           #file:Ljava/io/File;
    .end local v3           #filedata:Lcom/zte/heartyservice/privacy/FileManagerActivity$FileData;
    :cond_6
    iget-object v9, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mItems:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 157
    .end local v0           #arr$:[Ljava/io/File;
    .end local v4           #fileslist:[Ljava/io/File;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v8           #tempFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/privacy/FileManagerActivity$FileData;>;"
    :cond_7
    if-eqz v6, :cond_8

    iget-object v9, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 158
    iget-object v9, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mArray:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 160
    :cond_8
    if-eqz v1, :cond_9

    iget-object v9, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 161
    iget-object v9, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_9
    iget-object v9, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mCurDir:Ljava/io/File;

    if-eqz v9, :cond_a

    .line 164
    iget-object v9, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mOrderMenuButton:Landroid/widget/Button;

    iget-object v10, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mCurDir:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->getShowPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :goto_3
    iget-object v9, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mActionBarAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v9}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 169
    const-wide/16 v9, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->refreshUI(J)V

    goto/16 :goto_0

    .line 166
    :cond_a
    iget-object v9, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mOrderMenuButton:Landroid/widget/Button;

    const-string v10, "no dir"

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mCurState:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    sget-object v1, Lcom/zte/heartyservice/privacy/FilesActivity$State;->SELECTED:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    if-ne v0, v1, :cond_0

    .line 402
    invoke-super {p0}, Lcom/zte/heartyservice/privacy/FilesActivity;->onBackPressed()V

    .line 415
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mCurDir:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mCurDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mCurDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getJustExternalSDPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mCurDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getJustInternalSDPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    :cond_1
    invoke-super {p0}, Lcom/zte/heartyservice/privacy/FilesActivity;->onBackPressed()V

    goto :goto_0

    .line 412
    :cond_2
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->upOneLevel()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 48
    const v0, 0x7f030043

    iput v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mLayoutRes:I

    .line 49
    iput v2, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mSubTitleRes:I

    .line 50
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/FilesActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mListView:Landroid/widget/ListView;

    .line 52
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mAdapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 55
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mEmptyView:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 58
    new-instance v0, Lcom/zte/heartyservice/privacy/FileManagerActivity$FilePathAdapter;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mArray:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v2, v1}, Lcom/zte/heartyservice/privacy/FileManagerActivity$FilePathAdapter;-><init>(Lcom/zte/heartyservice/privacy/FileManagerActivity;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mActionBarAdapter:Landroid/widget/ArrayAdapter;

    .line 59
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->openDir(Ljava/io/File;Z)V

    .line 60
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 434
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0d0012

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 436
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mMenu:Landroid/view/Menu;

    .line 438
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->refreshUI(J)V

    .line 440
    const/4 v1, 0x1

    return v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 463
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mCurState:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    sget-object v2, Lcom/zte/heartyservice/privacy/FilesActivity$State;->SELECTED:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    if-ne v1, v2, :cond_1

    .line 464
    invoke-super/range {p0 .. p5}, Lcom/zte/heartyservice/privacy/FilesActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mAdapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v1, p3}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->getItem(I)Lcom/zte/heartyservice/common/datatype/CommonListItem;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/privacy/FileManagerActivity$FileData;

    .line 467
    .local v0, item:Lcom/zte/heartyservice/privacy/FileManagerActivity$FileData;
    iget-object v1, v0, Lcom/zte/heartyservice/privacy/FileManagerActivity$FileData;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    iget-object v1, v0, Lcom/zte/heartyservice/privacy/FileManagerActivity$FileData;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 470
    iget-object v1, v0, Lcom/zte/heartyservice/privacy/FileManagerActivity$FileData;->file:Ljava/io/File;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->openDir(Ljava/io/File;Z)V

    goto :goto_0

    .line 472
    :cond_2
    iget-object v1, v0, Lcom/zte/heartyservice/privacy/FileManagerActivity$FileData;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->viewFile(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 445
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 455
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/FilesActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    .line 457
    :goto_0
    return v4

    .line 447
    :pswitch_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/common/datatype/CommonListItem;

    .local v3, sItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    move-object v0, v3

    .line 449
    check-cast v0, Lcom/zte/heartyservice/privacy/FileManagerActivity$FileData;

    .line 450
    .local v0, fileData:Lcom/zte/heartyservice/privacy/FileManagerActivity$FileData;
    iget-object v4, v0, Lcom/zte/heartyservice/privacy/FileManagerActivity$FileData;->file:Ljava/io/File;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 452
    .end local v0           #fileData:Lcom/zte/heartyservice/privacy/FileManagerActivity$FileData;
    .end local v3           #sItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    :cond_0
    sget-object v4, Lcom/zte/heartyservice/privacy/FilesActivity$FileType;->FILE:Lcom/zte/heartyservice/privacy/FilesActivity$FileType;

    invoke-virtual {p0, v2, v4}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->startEncryptTask(Ljava/util/ArrayList;Lcom/zte/heartyservice/privacy/FilesActivity$FileType;)V

    .line 457
    const/4 v4, 0x1

    goto :goto_0

    .line 445
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0414
        :pswitch_0
    .end packed-switch
.end method

.method protected startEncryptTask(Ljava/util/ArrayList;Lcom/zte/heartyservice/privacy/FilesActivity$FileType;)V
    .locals 4
    .parameter
    .parameter "fileType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lcom/zte/heartyservice/privacy/FilesActivity$FileType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 501
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v0, Lcom/zte/heartyservice/privacy/FileManagerActivity$FileEncryptTask;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/privacy/FileManagerActivity$FileEncryptTask;-><init>(Lcom/zte/heartyservice/privacy/FileManagerActivity;I)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mEncryptTask:Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;

    .line 502
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mEncryptTask:Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 504
    return-void
.end method

.method public updateViewInfo(Lcom/zte/heartyservice/common/datatype/CommonListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "listItem"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 299
    const/4 v1, 0x0

    .line 300
    .local v1, holder:Lcom/zte/heartyservice/privacy/FileManagerActivity$ViewHolder;
    if-nez p3, :cond_0

    .line 301
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030044

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 303
    new-instance v1, Lcom/zte/heartyservice/privacy/FileManagerActivity$ViewHolder;

    .end local v1           #holder:Lcom/zte/heartyservice/privacy/FileManagerActivity$ViewHolder;
    invoke-direct {v1, p0, v6}, Lcom/zte/heartyservice/privacy/FileManagerActivity$ViewHolder;-><init>(Lcom/zte/heartyservice/privacy/FileManagerActivity;Lcom/zte/heartyservice/privacy/FileManagerActivity$1;)V

    .line 304
    .restart local v1       #holder:Lcom/zte/heartyservice/privacy/FileManagerActivity$ViewHolder;
    const v3, 0x7f0e00a0

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/zte/heartyservice/privacy/FileManagerActivity$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 305
    const v3, 0x7f0e0029

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/zte/heartyservice/privacy/FileManagerActivity$ViewHolder;->textView:Landroid/widget/TextView;

    .line 306
    const v3, 0x7f0e0085

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v1, Lcom/zte/heartyservice/privacy/FileManagerActivity$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 308
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    move-object v2, p1

    .line 312
    check-cast v2, Lcom/zte/heartyservice/privacy/FileManagerActivity$FileData;

    .line 313
    .local v2, item:Lcom/zte/heartyservice/privacy/FileManagerActivity$FileData;
    iget-object v0, v2, Lcom/zte/heartyservice/privacy/FileManagerActivity$FileData;->file:Ljava/io/File;

    .line 314
    .local v0, file:Ljava/io/File;
    iget-object v3, v1, Lcom/zte/heartyservice/privacy/FileManagerActivity$ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/zte/heartyservice/privacy/FileManagerActivity$FileData;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v3, v1, Lcom/zte/heartyservice/privacy/FileManagerActivity$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->getIconRes(Ljava/io/File;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 316
    iget-object v3, v1, Lcom/zte/heartyservice/privacy/FileManagerActivity$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 317
    iget-object v3, v1, Lcom/zte/heartyservice/privacy/FileManagerActivity$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 318
    iget-object v3, v1, Lcom/zte/heartyservice/privacy/FileManagerActivity$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/zte/heartyservice/privacy/FileManagerActivity$2;

    invoke-direct {v4, p0, p1}, Lcom/zte/heartyservice/privacy/FileManagerActivity$2;-><init>(Lcom/zte/heartyservice/privacy/FileManagerActivity;Lcom/zte/heartyservice/common/datatype/CommonListItem;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 326
    return-object p3

    .line 310
    .end local v0           #file:Ljava/io/File;
    .end local v2           #item:Lcom/zte/heartyservice/privacy/FileManagerActivity$FileData;
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/zte/heartyservice/privacy/FileManagerActivity$ViewHolder;
    check-cast v1, Lcom/zte/heartyservice/privacy/FileManagerActivity$ViewHolder;

    .restart local v1       #holder:Lcom/zte/heartyservice/privacy/FileManagerActivity$ViewHolder;
    goto :goto_0
.end method
