.class public Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;
.super Landroid/app/Activity;
.source "BluetoothBppEntryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity$FileOperThread;
    }
.end annotation


# static fields
.field private static final ACTION_PRINT:Ljava/lang/String; = "mediatek.intent.action.PRINT"

.field private static final BLUETOOTH_DEVICE_REQUEST:I = 0x1

.field private static final FILTER_TYPE_PRINTER:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothBppEntryActivity"

.field private static mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static mContext:Landroid/content/Context;

.field private static mEntryError:[Ljava/lang/String;

.field private static mFilePath:Ljava/lang/String;

.field private static mFileSize:Ljava/lang/String;

.field private static mFileUri:Landroid/net/Uri;

.field private static mMimeType:Ljava/lang/String;

.field private static mReentry:Z

.field private static result:I


# instance fields
.field private mBack:Z

.field private mFileOperThread:Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity$FileOperThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mReentry:Z

    .line 100
    const/4 v0, -0x1

    sput v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->result:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mBack:Z

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mFileOperThread:Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity$FileOperThread;

    .line 103
    return-void
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    sput p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->result:I

    return p0
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->getFileInfo()I

    move-result v0

    return v0
.end method

.method private getFileInfo()I
    .locals 18

    .prologue
    .line 295
    sget-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mMimeType:Ljava/lang/String;

    const-string v1, "text/x-vcard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 296
    const-string v0, "BluetoothBppEntryActivity"

    const-string v1, "v-card"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :try_start_0
    sget-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mFileUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    .line 300
    .local v10, in:Ljava/io/InputStream;
    if-nez v10, :cond_0

    .line 301
    const-string v0, "BluetoothBppEntryActivity"

    const-string v1, "input stream is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v0, 0x1

    .line 439
    .end local v10           #in:Ljava/io/InputStream;
    :goto_0
    return v0

    .line 324
    .restart local v10       #in:Ljava/io/InputStream;
    :cond_0
    sget-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mContext:Landroid/content/Context;

    const-string v1, "Contact.vcf"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v12

    .line 327
    .local v12, out:Ljava/io/FileOutputStream;
    const/16 v17, 0x0

    .line 328
    .local v17, total:I
    const/16 v0, 0x400

    new-array v6, v0, [B

    .line 330
    .local v6, buf:[B
    :goto_1
    invoke-virtual {v10, v6}, Ljava/io/InputStream;->read([B)I

    move-result v15

    .local v15, read:I
    const/4 v0, -0x1

    if-eq v15, v0, :cond_1

    .line 332
    const/4 v0, 0x0

    invoke-virtual {v12, v6, v0, v15}, Ljava/io/FileOutputStream;->write([BII)V

    .line 333
    add-int v17, v17, v15

    goto :goto_1

    .line 335
    :cond_1
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 336
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 341
    const/4 v13, 0x0

    .line 342
    .local v13, path:Ljava/io/File;
    sget-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mContext:Landroid/content/Context;

    const-string v1, "Contact.vcf"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 343
    if-eqz v13, :cond_2

    .line 344
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mFilePath:Ljava/lang/String;

    .line 348
    :cond_2
    const-string v0, "text/x-vcard:3.0"

    sput-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mMimeType:Ljava/lang/String;

    .line 349
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mFileSize:Ljava/lang/String;

    .line 366
    const-string v0, "BluetoothBppEntryActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File Path: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-string v0, "BluetoothBppEntryActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File Size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mFileSize:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const-string v0, "BluetoothBppEntryActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File Mime: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 371
    .end local v6           #buf:[B
    .end local v10           #in:Ljava/io/InputStream;
    .end local v12           #out:Ljava/io/FileOutputStream;
    .end local v13           #path:Ljava/io/File;
    .end local v15           #read:I
    .end local v17           #total:I
    :catch_0
    move-exception v8

    .line 372
    .local v8, ex:Ljava/lang/Exception;
    const-string v0, "BluetoothBppEntryActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create v-card file fail: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 378
    .end local v8           #ex:Ljava/lang/Exception;
    :cond_3
    const-string v0, "BluetoothBppEntryActivity"

    const-string v1, "image"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v0, "content"

    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mFileUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 381
    const-string v0, "media"

    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mFileUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 383
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "mime_type"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_size"

    aput-object v1, v2, v0

    .line 388
    .local v2, proj:[Ljava/lang/String;
    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mFileUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 394
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_4

    .line 395
    const-string v0, "BluetoothBppEntryActivity"

    const-string v1, "cursor is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 400
    :cond_4
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 401
    .local v14, pathColumnId:I
    const-string v0, "mime_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 402
    .local v11, mimeColumnId:I
    const-string v0, "_size"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 404
    .local v16, sizeColumnId:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_5

    .line 405
    const-string v0, "BluetoothBppEntryActivity"

    const-string v1, "cursor.moveToFirst() is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 409
    :cond_5
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mFilePath:Ljava/lang/String;

    .line 410
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mMimeType:Ljava/lang/String;

    .line 425
    .end local v2           #proj:[Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v11           #mimeColumnId:I
    .end local v14           #pathColumnId:I
    .end local v16           #sizeColumnId:I
    :cond_6
    :goto_2
    new-instance v9, Ljava/io/File;

    sget-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mFilePath:Ljava/lang/String;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 426
    .local v9, f:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mFileSize:Ljava/lang/String;

    .line 429
    const-string v0, "BluetoothBppEntryActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File Path: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const-string v0, "BluetoothBppEntryActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File Size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mFileSize:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const-string v0, "BluetoothBppEntryActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File Mime: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    sget-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mMimeType:Ljava/lang/String;

    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mMimeType:Ljava/lang/String;

    const-string v1, "image/gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mMimeType:Ljava/lang/String;

    const-string v1, "image/png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 436
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 414
    .end local v9           #f:Ljava/io/File;
    :cond_7
    const-string v0, "file"

    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mFileUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 416
    sget-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mFileUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mFilePath:Ljava/lang/String;

    .line 417
    sget-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mFilePath:Ljava/lang/String;

    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mFilePath:Ljava/lang/String;

    const/16 v3, 0x2f

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mFilePath:Ljava/lang/String;

    goto/16 :goto_2

    .line 422
    :cond_8
    const-string v0, "BluetoothBppEntryActivity"

    const-string v1, "unhandled URI"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 439
    .restart local v9       #f:Ljava/io/File;
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private getFileInfoMain()V
    .locals 4

    .prologue
    .line 114
    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mFileUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 115
    const-string v1, "BluetoothBppEntryActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get ACTION_SEND intent: Uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mFileUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; mimetype = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity$FileOperThread;

    invoke-direct {v1, p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity$FileOperThread;-><init>(Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;)V

    iput-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mFileOperThread:Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity$FileOperThread;

    .line 120
    iget-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mFileOperThread:Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity$FileOperThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mFileOperThread:Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity$FileOperThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 124
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mFileOperThread:Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity$FileOperThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    const-string v1, "BluetoothBppEntryActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->result:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    sget v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->result:I

    if-eqz v1, :cond_0

    .line 130
    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mEntryError:[Ljava/lang/String;

    sget v2, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->result:I

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 135
    :cond_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "BluetoothBppEntryActivity"

    const-string v2, "mFileOperThread close error."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendFileInfo()Z
    .locals 3

    .prologue
    .line 446
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.bluetooth.bppReceiver.action.PASS_OBJECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 448
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.mediatek.bluetooth.bppmanager.extra.FILE_PATH"

    sget-object v2, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    const-string v1, "com.mediatek.bluetooth.bppmanager.extra.MIME_TYPE"

    sget-object v2, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    const-string v1, "com.mediatek.bluetooth.bppmanager.extra.FILE_SIZE"

    sget-object v2, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mFileSize:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 453
    const/4 v1, 0x1

    return v1
.end method

.method private startDevicePicker()V
    .locals 3

    .prologue
    .line 485
    const-string v1, "BluetoothBppEntryActivity"

    const-string v2, "Start Device Picker!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .local v0, in_toBDP:Landroid/content/Intent;
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 489
    const-string v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 490
    const-string v1, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 491
    const-string v1, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    const-string v2, "com.mediatek.bluetooth"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    const-string v1, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    const-class v2, Lcom/mediatek/bluetooth/bpp/BluetoothBppReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 494
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 245
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 247
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 248
    const/4 v1, 0x0

    sput-boolean v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mReentry:Z

    .line 251
    const/4 v1, -0x1

    if-ne v1, p2, :cond_1

    .line 253
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->getFileInfoMain()V

    .line 255
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->sendFileInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->result:I

    if-nez v1, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->startDevicePicker()V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    const-string v0, ""

    .line 262
    .local v0, message:Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 267
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070022

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070025

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity$2;

    invoke-direct {v2, p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity$2;-><init>(Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070026

    new-instance v3, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity$1;

    invoke-direct {v3, p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity$1;-><init>(Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 231
    const-string v0, "BluetoothBppEntryActivity"

    const-string v1, "onBackPressed......"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mBack:Z

    if-nez v0, :cond_0

    .line 233
    const-string v0, "BluetoothBppEntryActivity"

    const-string v1, "mBack is false"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    const-string v0, "BluetoothBppEntryActivity"

    const-string v1, "mBack is true"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    const-string v4, "BluetoothBppEntryActivity"

    const-string v5, "onCreate......"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v4, 0x0

    sput-boolean v4, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mReentry:Z

    .line 147
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 148
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, type:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sput-object v4, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mContext:Landroid/content/Context;

    .line 153
    sput-object v3, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mMimeType:Ljava/lang/String;

    .line 154
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    sput-object v4, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mFileUri:Landroid/net/Uri;

    .line 156
    sget-object v4, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mEntryError:[Ljava/lang/String;

    .line 158
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    sput-object v4, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 159
    sget-object v4, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v4, :cond_0

    .line 160
    const-string v4, "BluetoothBppEntryActivity"

    const-string v5, "bluetooth service is not started! "

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 187
    :goto_0
    return-void

    .line 166
    :cond_0
    sget-object v4, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 167
    const-string v4, "BluetoothBppEntryActivity"

    const-string v5, "bluetooth service is available"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->getFileInfoMain()V

    .line 170
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->sendFileInfo()Z

    move-result v4

    if-eqz v4, :cond_1

    sget v4, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->result:I

    if-nez v4, :cond_1

    .line 171
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->startDevicePicker()V

    .line 174
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 177
    :cond_2
    const-string v4, "BluetoothBppEntryActivity"

    const-string v5, "bluetooth service is not available! "

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v4, "BluetoothBppEntryActivity"

    const-string v5, "turning on bluetooth......"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .local v1, in:Landroid/content/Intent;
    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 225
    const-string v0, "BluetoothBppEntryActivity"

    const-string v1, "onDestroy......"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 227
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 210
    const-string v0, "BluetoothBppEntryActivity"

    const-string v1, "onPause......"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iput-boolean v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mBack:Z

    .line 212
    sput-boolean v2, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mReentry:Z

    .line 213
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 214
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 200
    const-string v0, "BluetoothBppEntryActivity"

    const-string v1, "onResume......"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 203
    sget-boolean v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppEntryActivity;->mReentry:Z

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 206
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 194
    const-string v0, "BluetoothBppEntryActivity"

    const-string v1, "onStart......"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 196
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 218
    const-string v0, "BluetoothBppEntryActivity"

    const-string v1, "onStop......"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 220
    return-void
.end method
