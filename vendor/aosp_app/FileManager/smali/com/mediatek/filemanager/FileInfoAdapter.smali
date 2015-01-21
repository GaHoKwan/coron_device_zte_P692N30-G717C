.class public Lcom/mediatek/filemanager/FileInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "FileInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/filemanager/FileInfoAdapter$FileViewHolder;
    }
.end annotation


# static fields
.field private static final CUT_ICON_ALPHA:F = 0.6f

.field private static final DEFAULT_ICON_ALPHA:F = 1.0f

.field private static final DEFAULT_PRIMARY_TEXT_COLOR:I = -0x1000000

.field private static final DEFAULT_SECONDARY_SIZE_TEXT_COLOR:I = -0xbebebf

.field private static final HIDE_ICON_ALPHA:F = 0.3f

.field public static final MODE_EDIT:I = 0x1

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_SEARCH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FileInfoAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mFileInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/filemanager/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mMode:I

.field private final mResources:Landroid/content/res/Resources;

.field mService:Lcom/mediatek/filemanager/service/FileManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/filemanager/service/FileManagerService;Lcom/mediatek/filemanager/FileInfoManager;)V
    .locals 1
    .parameter "context"
    .parameter "fileManagerService"
    .parameter "fileInfoManager"

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/filemanager/FileInfoAdapter;->mMode:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/filemanager/FileInfoAdapter;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    .line 90
    iput-object p1, p0, Lcom/mediatek/filemanager/FileInfoAdapter;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/filemanager/FileInfoAdapter;->mResources:Landroid/content/res/Resources;

    .line 92
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/filemanager/FileInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 93
    iput-object p2, p0, Lcom/mediatek/filemanager/FileInfoAdapter;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    .line 94
    iput-object p3, p0, Lcom/mediatek/filemanager/FileInfoAdapter;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    .line 95
    invoke-virtual {p3}, Lcom/mediatek/filemanager/FileInfoManager;->getShowFileList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/filemanager/FileInfoAdapter;->mFileInfoList:Ljava/util/List;

    .line 96
    return-void
.end method

.method private clearChecked()V
    .locals 3

    .prologue
    .line 213
    iget-object v2, p0, Lcom/mediatek/filemanager/FileInfoAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/filemanager/FileInfo;

    .line 214
    .local v0, fileInfo:Lcom/mediatek/filemanager/FileInfo;
    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfo;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mediatek/filemanager/FileInfo;->setChecked(Z)V

    goto :goto_0

    .line 218
    .end local v0           #fileInfo:Lcom/mediatek/filemanager/FileInfo;
    :cond_1
    return-void
.end method

.method private setIcon(Lcom/mediatek/filemanager/FileInfoAdapter$FileViewHolder;Lcom/mediatek/filemanager/FileInfo;)V
    .locals 4
    .parameter "viewHolder"
    .parameter "fileInfo"

    .prologue
    .line 351
    invoke-static {}, Lcom/mediatek/filemanager/IconManager;->getInstance()Lcom/mediatek/filemanager/IconManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/filemanager/FileInfoAdapter;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/mediatek/filemanager/FileInfoAdapter;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {v1, v2, p2, v3}, Lcom/mediatek/filemanager/IconManager;->getIcon(Landroid/content/res/Resources;Lcom/mediatek/filemanager/FileInfo;Lcom/mediatek/filemanager/service/FileManagerService;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 353
    .local v0, icon:Landroid/graphics/Bitmap;
    iget-object v1, p1, Lcom/mediatek/filemanager/FileInfoAdapter$FileViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 354
    iget-object v1, p1, Lcom/mediatek/filemanager/FileInfoAdapter$FileViewHolder;->mIcon:Landroid/widget/ImageView;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 355
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/mediatek/filemanager/FileInfoAdapter;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    invoke-virtual {v2}, Lcom/mediatek/filemanager/FileInfoManager;->getPasteType()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 356
    iget-object v1, p0, Lcom/mediatek/filemanager/FileInfoAdapter;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    invoke-virtual {v1, p2}, Lcom/mediatek/filemanager/FileInfoManager;->isPasteItem(Lcom/mediatek/filemanager/FileInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p1, Lcom/mediatek/filemanager/FileInfoAdapter$FileViewHolder;->mIcon:Landroid/widget/ImageView;

    const v2, 0x3f19999a

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 360
    :cond_0
    invoke-virtual {p2}, Lcom/mediatek/filemanager/FileInfo;->isHideFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    iget-object v1, p1, Lcom/mediatek/filemanager/FileInfoAdapter$FileViewHolder;->mIcon:Landroid/widget/ImageView;

    const v2, 0x3e99999a

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 363
    :cond_1
    return-void
.end method

.method private setSearchSizeText(Landroid/widget/TextView;Lcom/mediatek/filemanager/FileInfo;)V
    .locals 1
    .parameter "textView"
    .parameter "fileInfo"

    .prologue
    .line 314
    invoke-virtual {p2}, Lcom/mediatek/filemanager/FileInfo;->getShowParentPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 316
    return-void
.end method

.method private setSizeText(Landroid/widget/TextView;Lcom/mediatek/filemanager/FileInfo;)V
    .locals 11
    .parameter "textView"
    .parameter "fileInfo"

    .prologue
    const/4 v10, 0x0

    .line 319
    invoke-virtual {p2}, Lcom/mediatek/filemanager/FileInfo;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 320
    invoke-static {}, Lcom/mediatek/filemanager/MountPointManager;->getInstance()Lcom/mediatek/filemanager/MountPointManager;

    move-result-object v7

    invoke-virtual {p2}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mediatek/filemanager/MountPointManager;->isMountPoint(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Lcom/mediatek/filemanager/FileInfo;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0

    .line 323
    .local v0, freeSpace:J
    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/FileUtils;->sizeToString(J)Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, freeSpaceString:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/mediatek/filemanager/FileInfo;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v4

    .line 325
    .local v4, totalSpace:J
    invoke-static {v4, v5}, Lcom/mediatek/filemanager/utils/FileUtils;->sizeToString(J)Ljava/lang/String;

    move-result-object v6

    .line 326
    .local v6, totalSpaces:Ljava/lang/String;
    const-string v7, "FileInfoAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSizeText, file name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Lcom/mediatek/filemanager/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",file path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v7, "FileInfoAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSizeText, freeSpace = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",totalSpace = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v7, p0, Lcom/mediatek/filemanager/FileInfoAdapter;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f080029

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    iget-object v7, p0, Lcom/mediatek/filemanager/FileInfoAdapter;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f08002a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 348
    .end local v0           #freeSpace:J
    .end local v2           #freeSpaceString:Ljava/lang/String;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    .end local v4           #totalSpace:J
    .end local v6           #totalSpaces:Ljava/lang/String;
    :goto_0
    return-void

    .line 339
    :cond_0
    const/16 v7, 0x8

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 342
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .restart local v3       #sb:Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/mediatek/filemanager/FileInfoAdapter;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f080011

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {p2}, Lcom/mediatek/filemanager/FileInfo;->getFileSizeStr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public changeMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 227
    const-string v0, "FileInfoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeMode, mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    packed-switch p1, :pswitch_data_0

    .line 238
    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/mediatek/filemanager/FileInfoAdapter;->mMode:I

    .line 239
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 240
    return-void

    .line 230
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/filemanager/FileInfoAdapter;->clearChecked()V

    goto :goto_0

    .line 233
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfoAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getCheckedFileInfoItemsList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/filemanager/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v1, fileInfoCheckedList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/filemanager/FileInfo;>;"
    iget-object v3, p0, Lcom/mediatek/filemanager/FileInfoAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/filemanager/FileInfo;

    .line 156
    .local v0, fileInfo:Lcom/mediatek/filemanager/FileInfo;
    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfo;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    .end local v0           #fileInfo:Lcom/mediatek/filemanager/FileInfo;
    :cond_1
    return-object v1
.end method

.method public getCheckedItemsCount()I
    .locals 4

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, count:I
    iget-object v3, p0, Lcom/mediatek/filemanager/FileInfoAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/filemanager/FileInfo;

    .line 141
    .local v1, fileInfo:Lcom/mediatek/filemanager/FileInfo;
    invoke-virtual {v1}, Lcom/mediatek/filemanager/FileInfo;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    .end local v1           #fileInfo:Lcom/mediatek/filemanager/FileInfo;
    :cond_1
    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfoAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFirstCheckedFileInfoItem()Lcom/mediatek/filemanager/FileInfo;
    .locals 3

    .prologue
    .line 169
    iget-object v2, p0, Lcom/mediatek/filemanager/FileInfoAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/filemanager/FileInfo;

    .line 170
    .local v0, fileInfo:Lcom/mediatek/filemanager/FileInfo;
    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfo;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    .end local v0           #fileInfo:Lcom/mediatek/filemanager/FileInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/mediatek/filemanager/FileInfo;
    .locals 1
    .parameter "pos"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfoAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/filemanager/FileInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/mediatek/filemanager/FileInfoAdapter;->getItem(I)Lcom/mediatek/filemanager/FileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 206
    int-to-long v0, p1

    return-wide v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/mediatek/filemanager/FileInfoAdapter;->mMode:I

    return v0
.end method

.method public getPosition(Lcom/mediatek/filemanager/FileInfo;)I
    .locals 1
    .parameter "fileInfo"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfoAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "pos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 271
    const-string v3, "FileInfoAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getView, pos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/filemanager/FileInfoAdapter;->mMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    move-object v1, p2

    .line 275
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_0

    .line 276
    iget-object v3, p0, Lcom/mediatek/filemanager/FileInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030002

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 277
    new-instance v2, Lcom/mediatek/filemanager/FileInfoAdapter$FileViewHolder;

    const v3, 0x7f0c0005

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0c0006

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0c0004

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-direct {v2, v3, v4, v5}, Lcom/mediatek/filemanager/FileInfoAdapter$FileViewHolder;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 280
    .local v2, viewHolder:Lcom/mediatek/filemanager/FileInfoAdapter$FileViewHolder;
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 286
    :goto_0
    iget-object v3, p0, Lcom/mediatek/filemanager/FileInfoAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/filemanager/FileInfo;

    .line 287
    .local v0, currentItem:Lcom/mediatek/filemanager/FileInfo;
    iget-object v3, v2, Lcom/mediatek/filemanager/FileInfoAdapter$FileViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfo;->getShowName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v3, v2, Lcom/mediatek/filemanager/FileInfoAdapter$FileViewHolder;->mName:Landroid/widget/TextView;

    const/high16 v4, -0x100

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 289
    iget-object v3, v2, Lcom/mediatek/filemanager/FileInfoAdapter$FileViewHolder;->mSize:Landroid/widget/TextView;

    const v4, -0xbebebf

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 290
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 292
    iget v3, p0, Lcom/mediatek/filemanager/FileInfoAdapter;->mMode:I

    packed-switch v3, :pswitch_data_0

    .line 308
    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/mediatek/filemanager/FileInfoAdapter;->setIcon(Lcom/mediatek/filemanager/FileInfoAdapter$FileViewHolder;Lcom/mediatek/filemanager/FileInfo;)V

    .line 310
    return-object v1

    .line 283
    .end local v0           #currentItem:Lcom/mediatek/filemanager/FileInfo;
    .end local v2           #viewHolder:Lcom/mediatek/filemanager/FileInfoAdapter$FileViewHolder;
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/filemanager/FileInfoAdapter$FileViewHolder;

    .restart local v2       #viewHolder:Lcom/mediatek/filemanager/FileInfoAdapter$FileViewHolder;
    goto :goto_0

    .line 294
    .restart local v0       #currentItem:Lcom/mediatek/filemanager/FileInfo;
    :pswitch_0
    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfo;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 295
    iget-object v3, p0, Lcom/mediatek/filemanager/FileInfoAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/filemanager/utils/ThemeUtils;->getThemeColor(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 297
    :cond_1
    iget-object v3, v2, Lcom/mediatek/filemanager/FileInfoAdapter$FileViewHolder;->mSize:Landroid/widget/TextView;

    invoke-direct {p0, v3, v0}, Lcom/mediatek/filemanager/FileInfoAdapter;->setSizeText(Landroid/widget/TextView;Lcom/mediatek/filemanager/FileInfo;)V

    goto :goto_1

    .line 300
    :pswitch_1
    iget-object v3, v2, Lcom/mediatek/filemanager/FileInfoAdapter$FileViewHolder;->mSize:Landroid/widget/TextView;

    invoke-direct {p0, v3, v0}, Lcom/mediatek/filemanager/FileInfoAdapter;->setSizeText(Landroid/widget/TextView;Lcom/mediatek/filemanager/FileInfo;)V

    goto :goto_1

    .line 303
    :pswitch_2
    iget-object v3, v2, Lcom/mediatek/filemanager/FileInfoAdapter$FileViewHolder;->mSize:Landroid/widget/TextView;

    invoke-direct {p0, v3, v0}, Lcom/mediatek/filemanager/FileInfoAdapter;->setSearchSizeText(Landroid/widget/TextView;Lcom/mediatek/filemanager/FileInfo;)V

    goto :goto_1

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isMode(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 258
    iget v0, p0, Lcom/mediatek/filemanager/FileInfoAdapter;->mMode:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAllItemChecked(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    .line 127
    iget-object v2, p0, Lcom/mediatek/filemanager/FileInfoAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/filemanager/FileInfo;

    .line 128
    .local v1, info:Lcom/mediatek/filemanager/FileInfo;
    invoke-virtual {v1, p1}, Lcom/mediatek/filemanager/FileInfo;->setChecked(Z)V

    goto :goto_0

    .line 130
    .end local v1           #info:Lcom/mediatek/filemanager/FileInfo;
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 131
    return-void
.end method

.method public setChecked(IZ)V
    .locals 2
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 115
    iget-object v1, p0, Lcom/mediatek/filemanager/FileInfoAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/filemanager/FileInfo;

    .line 116
    .local v0, checkInfo:Lcom/mediatek/filemanager/FileInfo;
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0, p2}, Lcom/mediatek/filemanager/FileInfo;->setChecked(Z)V

    .line 119
    :cond_0
    return-void
.end method
