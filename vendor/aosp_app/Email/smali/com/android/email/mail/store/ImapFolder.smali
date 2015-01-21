.class public Lcom/android/email/mail/store/ImapFolder;
.super Lcom/android/emailcommon/mail/Folder;
.source "ImapFolder.java"


# static fields
.field private static final BASE64_RATIO:D = 0.73

.field private static final COPY_BUFFER_SIZE:I = 0x4000

.field private static final ENC_BASE64:Ljava/lang/String; = "base64"

.field private static final PERMANENT_FLAGS:[Lcom/android/emailcommon/mail/Flag;

.field private static sFetchSize:I


# instance fields
.field private mConnection:Lcom/android/email/mail/store/ImapConnection;

.field private mExists:Z

.field mHash:[Ljava/lang/Object;

.field mMailbox:Lcom/android/emailcommon/provider/Mailbox;

.field private mMessageCount:I

.field private mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

.field private final mName:Ljava/lang/String;

.field private final mStore:Lcom/android/email/mail/store/ImapStore;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 70
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/emailcommon/mail/Flag;

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/mail/store/ImapFolder;->PERMANENT_FLAGS:[Lcom/android/emailcommon/mail/Flag;

    .line 92
    sput v3, Lcom/android/email/mail/store/ImapFolder;->sFetchSize:I

    return-void
.end method

.method constructor <init>(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;)V
    .locals 1
    .parameter "store"
    .parameter "name"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/emailcommon/mail/Folder;-><init>()V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/mail/store/ImapFolder;->mMessageCount:I

    .line 95
    iput-object p1, p0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    .line 96
    iput-object p2, p0, Lcom/android/email/mail/store/ImapFolder;->mName:Ljava/lang/String;

    .line 97
    return-void
.end method

.method private checkOpen()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1240
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapFolder;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1241
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/mail/store/ImapFolder;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not open."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1243
    :cond_0
    return-void
.end method

.method private decodeBody(Lcom/android/email/mail/store/imap/ImapString;Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/android/emailcommon/mail/Body;
    .locals 11
    .parameter "imapString"
    .parameter "contentTransferEncoding"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 764
    invoke-virtual {p1}, Lcom/android/email/mail/store/imap/ImapString;->getAsStream()Ljava/io/InputStream;

    move-result-object v3

    .line 771
    .local v3, in:Ljava/io/InputStream;
    new-instance v4, Lorg/apache/james/mime4j/EOLConvertingInputStream;

    instance-of v9, p1, Lcom/android/email/mail/store/imap/ImapTempFileLiteral;

    if-eqz v9, :cond_0

    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-direct {v9, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v9

    .end local v3           #in:Ljava/io/InputStream;
    :cond_0
    invoke-direct {v4, v3}, Lorg/apache/james/mime4j/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 775
    .local v4, in:Ljava/io/InputStream;
    invoke-static {v4, p2}, Lcom/android/emailcommon/internet/MimeUtility;->getInputStreamForContentTransferEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 776
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    new-instance v7, Lcom/android/emailcommon/internet/BinaryTempFileBody;

    invoke-direct {v7}, Lcom/android/emailcommon/internet/BinaryTempFileBody;-><init>()V

    .line 777
    .local v7, tempBody:Lcom/android/emailcommon/internet/BinaryTempFileBody;
    invoke-virtual {v7}, Lcom/android/emailcommon/internet/BinaryTempFileBody;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 779
    .local v6, out:Ljava/io/OutputStream;
    const/16 v9, 0x4000

    :try_start_0
    new-array v1, v9, [B

    .line 780
    .local v1, buffer:[B
    const/4 v5, 0x0

    .line 781
    .local v5, n:I
    const/4 v2, 0x0

    .line 782
    .local v2, count:I
    :goto_0
    const/4 v9, -0x1

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-eq v9, v5, :cond_1

    .line 783
    const/4 v9, 0x0

    invoke-virtual {v6, v1, v9, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 784
    add-int/2addr v2, v5

    goto :goto_0

    .line 790
    :cond_1
    if-eqz p3, :cond_2

    .line 791
    const-string v9, "attachment copy finished, update loadAttachmentProgress 100"

    invoke-static {v9}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 792
    if-lez v2, :cond_3

    const/16 v9, 0x64

    :goto_1
    invoke-interface {p3, v9}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->loadAttachmentProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/util/Base64DataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    :cond_2
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 803
    .end local v1           #buffer:[B
    .end local v2           #count:I
    .end local v5           #n:I
    .end local v7           #tempBody:Lcom/android/emailcommon/internet/BinaryTempFileBody;
    :goto_2
    return-object v7

    .restart local v1       #buffer:[B
    .restart local v2       #count:I
    .restart local v5       #n:I
    .restart local v7       #tempBody:Lcom/android/emailcommon/internet/BinaryTempFileBody;
    :cond_3
    move v9, v10

    .line 792
    goto :goto_1

    .line 795
    .end local v1           #buffer:[B
    .end local v2           #count:I
    .end local v5           #n:I
    :catch_0
    move-exception v0

    .line 796
    .local v0, bde:Landroid/util/Base64DataException;
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/email/Email;->getMessageDecodeErrorString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 797
    .local v8, warning:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write([B)V

    .line 799
    const/4 v9, 0x0

    invoke-direct {p0, p1, v9, p3}, Lcom/android/email/mail/store/ImapFolder;->decodeBody(Lcom/android/email/mail/store/imap/ImapString;Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/android/emailcommon/mail/Body;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 801
    .end local v7           #tempBody:Lcom/android/emailcommon/internet/BinaryTempFileBody;
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    .end local v0           #bde:Landroid/util/Base64DataException;
    .end local v8           #warning:Ljava/lang/String;
    .restart local v7       #tempBody:Lcom/android/emailcommon/internet/BinaryTempFileBody;
    :catchall_0
    move-exception v9

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    throw v9
.end method

.method private destroyResponses()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    .line 103
    :cond_0
    return-void
.end method

.method private doSelect()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1210
    iget-object v5, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    const-string v6, "SELECT \"%s\""

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/email/mail/store/ImapFolder;->mName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v9, v9, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1215
    .local v4, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    sget-object v5, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    iput-object v5, p0, Lcom/android/email/mail/store/ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

    .line 1216
    const/4 v1, -0x1

    .line 1217
    .local v1, messageCount:I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 1218
    .local v2, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const-string v5, "EXISTS"

    invoke-virtual {v2, v10, v5}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1219
    invoke-virtual {v2, v11}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v1

    goto :goto_0

    .line 1220
    :cond_1
    invoke-virtual {v2}, Lcom/android/email/mail/store/imap/ImapResponse;->isOk()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1221
    invoke-virtual {v2}, Lcom/android/email/mail/store/imap/ImapResponse;->getResponseCodeOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v3

    .line 1222
    .local v3, responseCode:Lcom/android/email/mail/store/imap/ImapString;
    const-string v5, "READ-ONLY"

    invoke-virtual {v3, v5}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1223
    sget-object v5, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_ONLY:Lcom/android/emailcommon/mail/Folder$OpenMode;

    iput-object v5, p0, Lcom/android/email/mail/store/ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

    goto :goto_0

    .line 1224
    :cond_2
    const-string v5, "READ-WRITE"

    invoke-virtual {v3, v5}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1225
    sget-object v5, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    iput-object v5, p0, Lcom/android/email/mail/store/ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

    goto :goto_0

    .line 1227
    .end local v3           #responseCode:Lcom/android/email/mail/store/imap/ImapString;
    :cond_3
    invoke-virtual {v2}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1228
    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t open mailbox: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/email/mail/store/imap/ImapResponse;->getStatusResponseTextOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1232
    .end local v2           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_4
    const/4 v5, -0x1

    if-ne v1, v5, :cond_5

    .line 1233
    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    const-string v6, "Did not find message count during select"

    invoke-direct {v5, v6}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1235
    :cond_5
    iput v1, p0, Lcom/android/email/mail/store/ImapFolder;->mMessageCount:I

    .line 1236
    iput-boolean v10, p0, Lcom/android/email/mail/store/ImapFolder;->mExists:Z

    .line 1237
    return-void
.end method

.method private handleUntaggedResponse(Lcom/android/email/mail/store/imap/ImapResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 826
    const/4 v0, 0x1

    const-string v1, "EXISTS"

    invoke-virtual {p1, v0, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v0

    iput v0, p0, Lcom/android/email/mail/store/ImapFolder;->mMessageCount:I

    .line 829
    :cond_0
    return-void
.end method

.method private handleUntaggedResponses(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/imap/ImapResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 816
    .local p1, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 817
    .local v1, response:Lcom/android/email/mail/store/imap/ImapResponse;
    invoke-direct {p0, v1}, Lcom/android/email/mail/store/ImapFolder;->handleUntaggedResponse(Lcom/android/email/mail/store/imap/ImapResponse;)V

    goto :goto_0

    .line 819
    .end local v1           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_0
    return-void
.end method

.method private ioExceptionHandler(Lcom/android/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;
    .locals 2
    .parameter "connection"
    .parameter "ioe"

    .prologue
    .line 1246
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1247
    const-string v0, "Email"

    const-string v1, "IO Exception detected: "

    invoke-static {v0, v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1249
    :cond_0
    invoke-virtual {p1}, Lcom/android/email/mail/store/ImapConnection;->close()V

    .line 1250
    iget-object v0, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    if-ne p1, v0, :cond_1

    .line 1251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    .line 1252
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/ImapFolder;->close(Z)V

    .line 1254
    :cond_1
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "IO Error"

    invoke-direct {v0, v1, p2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected static isAsciiString(Ljava/lang/String;)Z
    .locals 4
    .parameter "str"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 458
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 459
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 460
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 461
    .local v0, c:C
    const/16 v3, 0x80

    if-lt v0, v3, :cond_0

    const/4 v3, 0x0

    .line 463
    .end local v0           #c:C
    :goto_1
    return v3

    .line 459
    .restart local v0       #c:C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 463
    .end local v0           #c:C
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private static parseBodyStructure(Lcom/android/email/mail/store/imap/ImapList;Lcom/android/emailcommon/mail/Part;Ljava/lang/String;)V
    .locals 30
    .parameter "bs"
    .parameter "part"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 837
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/email/mail/store/imap/ImapElement;->isList()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 841
    new-instance v18, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct/range {v18 .. v18}, Lcom/android/emailcommon/internet/MimeMultipart;-><init>()V

    .line 842
    .local v18, mp:Lcom/android/emailcommon/internet/MimeMultipart;
    const/4 v15, 0x0

    .local v15, i:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v11

    .local v11, count:I
    :goto_0
    if-ge v15, v11, :cond_2

    .line 843
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v12

    .line 844
    .local v12, e:Lcom/android/email/mail/store/imap/ImapElement;
    invoke-virtual {v12}, Lcom/android/email/mail/store/imap/ImapElement;->isList()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 849
    new-instance v7, Lcom/android/emailcommon/internet/MimeBodyPart;

    invoke-direct {v7}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>()V

    .line 850
    .local v7, bp:Lcom/android/emailcommon/internet/MimeBodyPart;
    const-string v22, "TEXT"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 851
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v22

    add-int/lit8 v23, v15, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v7, v1}, Lcom/android/email/mail/store/ImapFolder;->parseBodyStructure(Lcom/android/email/mail/store/imap/ImapList;Lcom/android/emailcommon/mail/Part;Ljava/lang/String;)V

    .line 856
    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/android/emailcommon/mail/Multipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V

    .line 842
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 854
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    add-int/lit8 v24, v15, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v7, v1}, Lcom/android/email/mail/store/ImapFolder;->parseBodyStructure(Lcom/android/email/mail/store/imap/ImapList;Lcom/android/emailcommon/mail/Part;Ljava/lang/String;)V

    goto :goto_1

    .line 859
    .end local v7           #bp:Lcom/android/emailcommon/internet/MimeBodyPart;
    :cond_1
    invoke-virtual {v12}, Lcom/android/email/mail/store/imap/ImapElement;->isString()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 860
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 865
    .end local v12           #e:Lcom/android/email/mail/store/imap/ImapElement;
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Part;->setBody(Lcom/android/emailcommon/mail/Body;)V

    .line 1037
    .end local v18           #mp:Lcom/android/emailcommon/internet/MimeMultipart;
    :goto_2
    return-void

    .line 882
    .end local v11           #count:I
    .end local v15           #i:I
    :cond_3
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v21

    .line 883
    .local v21, type:Lcom/android/email/mail/store/imap/ImapString;
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v20

    .line 884
    .local v20, subType:Lcom/android/email/mail/store/imap/ImapString;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v21 .. v21}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    .line 887
    .local v17, mimeType:Ljava/lang/String;
    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v6

    .line 888
    .local v6, bodyParams:Lcom/android/email/mail/store/imap/ImapList;
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v8

    .line 889
    .local v8, cid:Lcom/android/email/mail/store/imap/ImapString;
    const/16 v22, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v13

    .line 890
    .local v13, encoding:Lcom/android/email/mail/store/imap/ImapString;
    const/16 v22, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v19

    .line 893
    .local v19, size:I
    const/16 v16, 0x0

    .line 894
    .local v16, isRfc822Msg:Z
    const-string v22, "message/rfc822"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 906
    const-string v22, "BODYSTRUCTURE message/rfc822 now supported but still not so complete"

    invoke-static/range {v22 .. v22}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;)V

    .line 908
    const/16 v16, 0x1

    .line 916
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 922
    .local v10, contentType:Ljava/lang/StringBuilder;
    const/4 v15, 0x1

    .restart local v15       #i:I
    invoke-virtual {v6}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v11

    .restart local v11       #count:I
    :goto_3
    if-ge v15, v11, :cond_5

    .line 927
    const-string v22, ";\n %s=\"%s\""

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    add-int/lit8 v25, v15, -0x1

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-virtual {v6, v15}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    add-int/lit8 v15, v15, 0x2

    goto :goto_3

    .line 932
    :cond_5
    const-string v22, "Content-Type"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    const/4 v3, 0x0

    .line 938
    .local v3, bodyDisposition:Lcom/android/email/mail/store/imap/ImapList;
    const-string v22, "TEXT"

    invoke-virtual/range {v21 .. v22}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    const/16 v22, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/email/mail/store/imap/ImapElement;->isList()Z

    move-result v22

    if-eqz v22, :cond_8

    .line 942
    const/16 v22, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v3

    .line 947
    :cond_6
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 950
    .local v9, contentDisposition:Ljava/lang/StringBuilder;
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v22

    if-lez v22, :cond_9

    .line 951
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 953
    .local v4, bodyDisposition0Str:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 954
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    :cond_7
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v5

    .line 958
    .local v5, bodyDispositionParams:Lcom/android/email/mail/store/imap/ImapList;
    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_b

    .line 963
    const/4 v15, 0x1

    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v11

    :goto_5
    if-ge v15, v11, :cond_b

    .line 966
    const-string v22, ";\n %s=\"%s\""

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    add-int/lit8 v25, v15, -0x1

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-virtual {v5, v15}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    add-int/lit8 v15, v15, 0x2

    goto :goto_5

    .line 943
    .end local v4           #bodyDisposition0Str:Ljava/lang/String;
    .end local v5           #bodyDispositionParams:Lcom/android/email/mail/store/imap/ImapList;
    .end local v9           #contentDisposition:Ljava/lang/StringBuilder;
    :cond_8
    if-nez v16, :cond_6

    .line 944
    const/16 v22, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v3

    goto :goto_4

    .line 972
    .restart local v9       #contentDisposition:Ljava/lang/StringBuilder;
    :cond_9
    if-eqz v16, :cond_b

    .line 974
    const-string v22, "%s"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 975
    .local v14, fileName:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_b

    .line 976
    const-string v22, "\""

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a

    const-string v22, "\""

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 977
    const/16 v22, 0x1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 980
    :cond_a
    const-string v22, "Content-Disposition: attachment; %s=\"%s\""

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "filename"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v14, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    .end local v14           #fileName:Ljava/lang/String;
    :cond_b
    if-lez v19, :cond_c

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "size"

    invoke-static/range {v22 .. v23}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_c

    .line 991
    const-string v22, "base64"

    invoke-virtual {v13}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 993
    sget-object v22, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v23, ";\n size=%d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x3fe75c28f5c28f5cL

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    :cond_c
    :goto_6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    if-lez v22, :cond_d

    .line 1005
    const-string v22, "Content-Disposition"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    :cond_d
    invoke-virtual {v13}, Lcom/android/email/mail/store/imap/ImapString;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_e

    .line 1014
    const-string v22, "Content-Transfer-Encoding"

    invoke-virtual {v13}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    :cond_e
    invoke-virtual {v8}, Lcom/android/email/mail/store/imap/ImapString;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_f

    .line 1022
    const-string v22, "Content-ID"

    invoke-virtual {v8}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    :cond_f
    if-lez v19, :cond_10

    .line 1026
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    move/from16 v22, v0

    if-eqz v22, :cond_12

    move-object/from16 v22, p1

    .line 1027
    check-cast v22, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setSize(I)V

    .line 1034
    :cond_10
    :goto_7
    const-string v22, "X-Android-Attachment-StoreData"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 996
    :cond_11
    sget-object v22, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v23, ";\n size=%d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1028
    :cond_12
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/emailcommon/internet/MimeBodyPart;

    move/from16 v22, v0

    if-eqz v22, :cond_13

    move-object/from16 v22, p1

    .line 1029
    check-cast v22, Lcom/android/emailcommon/internet/MimeBodyPart;

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/internet/MimeBodyPart;->setSize(I)V

    goto :goto_7

    .line 1031
    :cond_13
    new-instance v22, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unknown part type "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v22
.end method


# virtual methods
.method public appendMessages([Lcom/android/emailcommon/mail/Message;)V
    .locals 27
    .parameter "messages"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1046
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapFolder;->checkOpen()V

    .line 1048
    move-object/from16 v3, p1

    .local v3, arr$:[Lcom/android/emailcommon/mail/Message;
    :try_start_0
    array-length v12, v3

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v12, :cond_a

    aget-object v13, v3, v10

    .line 1050
    .local v13, message:Lcom/android/emailcommon/mail/Message;
    new-instance v15, Lcom/android/email/mail/transport/CountingOutputStream;

    invoke-direct {v15}, Lcom/android/email/mail/transport/CountingOutputStream;-><init>()V

    .line 1051
    .local v15, out:Lcom/android/email/mail/transport/CountingOutputStream;
    new-instance v5, Lcom/android/email/mail/transport/EOLConvertingOutputStream;

    invoke-direct {v5, v15}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1052
    .local v5, eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    invoke-virtual {v13, v5}, Lcom/android/emailcommon/mail/Message;->writeTo(Ljava/io/OutputStream;)V

    .line 1053
    invoke-virtual {v5}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->flush()V

    .line 1055
    const-string v7, ""

    .line 1056
    .local v7, flagList:Ljava/lang/String;
    invoke-virtual {v13}, Lcom/android/emailcommon/mail/Message;->getFlags()[Lcom/android/emailcommon/mail/Flag;

    move-result-object v8

    .line 1057
    .local v8, flags:[Lcom/android/emailcommon/mail/Flag;
    array-length v0, v8

    move/from16 v20, v0

    if-lez v20, :cond_3

    .line 1058
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1059
    .local v17, sb:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .local v9, i:I
    array-length v4, v8

    .local v4, count:I
    :goto_1
    if-ge v9, v4, :cond_2

    .line 1060
    aget-object v6, v8, v9

    .line 1061
    .local v6, flag:Lcom/android/emailcommon/mail/Flag;
    sget-object v20, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v20

    if-ne v6, v0, :cond_1

    .line 1062
    const-string v20, " \\SEEN"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    :cond_0
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1063
    :cond_1
    sget-object v20, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v20

    if-ne v6, v0, :cond_0

    .line 1064
    const-string v20, " \\FLAGGED"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1130
    .end local v4           #count:I
    .end local v5           #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    .end local v6           #flag:Lcom/android/emailcommon/mail/Flag;
    .end local v7           #flagList:Ljava/lang/String;
    .end local v8           #flags:[Lcom/android/emailcommon/mail/Flag;
    .end local v9           #i:I
    .end local v10           #i$:I
    .end local v12           #len$:I
    .end local v13           #message:Lcom/android/emailcommon/mail/Message;
    .end local v15           #out:Lcom/android/email/mail/transport/CountingOutputStream;
    .end local v17           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v11

    .line 1131
    .local v11, ioe:Ljava/io/IOException;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v11}, Lcom/android/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v20

    throw v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1133
    .end local v11           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v20

    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    throw v20

    .line 1067
    .restart local v4       #count:I
    .restart local v5       #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    .restart local v7       #flagList:Ljava/lang/String;
    .restart local v8       #flags:[Lcom/android/emailcommon/mail/Flag;
    .restart local v9       #i:I
    .restart local v10       #i$:I
    .restart local v12       #len$:I
    .restart local v13       #message:Lcom/android/emailcommon/mail/Message;
    .restart local v15       #out:Lcom/android/email/mail/transport/CountingOutputStream;
    .restart local v17       #sb:Ljava/lang/StringBuilder;
    :cond_2
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-lez v20, :cond_3

    .line 1068
    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1072
    .end local v4           #count:I
    .end local v9           #i:I
    .end local v17           #sb:Ljava/lang/StringBuilder;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    move-object/from16 v20, v0

    sget-object v21, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v22, "APPEND \"%s\" (%s) {%d}"

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapFolder;->mName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v7, v23, v24

    const/16 v24, 0x2

    invoke-virtual {v15}, Lcom/android/email/mail/transport/CountingOutputStream;->getCount()J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v21 .. v23}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/android/email/mail/store/ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 1080
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/mail/store/ImapConnection;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v16

    .line 1081
    .local v16, response:Lcom/android/email/mail/store/imap/ImapResponse;
    invoke-virtual/range {v16 .. v16}, Lcom/android/email/mail/store/imap/ImapResponse;->isContinuationRequest()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1082
    new-instance v5, Lcom/android/email/mail/transport/EOLConvertingOutputStream;

    .end local v5           #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/email/mail/Transport;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1084
    .restart local v5       #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    invoke-virtual {v13, v5}, Lcom/android/emailcommon/mail/Message;->writeTo(Ljava/io/OutputStream;)V

    .line 1085
    const/16 v20, 0xd

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->write(I)V

    .line 1086
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->write(I)V

    .line 1087
    invoke-virtual {v5}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->flush()V

    .line 1091
    :cond_5
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1099
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v2

    .line 1100
    .local v2, appendList:Lcom/android/email/mail/store/imap/ImapList;
    invoke-virtual {v2}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_8

    const/16 v20, 0x0

    const-string v21, "APPENDUID"

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->is(ILjava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1101
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v18

    .line 1102
    .local v18, serverUid:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 1103
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/android/emailcommon/mail/Message;->setUid(Ljava/lang/String;)V

    .line 1048
    .end local v18           #serverUid:Ljava/lang/String;
    :cond_6
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 1088
    .end local v2           #appendList:Lcom/android/email/mail/store/imap/ImapList;
    :cond_7
    invoke-virtual/range {v16 .. v16}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v20

    if-nez v20, :cond_5

    .line 1089
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/email/mail/store/ImapFolder;->handleUntaggedResponse(Lcom/android/email/mail/store/imap/ImapResponse;)V

    goto :goto_3

    .line 1113
    .restart local v2       #appendList:Lcom/android/email/mail/store/imap/ImapList;
    :cond_8
    invoke-virtual {v13}, Lcom/android/emailcommon/mail/Message;->getMessageId()Ljava/lang/String;

    move-result-object v14

    .line 1114
    .local v14, messageId:Ljava/lang/String;
    if-eqz v14, :cond_6

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v20

    if-eqz v20, :cond_6

    .line 1119
    const-string v20, "HEADER MESSAGE-ID %s"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v14, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 1120
    .local v19, uids:[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_9

    .line 1121
    const/16 v20, 0x0

    aget-object v20, v19, v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/emailcommon/mail/Message;->setUid(Ljava/lang/String;)V

    .line 1125
    :cond_9
    const-string v20, "(HEADER MESSAGE-ID %s)"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v14, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 1126
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_6

    .line 1127
    const/16 v20, 0x0

    aget-object v20, v19, v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/emailcommon/mail/Message;->setUid(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 1133
    .end local v2           #appendList:Lcom/android/email/mail/store/imap/ImapList;
    .end local v5           #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    .end local v7           #flagList:Ljava/lang/String;
    .end local v8           #flags:[Lcom/android/emailcommon/mail/Flag;
    .end local v13           #message:Lcom/android/emailcommon/mail/Message;
    .end local v14           #messageId:Ljava/lang/String;
    .end local v15           #out:Lcom/android/email/mail/transport/CountingOutputStream;
    .end local v16           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v19           #uids:[Ljava/lang/String;
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    .line 1135
    return-void
.end method

.method public canCreate(Lcom/android/emailcommon/mail/Folder$FolderType;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method public close(Z)V
    .locals 2
    .parameter "expunge"

    .prologue
    .line 172
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/mail/store/ImapFolder;->mMessageCount:I

    .line 173
    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v1, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapConnection;)V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    .line 176
    monitor-exit p0

    .line 177
    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public closeConnection()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapConnection;->close()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    .line 183
    :cond_0
    return-void
.end method

.method complexSearchForUids(Ljava/util/List;)[Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 512
    .local p1, commands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->checkOpen()V

    .line 515
    :try_start_0
    iget-object v2, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/email/mail/store/ImapConnection;->executeComplexCommand(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/email/mail/store/ImapFolder;->getSearchUids(Ljava/util/List;)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 522
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    :goto_0
    return-object v2

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, e:Lcom/android/email/mail/store/ImapStore$ImapException;
    :try_start_1
    sget-object v2, Lcom/android/emailcommon/utility/Utility;->EMPTY_STRINGS:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 522
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    goto :goto_0

    .line 518
    .end local v0           #e:Lcom/android/email/mail/store/ImapStore$ImapException;
    :catch_1
    move-exception v1

    .line 519
    .local v1, ioe:Ljava/io/IOException;
    :try_start_2
    iget-object v2, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    invoke-direct {p0, v2, v1}, Lcom/android/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 522
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    throw v2
.end method

.method public copyMessages([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;)V
    .locals 29
    .parameter "messages"
    .parameter "folder"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapFolder;->checkOpen()V

    .line 278
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    move-object/from16 v23, v0

    const-string v24, "UID COPY %s \"%s\""

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/email/mail/store/ImapStore;->joinMessageUids([Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v20

    .line 283
    .local v20, responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 284
    .local v12, messageMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/mail/Message;>;"
    const/4 v5, 0x0

    .line 285
    .local v5, handledUidPlus:Z
    move-object/from16 v2, p1

    .local v2, arr$:[Lcom/android/emailcommon/mail/Message;
    array-length v10, v2

    .local v10, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v10, :cond_0

    aget-object v11, v2, v7

    .line 286
    .local v11, m:Lcom/android/emailcommon/mail/Message;
    invoke-virtual {v11}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v12, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 289
    .end local v11           #m:Lcom/android/emailcommon/mail/Message;
    :cond_0
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 291
    .local v18, response:Lcom/android/email/mail/store/imap/ImapResponse;
    invoke-virtual/range {v18 .. v18}, Lcom/android/email/mail/store/imap/ImapResponse;->isBad()Z

    move-result v23

    if-nez v23, :cond_2

    invoke-virtual/range {v18 .. v18}, Lcom/android/email/mail/store/imap/ImapResponse;->isNo()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-virtual/range {v18 .. v18}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 292
    :cond_2
    invoke-virtual/range {v18 .. v18}, Lcom/android/email/mail/store/imap/ImapResponse;->getStatusResponseTextOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v21

    .line 293
    .local v21, responseText:Ljava/lang/String;
    new-instance v23, Lcom/android/emailcommon/mail/MessagingException;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .end local v2           #arr$:[Lcom/android/emailcommon/mail/Message;
    .end local v5           #handledUidPlus:Z
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v10           #len$:I
    .end local v12           #messageMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/mail/Message;>;"
    .end local v18           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v20           #responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    .end local v21           #responseText:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 350
    .local v9, ioe:Ljava/io/IOException;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v9}, Lcom/android/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v23

    throw v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    .end local v9           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v23

    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    throw v23

    .line 296
    .restart local v2       #arr$:[Lcom/android/emailcommon/mail/Message;
    .restart local v5       #handledUidPlus:Z
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v10       #len$:I
    .restart local v12       #messageMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/mail/Message;>;"
    .restart local v18       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v20       #responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_3
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 301
    if-eqz p3, :cond_1

    .line 304
    const/16 v23, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v3

    .line 305
    .local v3, copyResponse:Lcom/android/email/mail/store/imap/ImapList;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v19

    .line 306
    .local v19, responseCode:Ljava/lang/String;
    const-string v23, "COPYUID"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 307
    const/4 v5, 0x1

    .line 308
    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v17

    .line 309
    .local v17, origIdSet:Ljava/lang/String;
    const/16 v23, 0x3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v15

    .line 310
    .local v15, newIdSet:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/email/mail/store/imap/ImapUtility;->getImapSequenceValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 311
    .local v16, origIdArray:[Ljava/lang/String;
    invoke-static {v15}, Lcom/android/email/mail/store/imap/ImapUtility;->getImapSequenceValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 313
    .local v14, newIdArray:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    array-length v0, v14

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    .line 314
    new-instance v23, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Set length mis-match; orig IDs \""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\"  new IDs \""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 317
    :cond_4
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v6, v0, :cond_1

    .line 318
    aget-object v8, v16, v6

    .line 319
    .local v8, id:Ljava/lang/String;
    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/emailcommon/mail/Message;

    .line 320
    .restart local v11       #m:Lcom/android/emailcommon/mail/Message;
    if-eqz v11, :cond_5

    .line 321
    aget-object v23, v14, v6

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v11, v1}, Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;->onMessageUidChange(Lcom/android/emailcommon/mail/Message;Ljava/lang/String;)V

    .line 317
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 327
    .end local v3           #copyResponse:Lcom/android/email/mail/store/imap/ImapList;
    .end local v6           #i:I
    .end local v8           #id:Ljava/lang/String;
    .end local v11           #m:Lcom/android/emailcommon/mail/Message;
    .end local v14           #newIdArray:[Ljava/lang/String;
    .end local v15           #newIdSet:Ljava/lang/String;
    .end local v16           #origIdArray:[Ljava/lang/String;
    .end local v17           #origIdSet:Ljava/lang/String;
    .end local v18           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v19           #responseCode:Ljava/lang/String;
    :cond_6
    if-eqz p3, :cond_9

    if-nez v5, :cond_9

    .line 328
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/email/mail/store/ImapFolder;

    move-object v13, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 331
    .local v13, newFolder:Lcom/android/email/mail/store/ImapFolder;
    :try_start_3
    sget-object v23, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/android/email/mail/store/ImapFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 333
    move-object/from16 v2, p1

    array-length v10, v2

    const/4 v7, 0x0

    .local v7, i$:I
    :goto_2
    if-ge v7, v10, :cond_8

    aget-object v11, v2, v7

    .line 334
    .restart local v11       #m:Lcom/android/emailcommon/mail/Message;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "HEADER Message-Id \""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Lcom/android/emailcommon/mail/Message;->getMessageId()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 335
    .local v22, searchString:Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/android/email/mail/store/ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 336
    .restart local v14       #newIdArray:[Ljava/lang/String;
    array-length v0, v14

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 337
    const/16 v23, 0x0

    aget-object v23, v14, v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v11, v1}, Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;->onMessageUidChange(Lcom/android/emailcommon/mail/Message;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1

    .line 333
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 344
    .end local v11           #m:Lcom/android/emailcommon/mail/Message;
    .end local v14           #newIdArray:[Ljava/lang/String;
    .end local v22           #searchString:Ljava/lang/String;
    :cond_8
    const/16 v23, 0x0

    :try_start_4
    move/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/android/email/mail/store/ImapFolder;->close(Z)V

    .line 347
    .end local v7           #i$:I
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapFolder;->doSelect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 352
    .end local v13           #newFolder:Lcom/android/email/mail/store/ImapFolder;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    .line 354
    return-void

    .line 340
    .restart local v13       #newFolder:Lcom/android/email/mail/store/ImapFolder;
    :catch_1
    move-exception v4

    .line 342
    .local v4, e:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_5
    const-string v23, "Email"

    const-string v24, "Failed to find message"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 344
    const/16 v23, 0x0

    :try_start_6
    move/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/android/email/mail/store/ImapFolder;->close(Z)V

    goto :goto_3

    .end local v4           #e:Lcom/android/emailcommon/mail/MessagingException;
    :catchall_1
    move-exception v23

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/android/email/mail/store/ImapFolder;->close(Z)V

    throw v23
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
.end method

.method public create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z
    .locals 10
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, connection:Lcom/android/email/mail/store/ImapConnection;
    monitor-enter p0

    .line 248
    :try_start_0
    iget-object v5, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    if-nez v5, :cond_1

    .line 249
    iget-object v5, p0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v5}, Lcom/android/email/mail/store/ImapStore;->getConnection()Lcom/android/email/mail/store/ImapConnection;

    move-result-object v0

    .line 253
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :try_start_1
    const-string v5, "CREATE \"%s\""

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/email/mail/store/ImapFolder;->mName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v9, v9, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 266
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    .line 267
    iget-object v4, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    if-nez v4, :cond_0

    .line 268
    iget-object v4, p0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapConnection;)V

    :cond_0
    :goto_1
    return v3

    .line 251
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    goto :goto_0

    .line 253
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 259
    :catch_0
    move-exception v2

    .line 266
    .local v2, me:Lcom/android/emailcommon/mail/MessagingException;
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    .line 267
    iget-object v3, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    if-nez v3, :cond_2

    .line 268
    iget-object v3, p0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapConnection;)V

    :cond_2
    move v3, v4

    goto :goto_1

    .line 262
    .end local v2           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_1
    move-exception v1

    .line 263
    .local v1, ioe:Ljava/io/IOException;
    :try_start_3
    invoke-direct {p0, v0, v1}, Lcom/android/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v3

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 266
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    .line 267
    iget-object v4, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    if-nez v4, :cond_3

    .line 268
    iget-object v4, p0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapConnection;)V

    :cond_3
    throw v3
.end method

.method public createMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
    .locals 1
    .parameter "uid"

    .prologue
    .line 1267
    new-instance v0, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    invoke-direct {v0, p1, p0}, Lcom/android/email/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/email/mail/store/ImapFolder;)V

    return-object v0
.end method

.method public delete(Z)V
    .locals 2
    .parameter "recurse"

    .prologue
    .line 386
    new-instance v0, Ljava/lang/Error;

    const-string v1, "ImapStore.delete() not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 1259
    instance-of v0, p1, Lcom/android/email/mail/store/ImapFolder;

    if-eqz v0, :cond_0

    .line 1260
    check-cast p1, Lcom/android/email/mail/store/ImapFolder;

    .end local p1
    iget-object v0, p1, Lcom/android/email/mail/store/ImapFolder;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/mail/store/ImapFolder;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1262
    :goto_0
    return v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public exists()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 192
    iget-boolean v5, p0, Lcom/android/email/mail/store/ImapFolder;->mExists:Z

    if-eqz v5, :cond_1

    .line 228
    :cond_0
    :goto_0
    return v3

    .line 200
    :cond_1
    const/4 v0, 0x0

    .line 201
    .local v0, connection:Lcom/android/email/mail/store/ImapConnection;
    monitor-enter p0

    .line 202
    :try_start_0
    iget-object v5, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    if-nez v5, :cond_2

    .line 203
    iget-object v5, p0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v5}, Lcom/android/email/mail/store/ImapStore;->getConnection()Lcom/android/email/mail/store/ImapConnection;

    move-result-object v0

    .line 207
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :try_start_1
    const-string v5, "STATUS \"%s\" (UIDVALIDITY)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/email/mail/store/ImapFolder;->mName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v9, v9, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 212
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/email/mail/store/ImapFolder;->mExists:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 226
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    .line 227
    iget-object v4, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    if-nez v4, :cond_0

    .line 228
    iget-object v4, p0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapConnection;)V

    goto :goto_0

    .line 205
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    goto :goto_1

    .line 207
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 215
    :catch_0
    move-exception v2

    .line 217
    .local v2, me:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_3
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v5

    if-ne v5, v3, :cond_4

    .line 218
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 226
    .end local v2           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catchall_1
    move-exception v3

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    .line 227
    iget-object v4, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    if-nez v4, :cond_3

    .line 228
    iget-object v4, p0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapConnection;)V

    :cond_3
    throw v3

    .line 226
    .restart local v2       #me:Lcom/android/emailcommon/mail/MessagingException;
    :cond_4
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    .line 227
    iget-object v3, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    if-nez v3, :cond_5

    .line 228
    iget-object v3, p0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapConnection;)V

    :cond_5
    move v3, v4

    goto :goto_0

    .line 222
    .end local v2           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_1
    move-exception v1

    .line 223
    .local v1, ioe:Ljava/io/IOException;
    :try_start_4
    invoke-direct {p0, v0, v1}, Lcom/android/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v3

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
.end method

.method public expunge()[Lcom/android/emailcommon/mail/Message;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1139
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->checkOpen()V

    .line 1141
    :try_start_0
    iget-object v1, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    const-string v2, "EXPUNGE"

    invoke-virtual {v1, v2}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/mail/store/ImapFolder;->handleUntaggedResponses(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1145
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    .line 1147
    const/4 v1, 0x0

    return-object v1

    .line 1142
    :catch_0
    move-exception v0

    .line 1143
    .local v0, ioe:Ljava/io/IOException;
    :try_start_1
    iget-object v1, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1145
    .end local v0           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    throw v1
.end method

.method public fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .locals 4
    .parameter "messages"
    .parameter "fp"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 584
    const/4 v1, -0x1

    :try_start_0
    sput v1, Lcom/android/email/mail/store/ImapFolder;->sFetchSize:I

    .line 585
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/mail/store/ImapFolder;->fetchInternal([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    return-void

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception detected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v1, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    if-eqz v1, :cond_0

    .line 589
    iget-object v1, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapConnection;->logLastDiscourse()V

    .line 591
    :cond_0
    throw v0
.end method

.method public fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;I)V
    .locals 2
    .parameter "messages"
    .parameter "fp"
    .parameter "listener"
    .parameter "fetchSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 569
    :try_start_0
    sput p4, Lcom/android/email/mail/store/ImapFolder;->sFetchSize:I

    .line 570
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/mail/store/ImapFolder;->fetchInternal([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    return-void

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, e:Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    if-eqz v1, :cond_0

    .line 573
    iget-object v1, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapConnection;->logLastDiscourse()V

    .line 575
    :cond_0
    throw v0
.end method

.method public fetchInternal([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .locals 38
    .parameter "messages"
    .parameter "fp"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 597
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v32, v0

    if-nez v32, :cond_0

    .line 753
    :goto_0
    return-void

    .line 600
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapFolder;->checkOpen()V

    .line 601
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 602
    .local v26, messageMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/mail/Message;>;"
    move-object/from16 v3, p1

    .local v3, arr$:[Lcom/android/emailcommon/mail/Message;
    array-length v0, v3

    move/from16 v23, v0

    .local v23, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    aget-object v24, v3, v19

    .line 603
    .local v24, m:Lcom/android/emailcommon/mail/Message;
    invoke-virtual/range {v24 .. v24}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 617
    .end local v24           #m:Lcom/android/emailcommon/mail/Message;
    :cond_1
    new-instance v12, Ljava/util/LinkedHashSet;

    invoke-direct {v12}, Ljava/util/LinkedHashSet;-><init>()V

    .line 619
    .local v12, fetchFields:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    const-string v32, "UID"

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 620
    sget-object v32, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2

    .line 621
    const-string v32, "FLAGS"

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 623
    :cond_2
    sget-object v32, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_3

    .line 624
    const-string v32, "INTERNALDATE"

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 625
    const-string v32, "RFC822.SIZE"

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 626
    const-string v32, "BODY.PEEK[HEADER.FIELDS (date subject from content-type to cc message-id)]"

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 628
    :cond_3
    sget-object v32, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_4

    .line 629
    const-string v32, "BODYSTRUCTURE"

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 632
    :cond_4
    sget-object v32, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_5

    .line 633
    sget-object v32, Lcom/android/email/mail/store/imap/ImapConstants;->FETCH_FIELD_BODY_PEEK_SANE:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 635
    :cond_5
    sget-object v32, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_6

    .line 636
    const-string v32, "BODY.PEEK[]"

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 639
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/FetchProfile;->getFirstPart()Lcom/android/emailcommon/mail/Part;

    move-result-object v14

    .line 640
    .local v14, fetchPart:Lcom/android/emailcommon/mail/Part;
    if-eqz v14, :cond_7

    .line 641
    const-string v32, "X-Android-Attachment-StoreData"

    move-object/from16 v0, v32

    invoke-interface {v14, v0}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 643
    .local v28, partIds:[Ljava/lang/String;
    if-eqz v28, :cond_7

    .line 645
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "BODY.PEEK["

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x0

    aget-object v33, v28, v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "]"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget v32, Lcom/android/email/mail/store/ImapFolder;->sFetchSize:I

    if-lez v32, :cond_9

    sget-object v32, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v34, "<0.%d>"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    sget v37, Lcom/android/email/mail/store/ImapFolder;->sFetchSize:I

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    :goto_2
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 651
    .end local v28           #partIds:[Ljava/lang/String;
    :cond_7
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    move-object/from16 v32, v0

    const-string v33, "UID FETCH %s (%s)"

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/email/mail/store/ImapStore;->joinMessageUids([Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x1

    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v36

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v12, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v36

    const/16 v37, 0x20

    invoke-static/range {v36 .. v37}, Lcom/android/emailcommon/utility/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Lcom/android/email/mail/store/ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    const/16 v27, 0x0

    .line 658
    .local v27, messageNumber:I
    :cond_8
    const/16 v29, 0x0

    .line 660
    .local v29, response:Lcom/android/email/mail/store/imap/ImapResponse;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapConnection;->readResponse(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v29

    .line 662
    const/16 v32, 0x1

    const-string v33, "FETCH"

    move-object/from16 v0, v29

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v32

    if-nez v32, :cond_a

    .line 747
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    .line 749
    :goto_3
    invoke-virtual/range {v29 .. v29}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v32

    if-eqz v32, :cond_8

    goto/16 :goto_0

    .line 645
    .end local v27           #messageNumber:I
    .end local v29           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v28       #partIds:[Ljava/lang/String;
    :cond_9
    const-string v32, ""

    goto :goto_2

    .line 665
    .end local v28           #partIds:[Ljava/lang/String;
    .restart local v27       #messageNumber:I
    .restart local v29       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_a
    const/16 v32, 0x2

    :try_start_3
    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v13

    .line 666
    .local v13, fetchList:Lcom/android/email/mail/store/imap/ImapList;
    const-string v32, "UID"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v31

    .line 668
    .local v31, uid:Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v32

    if-eqz v32, :cond_b

    .line 747
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 750
    .end local v13           #fetchList:Lcom/android/email/mail/store/imap/ImapList;
    .end local v27           #messageNumber:I
    .end local v29           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v31           #uid:Ljava/lang/String;
    :catch_0
    move-exception v22

    .line 751
    .local v22, ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v32

    throw v32

    .line 670
    .end local v22           #ioe:Ljava/io/IOException;
    .restart local v13       #fetchList:Lcom/android/email/mail/store/imap/ImapList;
    .restart local v27       #messageNumber:I
    .restart local v29       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v31       #uid:Ljava/lang/String;
    :cond_b
    :try_start_5
    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/email/mail/store/ImapStore$ImapMessage;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 671
    .local v25, message:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    if-nez v25, :cond_c

    .line 747
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    .line 673
    :cond_c
    :try_start_7
    sget-object v32, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_11

    .line 674
    const-string v32, "FLAGS"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedListOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v16

    .line 676
    .local v16, flags:Lcom/android/email/mail/store/imap/ImapList;
    const/16 v18, 0x0

    .local v18, i:I
    invoke-virtual/range {v16 .. v16}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v9

    .local v9, count:I
    :goto_4
    move/from16 v0, v18

    if-ge v0, v9, :cond_11

    .line 677
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v15

    .line 678
    .local v15, flag:Lcom/android/email/mail/store/imap/ImapString;
    const-string v32, "\\DELETED"

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_e

    .line 679
    sget-object v32, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    const/16 v33, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 676
    :cond_d
    :goto_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 680
    :cond_e
    const-string v32, "\\ANSWERED"

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_f

    .line 681
    sget-object v32, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    const/16 v33, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    .line 747
    .end local v9           #count:I
    .end local v13           #fetchList:Lcom/android/email/mail/store/imap/ImapList;
    .end local v15           #flag:Lcom/android/email/mail/store/imap/ImapString;
    .end local v16           #flags:Lcom/android/email/mail/store/imap/ImapList;
    .end local v18           #i:I
    .end local v25           #message:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    .end local v31           #uid:Ljava/lang/String;
    :catchall_0
    move-exception v32

    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    throw v32
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 682
    .restart local v9       #count:I
    .restart local v13       #fetchList:Lcom/android/email/mail/store/imap/ImapList;
    .restart local v15       #flag:Lcom/android/email/mail/store/imap/ImapString;
    .restart local v16       #flags:Lcom/android/email/mail/store/imap/ImapList;
    .restart local v18       #i:I
    .restart local v25       #message:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    .restart local v31       #uid:Ljava/lang/String;
    :cond_f
    :try_start_9
    const-string v32, "\\SEEN"

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_10

    .line 683
    sget-object v32, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    const/16 v33, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    goto :goto_5

    .line 684
    :cond_10
    const-string v32, "\\FLAGGED"

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_d

    .line 685
    sget-object v32, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    const/16 v33, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    goto :goto_5

    .line 689
    .end local v9           #count:I
    .end local v15           #flag:Lcom/android/email/mail/store/imap/ImapString;
    .end local v16           #flags:Lcom/android/email/mail/store/imap/ImapList;
    .end local v18           #i:I
    :cond_11
    sget-object v32, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_12

    .line 690
    const-string v32, "INTERNALDATE"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/email/mail/store/imap/ImapString;->getDateOrNull()Ljava/util/Date;

    move-result-object v21

    .line 692
    .local v21, internalDate:Ljava/util/Date;
    const-string v32, "RFC822.SIZE"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v30

    .line 694
    .local v30, size:I
    const-string v32, "BODY[HEADER"

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v13, v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/email/mail/store/imap/ImapString;->getAsStream()Ljava/io/InputStream;

    move-result-object v17

    .line 697
    .local v17, header:Ljava/io/InputStream;
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->setInternalDate(Ljava/util/Date;)V

    .line 698
    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setSize(I)V

    .line 699
    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->parse(Ljava/io/InputStream;)V

    .line 701
    .end local v17           #header:Ljava/io/InputStream;
    .end local v21           #internalDate:Ljava/util/Date;
    .end local v30           #size:I
    :cond_12
    sget-object v32, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_13

    .line 702
    const-string v32, "BODYSTRUCTURE"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedListOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v6

    .line 704
    .local v6, bs:Lcom/android/email/mail/store/imap/ImapList;
    invoke-virtual {v6}, Lcom/android/email/mail/store/imap/ImapList;->isEmpty()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v32

    if-nez v32, :cond_13

    .line 706
    :try_start_a
    const-string v32, "TEXT"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-static {v6, v0, v1}, Lcom/android/email/mail/store/ImapFolder;->parseBodyStructure(Lcom/android/email/mail/store/imap/ImapList;Lcom/android/emailcommon/mail/Part;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_a .. :try_end_a} :catch_1

    .line 715
    .end local v6           #bs:Lcom/android/email/mail/store/imap/ImapList;
    :cond_13
    :goto_6
    :try_start_b
    sget-object v32, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_14

    sget-object v32, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_15

    .line 720
    :cond_14
    const-string v32, "BODY[]"

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v13, v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v4

    .line 721
    .local v4, body:Lcom/android/email/mail/store/imap/ImapString;
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapString;->getAsStream()Ljava/io/InputStream;

    move-result-object v5

    .line 722
    .local v5, bodyStream:Ljava/io/InputStream;
    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->parse(Ljava/io/InputStream;)V

    .line 724
    .end local v4           #body:Lcom/android/email/mail/store/imap/ImapString;
    .end local v5           #bodyStream:Ljava/io/InputStream;
    :cond_15
    if-eqz v14, :cond_17

    invoke-interface {v14}, Lcom/android/emailcommon/mail/Part;->getSize()I

    move-result v32

    if-lez v32, :cond_17

    .line 726
    const-string v32, "BODY["

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v13, v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v20

    .line 727
    .local v20, imapString:Lcom/android/email/mail/store/imap/ImapString;
    invoke-interface {v14}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v8

    .line 728
    .local v8, contentType:Ljava/lang/String;
    const-string v32, "Content-Transfer-Encoding"

    move-object/from16 v0, v32

    invoke-interface {v14, v0}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 730
    .local v11, encodingHeader:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 732
    .local v7, contentTransferEncoding:Ljava/lang/String;
    if-eqz v11, :cond_16

    .line 733
    const/16 v32, 0x0

    aget-object v7, v11, v32

    .line 740
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v7, v2}, Lcom/android/email/mail/store/ImapFolder;->decodeBody(Lcom/android/email/mail/store/imap/ImapString;Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/android/emailcommon/mail/Body;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-interface {v14, v0}, Lcom/android/emailcommon/mail/Part;->setBody(Lcom/android/emailcommon/mail/Body;)V

    .line 743
    .end local v7           #contentTransferEncoding:Ljava/lang/String;
    .end local v8           #contentType:Ljava/lang/String;
    .end local v11           #encodingHeader:[Ljava/lang/String;
    .end local v20           #imapString:Lcom/android/email/mail/store/imap/ImapString;
    :cond_17
    if-eqz p3, :cond_18

    .line 744
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->messageRetrieved(Lcom/android/emailcommon/mail/Message;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 747
    :cond_18
    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_3

    .line 707
    .restart local v6       #bs:Lcom/android/email/mail/store/imap/ImapList;
    :catch_1
    move-exception v10

    .line 708
    .local v10, e:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_d
    sget-boolean v32, Lcom/android/emailcommon/Logging;->LOGD:Z

    if-eqz v32, :cond_19

    .line 709
    const-string v32, "Email"

    const-string v33, "Error handling message"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v1, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 711
    :cond_19
    const/16 v32, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/internet/MimeMessage;->setBody(Lcom/android/emailcommon/mail/Body;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_6
.end method

.method public getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
    .locals 4
    .parameter "uid"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->checkOpen()V

    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/email/mail/store/ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, uids:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 449
    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 450
    new-instance v2, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    invoke-direct {v2, p1, p0}, Lcom/android/email/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/email/mail/store/ImapFolder;)V

    .line 453
    :goto_1
    return-object v2

    .line 448
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 453
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getMessageCount()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/android/email/mail/store/ImapFolder;->mMessageCount:I

    return v0
.end method

.method public getMessages(IILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 6
    .parameter "start"
    .parameter "end"
    .parameter "listener"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 530
    if-lt p1, v4, :cond_0

    if-lt p2, v4, :cond_0

    if-ge p2, p1, :cond_1

    .line 531
    :cond_0
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "Invalid range: %d %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d:%d NOT DELETED"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/android/email/mail/store/ImapFolder;->getMessagesInternal([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessages(Lcom/android/emailcommon/service/SearchParams;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 7
    .parameter "params"
    .parameter "listener"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 475
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v1, commands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p1, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    .line 477
    .local v3, filter:Ljava/lang/String;
    iget-object v2, p1, Lcom/android/emailcommon/service/SearchParams;->mField:Ljava/lang/String;

    .line 482
    .local v2, field:Ljava/lang/String;
    const-string v0, "US-ASCII"

    .line 483
    .local v0, charset:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/email/mail/store/ImapFolder;->isAsciiString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 484
    const-string v0, "UTF-8"

    .line 486
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 493
    .local v4, octetLength:Ljava/lang/String;
    const-string v5, "ALL"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 495
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UID SEARCH CHARSET "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " OR FROM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (OR TO "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (OR SUBJECT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " BODY "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "))"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    :goto_0
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->checkOpen()V

    .line 507
    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/ImapFolder;->complexSearchForUids(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, p2}, Lcom/android/email/mail/store/ImapFolder;->getMessagesInternal([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v5

    return-object v5

    .line 502
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UID SEARCH CHARSET "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getMessages([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 1
    .parameter "uids"
    .parameter "listener"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 542
    if-nez p1, :cond_0

    .line 543
    const-string v0, "1:* NOT DELETED"

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 545
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/email/mail/store/ImapFolder;->getMessagesInternal([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesInternal([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 5
    .parameter "uids"
    .parameter "listener"

    .prologue
    .line 549
    new-instance v2, Ljava/util/ArrayList;

    array-length v4, p1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 550
    .local v2, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 551
    aget-object v3, p1, v0

    .line 552
    .local v3, uid:Ljava/lang/String;
    new-instance v1, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    invoke-direct {v1, v3, p0}, Lcom/android/email/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/email/mail/store/ImapFolder;)V

    .line 553
    .local v1, message:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    if-eqz p2, :cond_0

    .line 555
    invoke-interface {p2, v1}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->messageRetrieved(Lcom/android/emailcommon/mail/Message;)V

    .line 550
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 558
    .end local v1           #message:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    .end local v3           #uid:Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/android/emailcommon/mail/Message;->EMPTY_ARRAY:[Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/emailcommon/mail/Message;

    return-object v4
.end method

.method public getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/mail/store/ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/email/mail/store/ImapFolder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermanentFlags()[Lcom/android/emailcommon/mail/Flag;
    .locals 1

    .prologue
    .line 808
    sget-object v0, Lcom/android/email/mail/store/ImapFolder;->PERMANENT_FLAGS:[Lcom/android/emailcommon/mail/Flag;

    return-object v0
.end method

.method getSearchUids(Ljava/util/List;)[Ljava/lang/String;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/imap/ImapResponse;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 391
    .local p1, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v4, uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 393
    .local v2, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v5, 0x0

    const-string v6, "SEARCH"

    invoke-virtual {v2, v5, v6}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 397
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 398
    invoke-virtual {v2, v0}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v3

    .line 399
    .local v3, s:Lcom/android/email/mail/store/imap/ImapString;
    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/ImapString;->isString()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 400
    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    .end local v0           #i:I
    .end local v2           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v3           #s:Lcom/android/email/mail/store/imap/ImapString;
    :cond_2
    sget-object v5, Lcom/android/emailcommon/utility/Utility;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method public getUnreadMessageCount()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->checkOpen()V

    .line 365
    const/4 v4, 0x0

    .line 366
    .local v4, unreadMessageCount:I
    :try_start_0
    iget-object v5, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    const-string v6, "STATUS \"%s\" (UNSEEN)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/email/mail/store/ImapFolder;->mName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v10, v10, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 370
    .local v3, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 371
    .local v2, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v5, 0x0

    const-string v6, "STATUS"

    invoke-virtual {v2, v5, v6}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 372
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v5

    const-string v6, "UNSEEN"

    invoke-virtual {v5, v6}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 380
    .end local v2           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_1
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    return v4

    .line 377
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :catch_0
    move-exception v1

    .line 378
    .local v1, ioe:Ljava/io/IOException;
    :try_start_1
    iget-object v5, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    invoke-direct {p0, v5, v1}, Lcom/android/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    throw v5
.end method

.method public isOpen()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/android/email/mail/store/ImapFolder;->mExists:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V
    .locals 5
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapFolder;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lcom/android/email/mail/store/ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v2, p1, :cond_1

    .line 114
    :try_start_1
    iget-object v2, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    const-string v3, "NOOP"

    invoke-virtual {v2, v3}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    :try_start_2
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V
    :try_end_2
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 156
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, ioe:Ljava/io/IOException;
    :try_start_3
    iget-object v2, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    invoke-direct {p0, v2, v1}, Lcom/android/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 120
    :try_start_4
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    .line 127
    .end local v1           #ioe:Ljava/io/IOException;
    :cond_0
    :goto_1
    monitor-enter p0
    :try_end_4
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_2

    .line 128
    :try_start_5
    iget-object v2, p0, Lcom/android/email/mail/store/ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v2}, Lcom/android/email/mail/store/ImapStore;->getConnection()Lcom/android/email/mail/store/ImapConnection;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    .line 129
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 140
    :try_start_6
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->doSelect()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 144
    :try_start_7
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V
    :try_end_7
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 146
    :catch_1
    move-exception v0

    .line 148
    .local v0, e:Lcom/android/emailcommon/mail/AuthenticationFailedException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    .line 149
    invoke-virtual {p0, v4}, Lcom/android/email/mail/store/ImapFolder;->close(Z)V

    .line 150
    throw v0

    .line 120
    .end local v0           #e:Lcom/android/emailcommon/mail/AuthenticationFailedException;
    :catchall_0
    move-exception v2

    :try_start_8
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    throw v2
    :try_end_8
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_2

    .line 151
    :catch_2
    move-exception v0

    .line 152
    .local v0, e:Lcom/android/emailcommon/mail/MessagingException;
    iput-boolean v4, p0, Lcom/android/email/mail/store/ImapFolder;->mExists:Z

    .line 153
    invoke-virtual {p0, v4}, Lcom/android/email/mail/store/ImapFolder;->close(Z)V

    .line 154
    throw v0

    .line 124
    .end local v0           #e:Lcom/android/emailcommon/mail/MessagingException;
    :cond_1
    const/4 v2, 0x0

    :try_start_9
    invoke-virtual {p0, v2}, Lcom/android/email/mail/store/ImapFolder;->close(Z)V
    :try_end_9
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_1

    .line 129
    :catchall_1
    move-exception v2

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v2
    :try_end_b
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_b .. :try_end_b} :catch_2

    .line 141
    :catch_3
    move-exception v1

    .line 142
    .restart local v1       #ioe:Ljava/io/IOException;
    :try_start_c
    iget-object v2, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    invoke-direct {p0, v2, v1}, Lcom/android/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 144
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_2
    move-exception v2

    :try_start_d
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    throw v2
    :try_end_d
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_d .. :try_end_d} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_d .. :try_end_d} :catch_2
.end method

.method save(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1192
    iget-object v1, p0, Lcom/android/email/mail/store/ImapFolder;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 1193
    .local v1, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent;->isSaved()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1194
    invoke-virtual {v1, p1}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 1195
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Mailbox;->getHashes()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/mail/store/ImapFolder;->mHash:[Ljava/lang/Object;

    .line 1203
    :cond_0
    :goto_0
    return-void

    .line 1197
    :cond_1
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Mailbox;->getHashes()[Ljava/lang/Object;

    move-result-object v0

    .line 1198
    .local v0, hash:[Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/email/mail/store/ImapFolder;->mHash:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1199
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Mailbox;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1200
    iput-object v0, p0, Lcom/android/email/mail/store/ImapFolder;->mHash:[Ljava/lang/Object;

    goto :goto_0
.end method

.method public searchForUids(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "searchCriteria"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->checkOpen()V

    .line 412
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UID SEARCH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, command:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/ImapFolder;->getSearchUids(Ljava/util/List;)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 421
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    .end local v0           #command:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 414
    :catch_0
    move-exception v1

    .line 415
    .local v1, e:Lcom/android/email/mail/store/ImapStore$ImapException;
    :try_start_1
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImapException in search: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    sget-object v3, Lcom/android/emailcommon/utility/Utility;->EMPTY_STRINGS:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    goto :goto_0

    .line 417
    .end local v1           #e:Lcom/android/email/mail/store/ImapStore$ImapException;
    :catch_1
    move-exception v2

    .line 418
    .local v2, ioe:Ljava/io/IOException;
    :try_start_2
    iget-object v3, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    invoke-direct {p0, v3, v2}, Lcom/android/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v3

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 421
    .end local v2           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    throw v3
.end method

.method public searchMimeFieldsForUids(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "searchCriteria"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->checkOpen()V

    .line 429
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UID SEARCH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, command:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/ImapFolder;->getSearchUids(Ljava/util/List;)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 438
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    return-object v3

    .line 431
    .end local v0           #command:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 432
    .local v1, e:Lcom/android/email/mail/store/ImapStore$ImapException;
    :try_start_1
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImapException in search: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    .end local v1           #e:Lcom/android/email/mail/store/ImapStore$ImapException;
    :catchall_0
    move-exception v3

    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    throw v3

    .line 434
    :catch_1
    move-exception v2

    .line 435
    .local v2, ioe:Ljava/io/IOException;
    :try_start_2
    iget-object v3, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    invoke-direct {p0, v3, v2}, Lcom/android/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v3

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V
    .locals 11
    .parameter "messages"
    .parameter "flags"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 1153
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->checkOpen()V

    .line 1155
    const-string v0, ""

    .line 1156
    .local v0, allFlags:Ljava/lang/String;
    array-length v6, p2

    if-lez v6, :cond_5

    .line 1157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1158
    .local v3, flagList:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, i:I
    array-length v1, p2

    .local v1, count:I
    :goto_0
    if-ge v4, v1, :cond_4

    .line 1159
    aget-object v2, p2, v4

    .line 1160
    .local v2, flag:Lcom/android/emailcommon/mail/Flag;
    sget-object v6, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    if-ne v2, v6, :cond_1

    .line 1161
    const-string v6, " \\SEEN"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1158
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1162
    :cond_1
    sget-object v6, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    if-ne v2, v6, :cond_2

    .line 1163
    const-string v6, " \\DELETED"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1164
    :cond_2
    sget-object v6, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    if-ne v2, v6, :cond_3

    .line 1165
    const-string v6, " \\FLAGGED"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1166
    :cond_3
    sget-object v6, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    if-ne v2, v6, :cond_0

    .line 1167
    const-string v6, " \\ANSWERED"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1170
    .end local v2           #flag:Lcom/android/emailcommon/mail/Flag;
    :cond_4
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1173
    .end local v1           #count:I
    .end local v3           #flagList:Ljava/lang/StringBuilder;
    .end local v4           #i:I
    :cond_5
    :try_start_0
    iget-object v7, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    const-string v8, "UID STORE %s %sFLAGS.SILENT (%s)"

    const/4 v6, 0x3

    new-array v9, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/android/email/mail/store/ImapStore;->joinMessageUids([Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v10, 0x1

    if-eqz p3, :cond_6

    const-string v6, "+"

    :goto_2
    aput-object v6, v9, v10

    const/4 v6, 0x2

    aput-object v0, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1182
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    .line 1184
    return-void

    .line 1173
    :cond_6
    :try_start_1
    const-string v6, "-"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1179
    :catch_0
    move-exception v5

    .line 1180
    .local v5, ioe:Ljava/io/IOException;
    :try_start_2
    iget-object v6, p0, Lcom/android/email/mail/store/ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapConnection;

    invoke-direct {p0, v6, v5}, Lcom/android/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v6

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1182
    .end local v5           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-direct {p0}, Lcom/android/email/mail/store/ImapFolder;->destroyResponses()V

    throw v6
.end method
