.class public Lcom/android/exchange/adapter/AttachmentLoader;
.super Ljava/lang/Object;
.source "AttachmentLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/AttachmentLoader$1;,
        Lcom/android/exchange/adapter/AttachmentLoader$AttachmentNameEncoder;
    }
.end annotation


# static fields
.field private static final CHUNK_SIZE:I = 0x4000


# instance fields
.field private final mAccountId:J

.field private final mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

.field private final mAttachmentId:J

.field private final mAttachmentSize:I

.field private final mAttachmentUri:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;

.field private final mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

.field private final mMessageId:J

.field private final mRequest:Lcom/android/exchange/PartRequest;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mService:Lcom/android/exchange/EasSyncService;


# direct methods
.method public constructor <init>(Lcom/android/exchange/EasSyncService;Lcom/android/exchange/PartRequest;)V
    .locals 4
    .parameter "service"
    .parameter "req"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    .line 66
    iget-object v0, p1, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mContext:Landroid/content/Context;

    .line 67
    iget-object v0, p1, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mResolver:Landroid/content/ContentResolver;

    .line 68
    iget-object v0, p2, Lcom/android/exchange/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iput-object v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 69
    iget-object v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachmentId:J

    .line 70
    iget-object v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-int v0, v0

    iput v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachmentSize:I

    .line 71
    iget-object v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    iput-wide v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAccountId:J

    .line 72
    iget-object v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    iput-wide v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mMessageId:J

    .line 73
    iput-object p2, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mRequest:Lcom/android/exchange/PartRequest;

    .line 74
    iget-object v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mMessageId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 75
    iget-wide v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAccountId:J

    iget-wide v2, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachmentId:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachmentUri:Landroid/net/Uri;

    .line 76
    return-void
.end method

.method private doProgressCallback(I)V
    .locals 7
    .parameter "progress"

    .prologue
    .line 88
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mMessageId:J

    iget-wide v3, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachmentId:J

    const/4 v5, 0x1

    move v6, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doStatusCallback(I)V
    .locals 7
    .parameter "status"

    .prologue
    .line 80
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mMessageId:J

    iget-wide v3, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachmentId:J

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static encodeForExchange2003(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 164
    new-instance v0, Lcom/android/exchange/adapter/AttachmentLoader$AttachmentNameEncoder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/exchange/adapter/AttachmentLoader$AttachmentNameEncoder;-><init>(Lcom/android/exchange/adapter/AttachmentLoader$1;)V

    .line 165
    .local v0, enc:Lcom/android/exchange/adapter/AttachmentLoader$AttachmentNameEncoder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 166
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1, p0}, Lcom/android/exchange/utility/UriCodec;->appendPartiallyEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private finishLoadAttachment()V
    .locals 3

    .prologue
    .line 99
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 100
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "contentUri"

    iget-object v2, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachmentUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "uiState"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    iget-object v1, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v2, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 103
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/AttachmentLoader;->doStatusCallback(I)V

    .line 104
    return-void
.end method


# virtual methods
.method public loadAttachment()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v11, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-nez v11, :cond_0

    .line 188
    const/16 v11, 0x10

    invoke-direct {p0, v11}, Lcom/android/exchange/adapter/AttachmentLoader;->doStatusCallback(I)V

    .line 282
    :goto_0
    return-void

    .line 192
    :cond_0
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/exchange/adapter/AttachmentLoader;->doProgressCallback(I)V

    .line 195
    iget-object v11, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v11, v11, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    const-wide/high16 v13, 0x402c

    cmpl-double v11, v11, v13

    if-ltz v11, :cond_2

    const/4 v2, 0x1

    .line 197
    .local v2, eas14:Z
    :goto_1
    :try_start_0
    iget-object v11, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/android/exchange/EasSyncService;->mIsForAttachment:Z

    .line 199
    if-eqz v2, :cond_4

    .line 200
    new-instance v9, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v9}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 201
    .local v9, s:Lcom/android/exchange/adapter/Serializer;
    const/16 v11, 0x505

    invoke-virtual {v9, v11}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v11

    const/16 v12, 0x506

    invoke-virtual {v11, v12}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 202
    const/16 v11, 0x507

    const-string v12, "Mailbox"

    invoke-virtual {v9, v11, v12}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 203
    const/16 v11, 0x451

    iget-object v12, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v12, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-virtual {v9, v11, v12}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 204
    invoke-virtual {v9}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 205
    iget-object v11, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mRequest:Lcom/android/exchange/PartRequest;

    iget-boolean v11, v11, Lcom/android/exchange/PartRequest;->mCancelled:Z

    if-nez v11, :cond_3

    .line 206
    iget-object v11, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    const-string v12, "ItemOperations"

    invoke-virtual {v9}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 230
    .end local v9           #s:Lcom/android/exchange/adapter/Serializer;
    .local v8, resp:Lcom/android/exchange/EasResponse;
    :goto_2
    iget-object v11, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/android/exchange/EasSyncService;->mIsForAttachment:Z

    .line 234
    :try_start_1
    invoke-virtual {v8}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v10

    .line 235
    .local v10, status:I
    const/16 v11, 0xc8

    if-ne v10, v11, :cond_a

    .line 236
    invoke-virtual {v8}, Lcom/android/exchange/EasResponse;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_a

    .line 237
    invoke-virtual {v8}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v3

    .line 238
    .local v3, is:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 240
    .local v6, os:Ljava/io/OutputStream;
    :try_start_2
    iget-object v11, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mResolver:Landroid/content/ContentResolver;

    iget-object v12, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachmentUri:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6

    .line 241
    if-eqz v2, :cond_7

    .line 242
    new-instance v7, Lcom/android/exchange/adapter/ItemOperationsParser;

    iget v11, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachmentSize:I

    invoke-direct {v7, p0, v3, v6, v11}, Lcom/android/exchange/adapter/ItemOperationsParser;-><init>(Lcom/android/exchange/adapter/AttachmentLoader;Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 244
    .local v7, p:Lcom/android/exchange/adapter/ItemOperationsParser;
    invoke-virtual {v7}, Lcom/android/exchange/adapter/ItemOperationsParser;->parse()Z

    .line 246
    invoke-virtual {v7}, Lcom/android/exchange/adapter/ItemOperationsParser;->getStatusCode()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c

    invoke-virtual {v7}, Lcom/android/exchange/adapter/ItemOperationsParser;->getDataBoolean()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 247
    invoke-direct {p0}, Lcom/android/exchange/adapter/AttachmentLoader;->finishLoadAttachment()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 268
    if-eqz v6, :cond_1

    .line 269
    :try_start_3
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 270
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 276
    :cond_1
    invoke-virtual {v8}, Lcom/android/exchange/EasResponse;->close()V

    .line 277
    iget-object v11, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    .end local v7           #p:Lcom/android/exchange/adapter/ItemOperationsParser;
    :goto_3
    const/4 v12, 0x0

    iput-object v12, v11, Lcom/android/exchange/EasSyncService;->mHttpPostForAttachment:Lorg/apache/http/client/methods/HttpPost;

    goto/16 :goto_0

    .line 195
    .end local v2           #eas14:Z
    .end local v3           #is:Ljava/io/InputStream;
    .end local v6           #os:Ljava/io/OutputStream;
    .end local v8           #resp:Lcom/android/exchange/EasResponse;
    .end local v10           #status:I
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 208
    .restart local v2       #eas14:Z
    .restart local v9       #s:Lcom/android/exchange/adapter/Serializer;
    :cond_3
    :try_start_4
    const-string v11, "Attachment download has been canceled"

    invoke-static {v11}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 230
    iget-object v11, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    .end local v9           #s:Lcom/android/exchange/adapter/Serializer;
    :goto_4
    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/android/exchange/EasSyncService;->mIsForAttachment:Z

    goto/16 :goto_0

    .line 212
    :cond_4
    :try_start_5
    iget-object v11, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v5, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 215
    .local v5, location:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v11, v11, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    const-wide/high16 v13, 0x4028

    cmpg-double v11, v11, v13

    if-gez v11, :cond_5

    .line 216
    invoke-static {v5}, Lcom/android/exchange/adapter/AttachmentLoader;->encodeForExchange2003(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 218
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "GetAttachment&AttachmentName="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, cmd:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mRequest:Lcom/android/exchange/PartRequest;

    iget-boolean v11, v11, Lcom/android/exchange/PartRequest;->mCancelled:Z

    if-nez v11, :cond_6

    .line 220
    iget-object v11, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v12, 0x0

    const/16 v13, 0x7530

    invoke-virtual {v11, v0, v12, v13}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lcom/android/exchange/EasResponse;

    move-result-object v8

    .restart local v8       #resp:Lcom/android/exchange/EasResponse;
    goto/16 :goto_2

    .line 222
    .end local v8           #resp:Lcom/android/exchange/EasResponse;
    :cond_6
    const-string v11, "Attachment download has been canceled"

    invoke-static {v11}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 230
    iget-object v11, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    goto :goto_4

    .line 226
    .end local v0           #cmd:Ljava/lang/String;
    .end local v5           #location:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 227
    .local v1, e:Ljava/io/IOException;
    :try_start_6
    iget-object v11, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/android/exchange/EasSyncService;->mHttpPostForAttachment:Lorg/apache/http/client/methods/HttpPost;

    .line 228
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 230
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    iget-object v12, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/android/exchange/EasSyncService;->mIsForAttachment:Z

    throw v11

    .line 251
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v6       #os:Ljava/io/OutputStream;
    .restart local v8       #resp:Lcom/android/exchange/EasResponse;
    .restart local v10       #status:I
    :cond_7
    :try_start_7
    invoke-virtual {v8}, Lcom/android/exchange/EasResponse;->getLength()I

    move-result v4

    .line 252
    .local v4, len:I
    if-eqz v4, :cond_c

    .line 255
    if-gez v4, :cond_8

    iget v4, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachmentSize:I

    .end local v4           #len:I
    :cond_8
    invoke-virtual {p0, v3, v6, v4}, Lcom/android/exchange/adapter/AttachmentLoader;->readChunked(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 256
    invoke-direct {p0}, Lcom/android/exchange/adapter/AttachmentLoader;->finishLoadAttachment()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 268
    if-eqz v6, :cond_9

    .line 269
    :try_start_8
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 270
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 276
    :cond_9
    invoke-virtual {v8}, Lcom/android/exchange/EasResponse;->close()V

    .line 277
    iget-object v11, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    goto/16 :goto_3

    .line 260
    :catch_1
    move-exception v1

    .line 261
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_9
    iget-object v11, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    const-string v12, "Can\'t get attachment; write file not found?"

    invoke-virtual {v11, v12}, Lcom/android/exchange/AbstractSyncService;->errorLog(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 268
    if-eqz v6, :cond_a

    .line 269
    :try_start_a
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 270
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 276
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v6           #os:Ljava/io/OutputStream;
    :cond_a
    :goto_5
    invoke-virtual {v8}, Lcom/android/exchange/EasResponse;->close()V

    .line 277
    iget-object v11, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/android/exchange/EasSyncService;->mHttpPostForAttachment:Lorg/apache/http/client/methods/HttpPost;

    .line 281
    const/16 v11, 0x11

    invoke-direct {p0, v11}, Lcom/android/exchange/adapter/AttachmentLoader;->doStatusCallback(I)V

    goto/16 :goto_0

    .line 262
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v6       #os:Ljava/io/OutputStream;
    :catch_2
    move-exception v1

    .line 265
    .local v1, e:Ljava/io/IOException;
    :try_start_b
    iget-object v11, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mResolver:Landroid/content/ContentResolver;

    iget-object v12, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mAttachmentUri:Landroid/net/Uri;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 266
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 268
    .end local v1           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v11

    if-eqz v6, :cond_b

    .line 269
    :try_start_c
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 270
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 268
    :cond_b
    throw v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 276
    .end local v3           #is:Ljava/io/InputStream;
    .end local v6           #os:Ljava/io/OutputStream;
    .end local v10           #status:I
    :catchall_2
    move-exception v11

    invoke-virtual {v8}, Lcom/android/exchange/EasResponse;->close()V

    .line 277
    iget-object v12, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/android/exchange/EasSyncService;->mHttpPostForAttachment:Lorg/apache/http/client/methods/HttpPost;

    .line 276
    throw v11

    .line 268
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v6       #os:Ljava/io/OutputStream;
    .restart local v10       #status:I
    :cond_c
    if-eqz v6, :cond_a

    .line 269
    :try_start_d
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 270
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_5
.end method

.method public readChunked(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 11
    .parameter "inputStream"
    .parameter "outputStream"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x4000

    const/4 v9, 0x0

    .line 115
    new-array v0, v10, [B

    .line 116
    .local v0, bytes:[B
    move v3, p3

    .line 119
    .local v3, length:I
    const/4 v6, 0x0

    .line 120
    .local v6, totalRead:I
    const/4 v1, -0x1

    .line 121
    .local v1, lastCallbackPct:I
    const/4 v2, 0x0

    .line 122
    .local v2, lastCallbackTotalRead:I
    iget-object v7, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    const-string v8, "Expected attachment length: "

    invoke-virtual {v7, v8, p3}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;I)V

    .line 124
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mRequest:Lcom/android/exchange/PartRequest;

    iget-boolean v7, v7, Lcom/android/exchange/PartRequest;->mCancelled:Z

    if-eqz v7, :cond_2

    .line 125
    iget-object v7, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v7, v7, Lcom/android/exchange/EasSyncService;->mHttpPostForAttachment:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v7, :cond_1

    .line 126
    iget-object v7, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v7, v7, Lcom/android/exchange/EasSyncService;->mHttpPostForAttachment:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 127
    iget-object v7, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/exchange/EasSyncService;->mHttpPostForAttachment:Lorg/apache/http/client/methods/HttpPost;

    .line 129
    :cond_1
    new-instance v7, Ljava/io/IOException;

    const-string v8, "part_request_canceled"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 131
    :cond_2
    invoke-virtual {p1, v0, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 132
    .local v5, read:I
    if-gez v5, :cond_4

    .line 134
    iget-object v7, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    const-string v8, "Attachment load reached EOF, totalRead: "

    invoke-virtual {v7, v8, v6}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;I)V

    .line 156
    if-le v6, v3, :cond_3

    .line 158
    iget-object v7, p0, Lcom/android/exchange/adapter/AttachmentLoader;->mService:Lcom/android/exchange/EasSyncService;

    const-string v8, "Read more than expected: "

    invoke-virtual {v7, v8, v6}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;I)V

    .line 160
    :cond_3
    return-void

    .line 139
    :cond_4
    add-int/2addr v6, v5

    .line 141
    invoke-virtual {p2, v0, v9, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 144
    if-lez v3, :cond_0

    .line 145
    mul-int/lit8 v7, v6, 0x64

    div-int v4, v7, v3

    .line 148
    .local v4, pct:I
    if-le v4, v1, :cond_0

    add-int/lit16 v7, v2, 0x4000

    if-le v6, v7, :cond_0

    .line 150
    invoke-direct {p0, v4}, Lcom/android/exchange/adapter/AttachmentLoader;->doProgressCallback(I)V

    .line 151
    move v2, v6

    .line 152
    move v1, v4

    goto :goto_0
.end method
