.class public Lcom/zte/heartyservice/privacy/ImageVideoActivity;
.super Lcom/zte/heartyservice/privacy/FilesActivity;
.source "ImageVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;,
        Lcom/zte/heartyservice/privacy/ImageVideoActivity$Item;,
        Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;
    }
.end annotation


# static fields
.field public static final REQUEST_CODE_TAKE_PICTURE:I = 0xb

.field public static final REQUEST_CODE_TAKE_VIDEO:I = 0xd


# instance fields
.field private mCurrentPhotoFile:Ljava/io/File;

.field private mCurrentVideoFile:Ljava/io/File;

.field private mGridView:Landroid/widget/GridView;

.field private mPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

.field private mReadBitMapTask:Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/FilesActivity;-><init>()V

    .line 39
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mReadBitMapTask:Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;

    .line 391
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/privacy/ImageVideoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->doWhenSelectPhotoVideo()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/privacy/ImageVideoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->doWhenStartCamera()V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/privacy/ImageVideoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->doWhenStartVideo()V

    return-void
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/privacy/ImageVideoActivity;)Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mReadBitMapTask:Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;

    return-object v0
.end method

.method static synthetic access$602(Lcom/zte/heartyservice/privacy/ImageVideoActivity;Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;)Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mReadBitMapTask:Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;

    return-object p1
.end method

.method private doWhenSelectPhotoVideo()V
    .locals 2

    .prologue
    .line 159
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 160
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->startActivity(Landroid/content/Intent;)V

    .line 162
    return-void
.end method

.method private doWhenStartCamera()V
    .locals 5

    .prologue
    .line 165
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 166
    .local v1, intent:Landroid/content/Intent;
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->getPhotoDir()Ljava/io/File;

    move-result-object v2

    .line 167
    .local v2, photoDir:Ljava/io/File;
    if-nez v2, :cond_0

    .line 180
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 170
    new-instance v3, Ljava/io/File;

    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->getPhotoFileName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mCurrentPhotoFile:Ljava/io/File;

    .line 171
    const-string v3, "output"

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mCurrentPhotoFile:Ljava/io/File;

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 174
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->setOutIntent(Landroid/content/Intent;)V

    .line 176
    const/16 v3, 0xb

    :try_start_0
    invoke-virtual {p0, v1, v3}, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Ljava/lang/Exception;
    const v3, 0x7f0a066d

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private doWhenStartVideo()V
    .locals 5

    .prologue
    .line 183
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.media.action.VIDEO_CAPTURE"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 184
    .local v1, intent:Landroid/content/Intent;
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->getPhotoDir()Ljava/io/File;

    move-result-object v2

    .line 185
    .local v2, photoDir:Ljava/io/File;
    if-nez v2, :cond_0

    .line 198
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 188
    new-instance v3, Ljava/io/File;

    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->getVideoFileName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mCurrentVideoFile:Ljava/io/File;

    .line 189
    const-string v3, "output"

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mCurrentVideoFile:Ljava/io/File;

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 192
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->setOutIntent(Landroid/content/Intent;)V

    .line 194
    const/16 v3, 0xd

    :try_start_0
    invoke-virtual {p0, v1, v3}, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/Exception;
    const v3, 0x7f0a066d

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private getPhotoDir()Ljava/io/File;
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getCameraPath()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, cameraPath:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 52
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPhotoFileName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 201
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 202
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 203
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMG_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getVideoFileName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 207
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 208
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 209
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VID_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".3gp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public handleClickEvent(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 71
    .local v0, viewId:I
    packed-switch v0, :pswitch_data_0

    .line 85
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/FilesActivity;->handleClickEvent(Landroid/view/View;)V

    .line 86
    :goto_0
    return-void

    .line 73
    :pswitch_0
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->doWhenSelectPhotoVideo()V

    goto :goto_0

    .line 76
    :pswitch_1
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->doWhenStartCamera()V

    goto :goto_0

    .line 79
    :pswitch_2
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->doWhenStartVideo()V

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e02f7
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected loadData(Z)V
    .locals 8
    .parameter "force"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 306
    if-nez p1, :cond_1

    .line 307
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isNeedRefreshGrid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 355
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-static {v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setNeedRefreshGrid(Z)V

    .line 313
    :cond_1
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/FilesActivity;->loadData(Z)V

    .line 314
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mReadBitMapTask:Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;

    if-eqz v2, :cond_2

    .line 315
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mReadBitMapTask:Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;

    invoke-virtual {v2, v4}, Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;->cancel(Z)Z

    .line 316
    iput-object v5, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mReadBitMapTask:Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;

    .line 319
    :cond_2
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 320
    const/4 v0, 0x0

    .line 322
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getRecordsInFolder(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 326
    :cond_3
    new-instance v1, Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;-><init>(Lcom/zte/heartyservice/privacy/ImageVideoActivity;Lcom/zte/heartyservice/privacy/ImageVideoActivity$1;)V

    .line 327
    .local v1, item:Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;->id:I

    .line 328
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;->name:Ljava/lang/String;

    .line 329
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;->op:Ljava/lang/String;

    .line 330
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;->nn:Ljava/lang/String;

    .line 331
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;->ot:J

    .line 332
    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;->hs:I

    .line 333
    const/4 v2, 0x7

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;->tp:I

    .line 334
    const/16 v2, 0x8

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;->randomKeyStr:Ljava/lang/String;

    .line 336
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 339
    .end local v1           #item:Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;
    :cond_4
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 340
    new-instance v2, Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;-><init>(Lcom/zte/heartyservice/privacy/ImageVideoActivity;Lcom/zte/heartyservice/privacy/ImageVideoActivity$1;)V

    iput-object v2, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mReadBitMapTask:Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;

    .line 341
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mReadBitMapTask:Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/List;

    const/4 v5, 0x0

    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mItems:Ljava/util/List;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :cond_5
    if-eqz v0, :cond_6

    .line 349
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 353
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_6
    :goto_1
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->refreshUI(J)V

    goto/16 :goto_0

    .line 345
    .restart local v0       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v2

    .line 348
    if-eqz v0, :cond_6

    .line 349
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 348
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_7

    .line 349
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, -0x1

    .line 213
    invoke-super {p0, p1, p2, p3}, Lcom/zte/heartyservice/privacy/FilesActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 215
    packed-switch p1, :pswitch_data_0

    .line 236
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 217
    :pswitch_1
    if-ne p2, v1, :cond_0

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mCurrentPhotoFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v1, Lcom/zte/heartyservice/privacy/FilesActivity$FileType;->IMAGE:Lcom/zte/heartyservice/privacy/FilesActivity$FileType;

    invoke-virtual {p0, v0, v1}, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->startEncryptTask(Ljava/util/ArrayList;Lcom/zte/heartyservice/privacy/FilesActivity$FileType;)V

    goto :goto_0

    .line 225
    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    :pswitch_2
    if-ne p2, v1, :cond_0

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .restart local v0       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mCurrentVideoFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v1, Lcom/zte/heartyservice/privacy/FilesActivity$FileType;->VIDEO:Lcom/zte/heartyservice/privacy/FilesActivity$FileType;

    invoke-virtual {p0, v0, v1}, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->startEncryptTask(Ljava/util/ArrayList;Lcom/zte/heartyservice/privacy/FilesActivity$FileType;)V

    goto :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 90
    new-instance v3, Lcom/zte/heartyservice/privacy/ImageVideoActivity$1;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/privacy/ImageVideoActivity$1;-><init>(Lcom/zte/heartyservice/privacy/ImageVideoActivity;)V

    iput-object v3, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mEmptyListOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 112
    const v3, 0x7f0300c8

    iput v3, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mLayoutRes:I

    .line 113
    const v3, 0x7f0a02fc

    iput v3, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mTitleRes:I

    .line 114
    const v3, 0x7f070044

    iput v3, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mBtnListRes:I

    .line 115
    const v3, 0x7f0a0520

    iput v3, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mNoItemRes:I

    .line 116
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/FilesActivity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    if-eqz p1, :cond_1

    .line 119
    const-string v3, "photo"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, photoFilePath:Ljava/lang/String;
    const-string v3, "video"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, videoFilePath:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 122
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mCurrentPhotoFile:Ljava/io/File;

    .line 124
    :cond_0
    if-eqz v2, :cond_1

    .line 125
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mCurrentVideoFile:Ljava/io/File;

    .line 129
    .end local v1           #photoFilePath:Ljava/lang/String;
    .end local v2           #videoFilePath:Ljava/lang/String;
    :cond_1
    const v3, 0x7f0e02f7

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 130
    .local v0, btn:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v3, 0x7f0e02f8

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 132
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v3, 0x7f0e02f9

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 134
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v3, 0x7f0e02f5

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mGridView:Landroid/widget/GridView;

    .line 137
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mGridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mAdapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 139
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 140
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->loadData(Z)V

    .line 141
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mReadBitMapTask:Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mReadBitMapTask:Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;->cancel(Z)Z

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mReadBitMapTask:Lcom/zte/heartyservice/privacy/ImageVideoActivity$ReadBitMapTask;

    .line 155
    :cond_0
    invoke-super {p0}, Lcom/zte/heartyservice/privacy/FilesActivity;->onDestroy()V

    .line 156
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 367
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 385
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/FilesActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 388
    :goto_0
    return v0

    .line 378
    :sswitch_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mSelectedList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->startDecryptTask(Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    .line 388
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 382
    :sswitch_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mSelectedList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->doWhenDelete(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 367
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e040c -> :sswitch_1
        0x7f0e0413 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Lcom/zte/heartyservice/privacy/FilesActivity;->onResume()V

    .line 146
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->check(I)V

    .line 147
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/FilesActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 60
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mCurrentPhotoFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "photo"

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mCurrentPhotoFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mCurrentVideoFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 64
    const-string v0, "video"

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mCurrentVideoFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_1
    return-void
.end method

.method public updateViewInfo(Lcom/zte/heartyservice/common/datatype/CommonListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "listItem"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, item:Lcom/zte/heartyservice/privacy/ImageVideoActivity$Item;
    if-nez p3, :cond_1

    .line 251
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030060

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 253
    new-instance v0, Lcom/zte/heartyservice/privacy/ImageVideoActivity$Item;

    .end local v0           #item:Lcom/zte/heartyservice/privacy/ImageVideoActivity$Item;
    invoke-direct {v0, p0, v4}, Lcom/zte/heartyservice/privacy/ImageVideoActivity$Item;-><init>(Lcom/zte/heartyservice/privacy/ImageVideoActivity;Lcom/zte/heartyservice/privacy/ImageVideoActivity$1;)V

    .line 254
    .restart local v0       #item:Lcom/zte/heartyservice/privacy/ImageVideoActivity$Item;
    const v2, 0x7f0e0101

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/zte/heartyservice/privacy/ImageVideoActivity$Item;->imageView:Landroid/widget/ImageView;

    .line 256
    const v2, 0x7f0e010e

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/zte/heartyservice/privacy/ImageVideoActivity$Item;->checkBox:Landroid/widget/CheckBox;

    .line 258
    const v2, 0x7f0e010d

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/zte/heartyservice/privacy/ImageVideoActivity$Item;->videoPlayImage:Landroid/widget/ImageView;

    .line 260
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    move-object v1, p1

    .line 265
    check-cast v1, Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;

    .line 266
    .local v1, localEncryImageVideoItem:Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;
    iget v2, v1, Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;->tp:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, v1, Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;->tp:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget v2, v1, Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;->tp:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 269
    :cond_0
    iget-object v2, v1, Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;->bitMap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 270
    iget-object v2, v0, Lcom/zte/heartyservice/privacy/ImageVideoActivity$Item;->imageView:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;->bitMap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 274
    :goto_1
    iget-object v2, v0, Lcom/zte/heartyservice/privacy/ImageVideoActivity$Item;->videoPlayImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    :goto_2
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mCurState:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    sget-object v3, Lcom/zte/heartyservice/privacy/FilesActivity$State;->SELECTED:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    if-ne v2, v3, :cond_5

    .line 285
    iget-object v2, v0, Lcom/zte/heartyservice/privacy/ImageVideoActivity$Item;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 286
    iget-object v2, v0, Lcom/zte/heartyservice/privacy/ImageVideoActivity$Item;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 287
    iget-object v2, v0, Lcom/zte/heartyservice/privacy/ImageVideoActivity$Item;->checkBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 288
    iget-object v2, v0, Lcom/zte/heartyservice/privacy/ImageVideoActivity$Item;->checkBox:Landroid/widget/CheckBox;

    new-instance v3, Lcom/zte/heartyservice/privacy/ImageVideoActivity$2;

    invoke-direct {v3, p0, p1}, Lcom/zte/heartyservice/privacy/ImageVideoActivity$2;-><init>(Lcom/zte/heartyservice/privacy/ImageVideoActivity;Lcom/zte/heartyservice/common/datatype/CommonListItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 301
    :goto_3
    return-object p3

    .line 262
    .end local v1           #localEncryImageVideoItem:Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #item:Lcom/zte/heartyservice/privacy/ImageVideoActivity$Item;
    check-cast v0, Lcom/zte/heartyservice/privacy/ImageVideoActivity$Item;

    .restart local v0       #item:Lcom/zte/heartyservice/privacy/ImageVideoActivity$Item;
    goto :goto_0

    .line 272
    .restart local v1       #localEncryImageVideoItem:Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;
    :cond_2
    iget-object v2, v0, Lcom/zte/heartyservice/privacy/ImageVideoActivity$Item;->imageView:Landroid/widget/ImageView;

    const v3, 0x7f0200ed

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 276
    :cond_3
    iget-object v2, v1, Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;->bitMap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 277
    iget-object v2, v0, Lcom/zte/heartyservice/privacy/ImageVideoActivity$Item;->imageView:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;->bitMap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 281
    :goto_4
    iget-object v2, v0, Lcom/zte/heartyservice/privacy/ImageVideoActivity$Item;->videoPlayImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 279
    :cond_4
    iget-object v2, v0, Lcom/zte/heartyservice/privacy/ImageVideoActivity$Item;->imageView:Landroid/widget/ImageView;

    const v3, 0x7f0200ee

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 297
    :cond_5
    iget-object v2, v0, Lcom/zte/heartyservice/privacy/ImageVideoActivity$Item;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 298
    iget-object v2, v0, Lcom/zte/heartyservice/privacy/ImageVideoActivity$Item;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_3
.end method
