.class public Lcom/android/wifidirect/test/WifiOppTransferHistory;
.super Landroid/app/Activity;
.source "WifiOppTransferHistory.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "WifiOppTransferHistory"

.field private static final V:Z = true


# instance fields
.field private direction:Ljava/lang/String;

.field private mContextMenuPosition:I

.field private mIdColumnId:I

.field private mListView:Landroid/widget/ListView;

.field private mNotifier:Lcom/android/wifidirect/test/WifiOppNotification;

.field private mShowAllIncoming:Z

.field private mTransferAdapter:Lcom/android/wifidirect/test/WifiOppTransferAdapter;

.field private mTransferCursor:Landroid/database/Cursor;

.field private tranferTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/wifidirect/test/WifiOppTransferHistory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppTransferHistory;->clearAllDownloads()V

    return-void
.end method

.method private clearAllDownloads()V
    .locals 4

    .prologue
    .line 222
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    :goto_0
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 224
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->mIdColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 225
    .local v1, sessionId:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 226
    .local v0, contentUri:Landroid/net/Uri;
    iget-boolean v2, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->mShowAllIncoming:Z

    if-nez v2, :cond_0

    .line 227
    invoke-static {p0, v0}, Lcom/android/wifidirect/test/WifiOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 233
    :goto_1
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 230
    :cond_0
    invoke-static {p0, v0}, Lcom/android/wifidirect/test/WifiOppUtility;->DeleteItem(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_1

    .line 240
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v1           #sessionId:I
    :cond_1
    return-void
.end method

.method private getClearableCount()I
    .locals 5

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, count:I
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    :goto_0
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 207
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    const-string v4, "status"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 208
    .local v2, statusColumnId:I
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 209
    .local v1, status:I
    invoke-static {v1}, Lcom/android/wifidirect/test/WifiShare;->isStatusCompleted(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    add-int/lit8 v0, v0, 0x1

    .line 212
    :cond_0
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 215
    .end local v1           #status:I
    .end local v2           #statusColumnId:I
    :cond_1
    return v0
.end method

.method private openCompleteTransfer()V
    .locals 11

    .prologue
    .line 260
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    iget v9, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->mIdColumnId:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 261
    .local v6, sessionId:I
    const-string v8, "WifiOppTransferHistory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WifiShare.CONTENT_URI:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 263
    .local v0, contentUri:Landroid/net/Uri;
    new-instance v7, Lcom/android/wifidirect/test/WifiOppTransferInfo;

    invoke-direct {v7}, Lcom/android/wifidirect/test/WifiOppTransferInfo;-><init>()V

    .line 264
    .local v7, transInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;
    const-string v8, "WifiOppTransferHistory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "contentUri: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static {p0, v0}, Lcom/android/wifidirect/test/WifiOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/wifidirect/test/WifiOppTransferInfo;

    move-result-object v7

    .line 266
    if-nez v7, :cond_0

    .line 267
    const-string v8, "WifiOppTransferHistory"

    const-string v9, "Error: Can not get data from db"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :goto_0
    return-void

    .line 270
    :cond_0
    iget v8, v7, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mDirection:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    iget v8, v7, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mStatus:I

    invoke-static {v8}, Lcom/android/wifidirect/test/WifiShare;->isStatusSuccess(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 276
    iget-object v8, v7, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mFileName:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/wifidirect/test/WifiOppUtility;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/wifidirect/test/WifiOppUtility;->getObjectTypeFromFileExt(Ljava/lang/String;)I

    move-result v4

    .line 281
    .local v4, objType:I
    const/4 v8, 0x2

    iget v9, v7, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mFileStatus:I

    if-ne v8, v9, :cond_2

    .line 284
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppTransferHistory;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;->getInstance(Landroid/content/Context;)Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;

    move-result-object v5

    .line 285
    .local v5, processor:Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;
    iget v8, v7, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mID:I

    invoke-virtual {v5, v8}, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;->queryShareInfo(I)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v3

    .line 286
    .local v3, info:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppTransferHistory;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;->getInstance(Landroid/content/Context;)Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;->getFileHandler(Lcom/android/wifidirect/test/WifiOppShareInfo;)Lcom/android/wifidirect/test/WifiDirectOppFileProcessor$FileHandler;

    move-result-object v1

    .line 287
    .local v1, handler:Lcom/android/wifidirect/test/WifiDirectOppFileProcessor$FileHandler;
    if-eqz v1, :cond_1

    .line 288
    invoke-interface {v1}, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor$FileHandler;->notifyProcessing()V

    .line 290
    :cond_1
    const/4 v1, 0x0

    .line 291
    const/4 v3, 0x0

    .line 292
    const/4 v5, 0x0

    .line 294
    goto :goto_0

    .line 297
    .end local v1           #handler:Lcom/android/wifidirect/test/WifiDirectOppFileProcessor$FileHandler;
    .end local v3           #info:Lcom/android/wifidirect/test/WifiOppShareInfo;
    .end local v5           #processor:Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;
    :cond_2
    const-string v8, "WifiOppTransferHistory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "transInfo.mFileUri: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mFileUri:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string v8, "WifiOppTransferHistory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mFileType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mFileType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v8, "WifiOppTransferHistory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mFileName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v8, v7, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mFilePath:Ljava/lang/String;

    iget-object v9, v7, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mFileType:Ljava/lang/String;

    iget-object v10, v7, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mTimeStamp:Ljava/lang/Long;

    invoke-static {p0, v8, v9, v10, v0}, Lcom/android/wifidirect/test/WifiOppUtility;->openReceivedFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 315
    .end local v4           #objType:I
    :cond_3
    const-string v8, "WifiOppTransferHistory"

    const-string v9, "openCompleteTransfer"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v2, Landroid/content/Intent;

    const-class v8, Lcom/android/wifidirect/test/WifiOppTransferActivity;

    invoke-direct {v2, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 317
    .local v2, in:Landroid/content/Intent;
    const/high16 v8, 0x1000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 318
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 319
    invoke-virtual {p0, v2}, Lcom/android/wifidirect/test/WifiOppTransferHistory;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private promptClearList()V
    .locals 3

    .prologue
    .line 191
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08006d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08006c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/wifidirect/test/WifiOppTransferHistory$1;

    invoke-direct {v2, p0}, Lcom/android/wifidirect/test/WifiOppTransferHistory$1;-><init>(Lcom/android/wifidirect/test/WifiOppTransferHistory;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 198
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/android/wifidirect/test/WifiOppTransferHistory;->setContentView(I)V

    .line 59
    const v0, 0x7f0b0029

    invoke-virtual {p0, v0}, Lcom/android/wifidirect/test/WifiOppTransferHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->mListView:Landroid/widget/ListView;

    .line 60
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->mListView:Landroid/widget/ListView;

    const v1, 0x7f0b002a

    invoke-virtual {p0, v1}, Lcom/android/wifidirect/test/WifiOppTransferHistory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppTransferHistory;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.wifishareopp.intent.extra.SHOW_ALL"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->mShowAllIncoming:Z

    .line 64
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppTransferHistory;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "direction"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 65
    .local v6, dir:I
    if-nez v6, :cond_2

    .line 66
    const v0, 0x7f080063

    invoke-virtual {p0, v0}, Lcom/android/wifidirect/test/WifiOppTransferHistory;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->tranferTitle:Ljava/lang/String;

    .line 67
    const-string v0, "(direction == 0)"

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->direction:Ljava/lang/String;

    .line 80
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status >= \'200\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->direction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, selection:Ljava/lang/String;
    iget-boolean v0, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->mShowAllIncoming:Z

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "visibility"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IS NULL OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "visibility"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " == \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 91
    :cond_0
    const-string v7, "timestamp DESC"

    .line 93
    .local v7, sortOrder:Ljava/lang/String;
    sget-object v1, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    const/16 v0, 0xb

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    const/4 v0, 0x1

    const-string v4, "hint"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "status"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const-string v4, "total_bytes"

    aput-object v4, v2, v0

    const/4 v0, 0x4

    const-string v4, "_data"

    aput-object v4, v2, v0

    const/4 v0, 0x5

    const-string v4, "timestamp"

    aput-object v4, v2, v0

    const/4 v0, 0x6

    const-string v4, "visibility"

    aput-object v4, v2, v0

    const/4 v0, 0x7

    const-string v4, "destination"

    aput-object v4, v2, v0

    const/16 v0, 0x8

    const-string v4, "direction"

    aput-object v4, v2, v0

    const/16 v0, 0x9

    const-string v4, "devicename"

    aput-object v4, v2, v0

    const/16 v0, 0xa

    const-string v4, "rdevicename"

    aput-object v4, v2, v0

    const/4 v4, 0x0

    const-string v5, "timestamp DESC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/wifidirect/test/WifiOppTransferHistory;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    .line 102
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->mIdColumnId:I

    .line 105
    new-instance v0, Lcom/android/wifidirect/test/WifiOppTransferAdapter;

    const v1, 0x7f03000d

    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    iget-boolean v4, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->mShowAllIncoming:Z

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/android/wifidirect/test/WifiOppTransferAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->mTransferAdapter:Lcom/android/wifidirect/test/WifiOppTransferAdapter;

    .line 107
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->mTransferAdapter:Lcom/android/wifidirect/test/WifiOppTransferAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->mListView:Landroid/widget/ListView;

    const/high16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 110
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 113
    :cond_1
    new-instance v0, Lcom/android/wifidirect/test/WifiOppNotification;

    invoke-direct {v0, p0}, Lcom/android/wifidirect/test/WifiOppNotification;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->mNotifier:Lcom/android/wifidirect/test/WifiOppNotification;

    .line 114
    return-void

    .line 71
    .end local v3           #selection:Ljava/lang/String;
    .end local v7           #sortOrder:Ljava/lang/String;
    :cond_2
    iget-boolean v0, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->mShowAllIncoming:Z

    if-eqz v0, :cond_3

    .line 72
    const v0, 0x7f08007b

    invoke-virtual {p0, v0}, Lcom/android/wifidirect/test/WifiOppTransferHistory;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->tranferTitle:Ljava/lang/String;

    .line 76
    :goto_1
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->tranferTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/wifidirect/test/WifiOppTransferHistory;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    const-string v0, "(direction == 1)"

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->direction:Ljava/lang/String;

    goto/16 :goto_0

    .line 74
    :cond_3
    const v0, 0x7f080064

    invoke-virtual {p0, v0}, Lcom/android/wifidirect/test/WifiOppTransferHistory;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->tranferTitle:Ljava/lang/String;

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppTransferHistory;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 120
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0a0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 122
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 251
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppTransferHistory;->openCompleteTransfer()V

    .line 253
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 138
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 143
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 140
    :pswitch_0
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppTransferHistory;->promptClearList()V

    .line 141
    const/4 v0, 0x1

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x7f0b002d
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    .line 127
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppTransferHistory;->getClearableCount()I

    move-result v2

    if-lez v2, :cond_0

    move v0, v1

    .line 130
    .local v0, showClear:Z
    :goto_0
    const v2, 0x7f0b002d

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 133
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 127
    .end local v0           #showClear:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
