.class Lcom/android/exchange/utility/FetchMessageUtil$ItemOperationsFetchParser;
.super Lcom/android/exchange/adapter/Parser;
.source "FetchMessageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/utility/FetchMessageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemOperationsFetchParser"
.end annotation


# instance fields
.field private mProtocolSearchInfo:Ljava/lang/String;

.field private mServerId:Ljava/lang/String;

.field private final mService:Lcom/android/exchange/EasSyncService;

.field private mStatusCode:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V
    .locals 1
    .parameter "in"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 196
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/utility/FetchMessageUtil$ItemOperationsFetchParser;->mStatusCode:I

    .line 197
    const-string v0, ""

    iput-object v0, p0, Lcom/android/exchange/utility/FetchMessageUtil$ItemOperationsFetchParser;->mServerId:Ljava/lang/String;

    .line 198
    const-string v0, ""

    iput-object v0, p0, Lcom/android/exchange/utility/FetchMessageUtil$ItemOperationsFetchParser;->mProtocolSearchInfo:Ljava/lang/String;

    .line 204
    iput-object p2, p0, Lcom/android/exchange/utility/FetchMessageUtil$ItemOperationsFetchParser;->mService:Lcom/android/exchange/EasSyncService;

    .line 205
    return-void
.end method

.method private compressBodyData(Ljava/lang/String;)[B
    .locals 10
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    const/16 v7, 0x400

    new-array v4, v7, [B

    .line 218
    .local v4, readBuffer:[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 219
    .local v6, sourceBytes:[B
    array-length v2, v6

    .line 220
    .local v2, originSize:I
    new-instance v1, Ljava/util/zip/DeflaterInputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v7}, Ljava/util/zip/DeflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 222
    .local v1, compressedStr:Ljava/util/zip/DeflaterInputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 223
    .local v3, outStream:Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, readCount:I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 224
    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 227
    .local v0, compressedBytes:[B
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Compressing message body: originSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " compressedBytes = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 232
    invoke-virtual {v1}, Ljava/util/zip/DeflaterInputStream;->close()V

    .line 233
    return-object v0
.end method

.method private parseFetch()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    new-instance v0, Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-object v10, p0, Lcom/android/exchange/utility/FetchMessageUtil$ItemOperationsFetchParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-direct {v0, v10}, Lcom/android/exchange/adapter/EmailSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 342
    .local v0, adapter:Lcom/android/exchange/adapter/EmailSyncAdapter;
    new-instance v6, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v6, v0, p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;-><init>(Lcom/android/exchange/adapter/EmailSyncAdapter;Lcom/android/exchange/adapter/Parser;Lcom/android/exchange/adapter/EmailSyncAdapter;)V

    .line 343
    .local v6, parser:Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .local v5, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_0
    const/16 v10, 0x506

    invoke-virtual {p0, v10}, Lcom/android/exchange/adapter/Parser;->nextTag(I)I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_4

    .line 345
    iget v10, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v11, 0x50d

    if-ne v10, v11, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 347
    .local v9, status:Ljava/lang/String;
    const-string v10, "Email"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ITEMS_STATUS:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 348
    .end local v9           #status:Ljava/lang/String;
    :cond_0
    iget v10, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v11, 0xd

    if-ne v10, v11, :cond_1

    .line 349
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->getValue()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/exchange/utility/FetchMessageUtil$ItemOperationsFetchParser;->mServerId:Ljava/lang/String;

    goto :goto_0

    .line 350
    :cond_1
    iget v10, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v11, 0x3d8

    if-ne v10, v11, :cond_2

    .line 351
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->getValue()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/exchange/utility/FetchMessageUtil$ItemOperationsFetchParser;->mProtocolSearchInfo:Ljava/lang/String;

    .line 352
    const-string v10, "Email"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ITEMOPERATIONS_FETCH LONGID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/exchange/utility/FetchMessageUtil$ItemOperationsFetchParser;->mProtocolSearchInfo:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_2
    iget v10, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v11, 0x50b

    if-ne v10, v11, :cond_3

    .line 354
    invoke-direct {p0, v6, v5}, Lcom/android/exchange/utility/FetchMessageUtil$ItemOperationsFetchParser;->parseProperties(Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 356
    :cond_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->skipTag()V

    goto :goto_0

    .line 361
    :cond_4
    :try_start_0
    iget-object v10, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "com.android.email.provider"

    invoke-virtual {v10, v11, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v8

    .line 362
    .local v8, results:[Landroid/content/ContentProviderResult;
    const-string v10, "Email"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ITEMS_FETCH Save successfully for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " operations."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    move-object v1, v8

    .local v1, arr$:[Landroid/content/ContentProviderResult;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_5

    aget-object v7, v1, v3

    .line 365
    .local v7, result:Landroid/content/ContentProviderResult;
    const-string v10, "Email"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ITEMS_FETCH Save successfully: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Landroid/content/ContentProviderResult;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 364
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 367
    .end local v1           #arr$:[Landroid/content/ContentProviderResult;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v7           #result:Landroid/content/ContentProviderResult;
    .end local v8           #results:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v2

    .line 368
    .local v2, e:Landroid/os/RemoteException;
    const-string v10, "Email"

    const-string v11, "RemoteException while saving search results."

    invoke-static {v10, v11}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_5
    :goto_2
    return-void

    .line 369
    :catch_1
    move-exception v2

    .line 370
    .local v2, e:Landroid/content/OperationApplicationException;
    const-string v10, "Email"

    const-string v11, "OperationApplicationException while saving search results."

    invoke-static {v10, v11}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private parseProperties(Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;Ljava/util/ArrayList;)V
    .locals 11
    .parameter "parser"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    .local p2, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v5, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v5}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .line 239
    .local v5, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-object v7, p0, Lcom/android/exchange/utility/FetchMessageUtil$ItemOperationsFetchParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v7, v7, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 240
    iget-object v7, p0, Lcom/android/exchange/utility/FetchMessageUtil$ItemOperationsFetchParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v7, v7, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 241
    const/4 v7, 0x1

    iput v7, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 243
    iget v7, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    invoke-virtual {p1, v5, v7}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->addData(Lcom/android/emailcommon/provider/EmailContent$Message;I)V

    .line 244
    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mSize:J

    iget-object v9, p0, Lcom/android/exchange/utility/FetchMessageUtil$ItemOperationsFetchParser;->mServerId:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mSize:J

    .line 245
    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mSize:J

    iget-object v9, p0, Lcom/android/exchange/utility/FetchMessageUtil$ItemOperationsFetchParser;->mProtocolSearchInfo:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mSize:J

    .line 248
    iget v7, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 249
    iget v7, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v8, 0x40

    or-int/2addr v7, v8

    iput v7, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 250
    const/4 v7, 0x1

    iput v7, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 254
    :cond_0
    const/4 v0, 0x0

    .line 255
    .local v0, c:Landroid/database/Cursor;
    iget-object v7, p0, Lcom/android/exchange/utility/FetchMessageUtil$ItemOperationsFetchParser;->mProtocolSearchInfo:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 256
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fetched message of longId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exchange/utility/FetchMessageUtil$ItemOperationsFetchParser;->mProtocolSearchInfo:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v7, p0, Lcom/android/exchange/utility/FetchMessageUtil$ItemOperationsFetchParser;->mProtocolSearchInfo:Ljava/lang/String;

    sget-object v8, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p1, v7, v8}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getLongIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 262
    :goto_0
    const/4 v2, 0x0

    .line 264
    .local v2, id:Ljava/lang/String;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 265
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 268
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 271
    const/4 v3, 0x0

    .line 273
    .local v3, isNeedCompress:Z
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 274
    .local v1, cv:Landroid/content/ContentValues;
    iget-object v7, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 275
    const-string v7, "textContent"

    iget-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v7, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const v8, 0x7d000

    if-le v7, v8, :cond_2

    .line 277
    const/4 v3, 0x1

    .line 280
    :cond_2
    iget-object v7, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 281
    const-string v7, "htmlContent"

    iget-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v7, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const v8, 0x7d000

    if-le v7, v8, :cond_3

    .line 283
    const/4 v3, 0x1

    .line 286
    :cond_3
    iget-object v7, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 287
    const-string v7, "textReply"

    iget-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_4
    iget-object v7, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 290
    const-string v7, "htmlReply"

    iget-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_5
    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_6

    .line 293
    const-string v7, "sourceMessageKey"

    iget-wide v8, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 295
    :cond_6
    iget-object v7, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    if-eqz v7, :cond_7

    .line 296
    const-string v7, "introText"

    iget-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_7
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iput-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 301
    if-eqz v2, :cond_a

    .line 302
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fetched body successfully for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with flag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    .line 305
    .local v6, msgKey:[Ljava/lang/String;
    const/4 v7, 0x0

    aput-object v2, v6, v7

    .line 307
    if-eqz v3, :cond_c

    .line 308
    iget-object v7, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-eqz v7, :cond_8

    .line 309
    const-string v7, "textContent"

    iget-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/exchange/utility/FetchMessageUtil$ItemOperationsFetchParser;->compressBodyData(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 311
    :cond_8
    iget-object v7, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v7, :cond_9

    .line 312
    const-string v7, "htmlContent"

    iget-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/exchange/utility/FetchMessageUtil$ItemOperationsFetchParser;->compressBodyData(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 314
    :cond_9
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_LARGE_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "messageKey=?"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    :goto_1
    iget-object v7, p0, Lcom/android/exchange/utility/FetchMessageUtil$ItemOperationsFetchParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v7, v7, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-wide v8, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    .line 326
    .local v4, localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget v7, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    iget v8, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/2addr v7, v8

    iput v7, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 328
    iget v7, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    .line 329
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "_id=?"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "flagLoaded"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "size"

    iget-wide v9, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mSize:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "flags"

    iget v9, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    .end local v4           #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v6           #msgKey:[Ljava/lang/String;
    :cond_a
    return-void

    .line 260
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v2           #id:Ljava/lang/String;
    .end local v3           #isNeedCompress:Z
    :cond_b
    iget-object v7, p0, Lcom/android/exchange/utility/FetchMessageUtil$ItemOperationsFetchParser;->mServerId:Ljava/lang/String;

    sget-object v8, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p1, v7, v8}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    .line 268
    .restart local v2       #id:Ljava/lang/String;
    :catchall_0
    move-exception v7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v7

    .line 319
    .restart local v1       #cv:Landroid/content/ContentValues;
    .restart local v3       #isNeedCompress:Z
    .restart local v6       #msgKey:[Ljava/lang/String;
    :cond_c
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "messageKey=?"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private parseResponse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    :goto_0
    const/16 v0, 0x50e

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/Parser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 376
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x506

    if-ne v0, v1, :cond_0

    .line 377
    invoke-direct {p0}, Lcom/android/exchange/utility/FetchMessageUtil$ItemOperationsFetchParser;->parseFetch()V

    goto :goto_0

    .line 379
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->skipTag()V

    goto :goto_0

    .line 382
    :cond_1
    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/android/exchange/utility/FetchMessageUtil$ItemOperationsFetchParser;->mStatusCode:I

    return v0
.end method

.method public parse()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 386
    const/4 v0, 0x0

    .line 387
    .local v0, res:Z
    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/Parser;->nextTag(I)I

    move-result v1

    const/16 v2, 0x505

    if-eq v1, v2, :cond_0

    .line 388
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 390
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/Parser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 391
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x50d

    if-ne v1, v2, :cond_1

    .line 393
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->getValueInt()I

    move-result v1

    iput v1, p0, Lcom/android/exchange/utility/FetchMessageUtil$ItemOperationsFetchParser;->mStatusCode:I

    .line 394
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ITEMS_STATUS status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/utility/FetchMessageUtil$ItemOperationsFetchParser;->mStatusCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :cond_1
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x50e

    if-ne v1, v2, :cond_2

    .line 396
    invoke-direct {p0}, Lcom/android/exchange/utility/FetchMessageUtil$ItemOperationsFetchParser;->parseResponse()V

    goto :goto_0

    .line 398
    :cond_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->skipTag()V

    goto :goto_0

    .line 401
    :cond_3
    return v0
.end method
