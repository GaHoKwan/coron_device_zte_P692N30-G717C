.class public Lcom/android/email/mail/store/ImapStore;
.super Lcom/android/email/mail/Store;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/store/ImapStore$ImapException;,
        Lcom/android/email/mail/store/ImapStore$ImapMessage;
    }
.end annotation


# static fields
.field private static final MODIFIED_UTF_7_CHARSET:Ljava/nio/charset/Charset;

.field static sImapId:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mConnectionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/android/email/mail/store/ImapConnection;",
            ">;"
        }
    .end annotation
.end field

.field mPathPrefix:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field mPathSeparator:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/beetstra/jutf7/CharsetProvider;

    invoke-direct {v0}, Lcom/beetstra/jutf7/CharsetProvider;-><init>()V

    const-string v1, "X-RFC-3501"

    invoke-virtual {v0, v1}, Lcom/beetstra/jutf7/CharsetProvider;->charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/store/ImapStore;->MODIFIED_UTF_7_CHARSET:Ljava/nio/charset/Charset;

    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/mail/store/ImapStore;->sImapId:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 12
    .parameter "context"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 105
    invoke-direct {p0}, Lcom/android/email/mail/Store;-><init>()V

    .line 91
    new-instance v8, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v8, p0, Lcom/android/email/mail/store/ImapStore;->mConnectionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 106
    iput-object p1, p0, Lcom/android/email/mail/Store;->mContext:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lcom/android/email/mail/Store;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 109
    invoke-virtual {p2, p1}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v3

    .line 110
    .local v3, recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    if-eqz v3, :cond_0

    const-string v8, "imap"

    iget-object v9, v3, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 111
    :cond_0
    new-instance v6, Lcom/android/emailcommon/mail/MessagingException;

    const-string v7, "Unsupported protocol"

    invoke-direct {v6, v7}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 114
    :cond_1
    const/4 v0, 0x0

    .line 115
    .local v0, connectionSecurity:I
    const/16 v1, 0x8f

    .line 118
    .local v1, defaultPort:I
    iget v8, v3, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_4

    .line 119
    const/4 v0, 0x1

    .line 120
    const/16 v1, 0x3e1

    .line 124
    :cond_2
    :goto_0
    iget v8, v3, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_5

    move v4, v6

    .line 125
    .local v4, trustCertificates:Z
    :goto_1
    move v2, v1

    .line 126
    .local v2, port:I
    iget v8, v3, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 127
    iget v2, v3, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 129
    :cond_3
    new-instance v8, Lcom/android/email/mail/transport/MailTransport;

    const-string v9, "IMAP"

    iget-object v10, p0, Lcom/android/email/mail/Store;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v10}, Lcom/android/email/mail/transport/MailTransport;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    .line 130
    iget-object v8, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    iget-object v9, v3, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-interface {v8, v9}, Lcom/android/email/mail/Transport;->setHost(Ljava/lang/String;)V

    .line 131
    iget-object v8, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v8, v2}, Lcom/android/email/mail/Transport;->setPort(I)V

    .line 132
    iget-object v8, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v8, v0, v4}, Lcom/android/email/mail/Transport;->setSecurity(IZ)V

    .line 134
    invoke-virtual {v3}, Lcom/android/emailcommon/provider/HostAuth;->getLogin()[Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, userInfo:[Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 136
    aget-object v7, v5, v7

    iput-object v7, p0, Lcom/android/email/mail/Store;->mUsername:Ljava/lang/String;

    .line 137
    aget-object v6, v5, v6

    iput-object v6, p0, Lcom/android/email/mail/Store;->mPassword:Ljava/lang/String;

    .line 142
    :goto_2
    iget-object v6, v3, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    .line 143
    return-void

    .line 121
    .end local v2           #port:I
    .end local v4           #trustCertificates:Z
    .end local v5           #userInfo:[Ljava/lang/String;
    :cond_4
    iget v8, v3, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_2

    .line 122
    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    move v4, v7

    .line 124
    goto :goto_1

    .line 139
    .restart local v2       #port:I
    .restart local v4       #trustCertificates:Z
    .restart local v5       #userInfo:[Ljava/lang/String;
    :cond_6
    iput-object v11, p0, Lcom/android/email/mail/Store;->mUsername:Ljava/lang/String;

    .line 140
    iput-object v11, p0, Lcom/android/email/mail/Store;->mPassword:Ljava/lang/String;

    goto :goto_2
.end method

.method private addMailbox(Landroid/content/Context;JLjava/lang/String;CZI)Lcom/android/email/mail/store/ImapFolder;
    .locals 8
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxPath"
    .parameter "delimiter"
    .parameter "selectable"
    .parameter "mailboxType"

    .prologue
    const/4 v2, -0x1

    .line 357
    invoke-virtual {p0, p4}, Lcom/android/email/mail/store/ImapStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v7

    check-cast v7, Lcom/android/email/mail/store/ImapFolder;

    .line 358
    .local v7, folder:Lcom/android/email/mail/store/ImapFolder;
    const/4 v0, 0x0

    .line 362
    .local v0, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eq p7, v2, :cond_0

    const/4 v1, 0x1

    if-ne p7, v1, :cond_4

    .line 363
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/android/emailcommon/provider/Mailbox;->getMailboxForPath(Landroid/content/Context;JLjava/lang/String;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 369
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 372
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Mailbox;->getHashes()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v7, Lcom/android/email/mail/store/ImapFolder;->mHash:[Ljava/lang/Object;

    .line 375
    :cond_2
    if-ne p7, v2, :cond_5

    .line 376
    invoke-static {p1, p4}, Lcom/android/email/LegacyConversions;->inferMailboxTypeFromName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    move-wide v1, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-static/range {v0 .. v6}, Lcom/android/email/mail/store/ImapStore;->updateMailbox(Lcom/android/emailcommon/provider/Mailbox;JLjava/lang/String;CZI)V

    .line 382
    :goto_1
    iget-object v1, v7, Lcom/android/email/mail/store/ImapFolder;->mHash:[Ljava/lang/Object;

    if-nez v1, :cond_3

    .line 386
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Mailbox;->getHashes()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v7, Lcom/android/email/mail/store/ImapFolder;->mHash:[Ljava/lang/Object;

    .line 388
    iget-object v1, p0, Lcom/android/email/mail/Store;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 390
    :cond_3
    iput-object v0, v7, Lcom/android/email/mail/store/ImapFolder;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 391
    return-object v7

    .line 364
    :cond_4
    invoke-static {p1, p2, p3, p7}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    if-nez v0, :cond_1

    .line 366
    new-instance v0, Lcom/android/emailcommon/provider/Mailbox;

    .end local v0           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-direct {v0}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .restart local v0       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    goto :goto_0

    :cond_5
    move-wide v1, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 379
    invoke-static/range {v0 .. v6}, Lcom/android/email/mail/store/ImapStore;->updateMailbox(Lcom/android/emailcommon/provider/Mailbox;JLjava/lang/String;CZI)V

    goto :goto_1
.end method

.method static createHierarchy(Ljava/util/HashMap;)V
    .locals 13
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/mail/store/ImapFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p0, mailboxes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/mail/store/ImapFolder;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 325
    .local v10, pathnames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 326
    .local v9, path:Ljava/lang/String;
    invoke-virtual {p0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/store/ImapFolder;

    .line 327
    .local v1, folder:Lcom/android/email/mail/store/ImapFolder;
    iget-object v3, v1, Lcom/android/email/mail/store/ImapFolder;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 328
    .local v3, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    iget-object v11, v3, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    iget v12, v3, Lcom/android/emailcommon/provider/Mailbox;->mDelimiter:I

    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 329
    .local v0, delimiterIdx:I
    const-wide/16 v5, -0x1

    .line 330
    .local v5, parentKey:J
    const/4 v11, -0x1

    if-eq v0, v11, :cond_0

    .line 331
    const/4 v11, 0x0

    invoke-virtual {v9, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 332
    .local v8, parentPath:Ljava/lang/String;
    invoke-virtual {p0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/mail/store/ImapFolder;

    .line 333
    .local v4, parentFolder:Lcom/android/email/mail/store/ImapFolder;
    if-nez v4, :cond_1

    const/4 v7, 0x0

    .line 334
    .local v7, parentMailbox:Lcom/android/emailcommon/provider/Mailbox;
    :goto_1
    if-eqz v7, :cond_0

    .line 335
    iget-wide v5, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 336
    iget v11, v7, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    or-int/lit8 v11, v11, 0x3

    iput v11, v7, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    .line 340
    .end local v4           #parentFolder:Lcom/android/email/mail/store/ImapFolder;
    .end local v7           #parentMailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v8           #parentPath:Ljava/lang/String;
    :cond_0
    iput-wide v5, v3, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    goto :goto_0

    .line 333
    .restart local v4       #parentFolder:Lcom/android/email/mail/store/ImapFolder;
    .restart local v8       #parentPath:Ljava/lang/String;
    :cond_1
    iget-object v7, v4, Lcom/android/email/mail/store/ImapFolder;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    goto :goto_1

    .line 342
    .end local v0           #delimiterIdx:I
    .end local v1           #folder:Lcom/android/email/mail/store/ImapFolder;
    .end local v3           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v4           #parentFolder:Lcom/android/email/mail/store/ImapFolder;
    .end local v5           #parentKey:J
    .end local v8           #parentPath:Ljava/lang/String;
    .end local v9           #path:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method static decodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"
    .parameter "prefix"

    .prologue
    .line 619
    sget-object v1, Lcom/android/email/mail/store/ImapStore;->MODIFIED_UTF_7_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0}, Lcom/android/emailcommon/utility/Utility;->toAscii(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, folder:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 621
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 623
    :cond_0
    return-object v0
.end method

.method static encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"
    .parameter "prefix"

    .prologue
    .line 598
    const-string v2, "INBOX"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 610
    .end local p0
    :goto_0
    return-object p0

    .line 601
    .restart local p0
    :cond_0
    if-eqz p1, :cond_1

    .line 602
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 606
    :cond_1
    sget-object v2, Lcom/android/email/mail/store/ImapStore;->MODIFIED_UTF_7_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 607
    .local v1, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    new-array v0, v2, [B

    .line 608
    .local v0, b:[B
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 610
    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->fromAscii([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static getImapId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .parameter "context"
    .parameter "userName"
    .parameter "host"
    .parameter "capabilities"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 189
    const-class v18, Lcom/android/email/mail/store/ImapStore;

    monitor-enter v18

    .line 190
    :try_start_0
    sget-object v3, Lcom/android/email/mail/store/ImapStore;->sImapId:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 191
    const-string v3, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telephony/TelephonyManager;

    .line 193
    .local v15, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v9

    .line 194
    .local v9, networkOperator:Ljava/lang/String;
    if-nez v9, :cond_0

    const-string v9, ""

    .line 196
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v5, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v7, Landroid/os/Build;->ID:Ljava/lang/String;

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static/range {v3 .. v9}, Lcom/android/email/mail/store/ImapStore;->makeCommonImapId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/email/mail/store/ImapStore;->sImapId:Ljava/lang/String;

    .line 200
    .end local v9           #networkOperator:Ljava/lang/String;
    .end local v15           #tm:Landroid/telephony/TelephonyManager;
    :cond_1
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    new-instance v13, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/email/mail/store/ImapStore;->sImapId:Ljava/lang/String;

    invoke-direct {v13, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .local v13, id:Ljava/lang/StringBuilder;
    invoke-static/range {p0 .. p0}, Lcom/android/email/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/android/email/VendorPolicyLoader;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/email/VendorPolicyLoader;->getImapIdValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 209
    .local v17, vendorId:Ljava/lang/String;
    if-eqz v17, :cond_2

    .line 210
    const/16 v3, 0x20

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_2
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/Preferences;->getDeviceUID()Ljava/lang/String;

    move-result-object v10

    .line 218
    .local v10, devUID:Ljava/lang/String;
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v14

    .line 219
    .local v14, messageDigest:Ljava/security/MessageDigest;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 220
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 221
    invoke-virtual {v14}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v16

    .line 222
    .local v16, uid:[B
    const/4 v3, 0x2

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v12

    .line 223
    .local v12, hexUid:Ljava/lang/String;
    const-string v3, " \"AGUID\" \""

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const/16 v3, 0x22

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 229
    .end local v10           #devUID:Ljava/lang/String;
    .end local v12           #hexUid:Ljava/lang/String;
    .end local v14           #messageDigest:Ljava/security/MessageDigest;
    .end local v16           #uid:[B
    :goto_0
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 200
    .end local v13           #id:Ljava/lang/StringBuilder;
    .end local v17           #vendorId:Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 226
    .restart local v13       #id:Ljava/lang/StringBuilder;
    .restart local v17       #vendorId:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 227
    .local v11, e:Ljava/security/NoSuchAlgorithmException;
    const-string v3, "Email"

    const-string v4, "couldn\'t obtain SHA-1 hash for device UID"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getMailboxTypeFromAttributes(Ljava/lang/String;)I
    .locals 1
    .parameter "attributes"

    .prologue
    .line 484
    const-string v0, "Drafts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    const/4 v0, 0x3

    .line 496
    :goto_0
    return v0

    .line 486
    :cond_0
    const-string v0, "Sent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    const/4 v0, 0x5

    goto :goto_0

    .line 488
    :cond_1
    const-string v0, "Spam"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 489
    const/4 v0, 0x7

    goto :goto_0

    .line 490
    :cond_2
    const-string v0, "Trash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 491
    const/4 v0, 0x6

    goto :goto_0

    .line 492
    :cond_3
    const-string v0, "Inbox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 493
    const/4 v0, 0x0

    goto :goto_0

    .line 496
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static joinMessageUids([Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;
    .locals 7
    .parameter "messages"

    .prologue
    .line 630
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 631
    .local v5, sb:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 632
    .local v4, notFirst:Z
    move-object v0, p0

    .local v0, arr$:[Lcom/android/emailcommon/mail/Message;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 633
    .local v3, m:Lcom/android/emailcommon/mail/Message;
    if-eqz v4, :cond_0

    .line 634
    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 636
    :cond_0
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    const/4 v4, 0x1

    .line 632
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 639
    .end local v3           #m:Lcom/android/emailcommon/mail/Message;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method static makeCommonImapId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "packageName"
    .parameter "version"
    .parameter "codeName"
    .parameter "model"
    .parameter "id"
    .parameter "vendor"
    .parameter "networkOperator"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 255
    const-string v2, "[^a-zA-Z0-9-_\\+=;:\\.,/ ]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 256
    .local v0, p:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 257
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 258
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 259
    invoke-virtual {v0, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 260
    invoke-virtual {v0, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 261
    invoke-virtual {v0, p5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 262
    invoke-virtual {v0, p6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 265
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "\"name\" \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 266
    .local v1, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    const-string v2, " \"os\" \"android\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    const-string v2, " \"os-version\" \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 275
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    :goto_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 282
    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 285
    :cond_0
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 289
    const-string v2, " \"vendor\" \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    invoke-virtual {v1, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    :cond_1
    const-string v2, "REL"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 296
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 297
    const-string v2, " \"x-android-device-model\" \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 304
    :cond_2
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 305
    const-string v2, " \"x-android-mobile-net-operator\" \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 306
    invoke-virtual {v1, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 278
    :cond_4
    const-string v2, "1.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static newInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/Store;
    .locals 1
    .parameter "account"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lcom/android/email/mail/store/ImapStore;

    invoke-direct {v0, p1, p0}, Lcom/android/email/mail/store/ImapStore;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    return-object v0
.end method

.method private static saveMailboxList(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/mail/store/ImapFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 398
    .local p1, folderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/mail/store/ImapFolder;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/store/ImapFolder;

    .line 399
    .local v1, imapFolder:Lcom/android/email/mail/store/ImapFolder;
    invoke-virtual {v1, p0}, Lcom/android/email/mail/store/ImapFolder;->save(Landroid/content/Context;)V

    goto :goto_0

    .line 401
    .end local v1           #imapFolder:Lcom/android/email/mail/store/ImapFolder;
    :cond_0
    return-void
.end method


# virtual methods
.method public checkSettings()Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 501
    const/4 v3, -0x1

    .line 502
    .local v3, result:I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 503
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v1, Lcom/android/email/mail/store/ImapConnection;

    iget-object v4, p0, Lcom/android/email/mail/Store;->mUsername:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/mail/Store;->mPassword:Ljava/lang/String;

    invoke-direct {v1, p0, v4, v5}, Lcom/android/email/mail/store/ImapConnection;-><init>(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    .local v1, connection:Lcom/android/email/mail/store/ImapConnection;
    :try_start_0
    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapConnection;->open()V

    .line 506
    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapConnection;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    .line 513
    :goto_0
    const-string v4, "validate_result_code"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 514
    return-object v0

    .line 507
    :catch_0
    move-exception v2

    .line 508
    .local v2, ioe:Ljava/io/IOException;
    :try_start_1
    const-string v4, "validate_error_message"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    const/4 v3, 0x1

    .line 511
    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    goto :goto_0

    .end local v2           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    throw v4
.end method

.method cloneTransport()Lcom/android/email/mail/Transport;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->clone()Lcom/android/email/mail/Transport;

    move-result-object v0

    return-object v0
.end method

.method ensurePrefixIsValid()V
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mPathSeparator:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->mPathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->mPathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    .line 556
    :cond_0
    return-void
.end method

.method getConnection()Lcom/android/email/mail/store/ImapConnection;
    .locals 3

    .prologue
    .line 562
    const/4 v0, 0x0

    .line 563
    .local v0, connection:Lcom/android/email/mail/store/ImapConnection;
    :goto_0
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->mConnectionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #connection:Lcom/android/email/mail/store/ImapConnection;
    check-cast v0, Lcom/android/email/mail/store/ImapConnection;

    .restart local v0       #connection:Lcom/android/email/mail/store/ImapConnection;
    if-eqz v0, :cond_0

    .line 565
    :try_start_0
    iget-object v1, p0, Lcom/android/email/mail/Store;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/email/mail/Store;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/email/mail/store/ImapConnection;->setStore(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v1, "NOOP"

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    :cond_0
    if-nez v0, :cond_1

    .line 577
    new-instance v0, Lcom/android/email/mail/store/ImapConnection;

    .end local v0           #connection:Lcom/android/email/mail/store/ImapConnection;
    iget-object v1, p0, Lcom/android/email/mail/Store;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/email/mail/Store;->mPassword:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/email/mail/store/ImapConnection;-><init>(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    .restart local v0       #connection:Lcom/android/email/mail/store/ImapConnection;
    :cond_1
    return-object v0

    .line 570
    :catch_0
    move-exception v1

    .line 573
    :goto_1
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapConnection;->close()V

    .line 574
    const/4 v0, 0x0

    goto :goto_0

    .line 568
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method getConnectionPoolForTest()Ljava/util/Collection;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/email/mail/store/ImapConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mConnectionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/email/mail/Store;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;
    .locals 1
    .parameter "name"

    .prologue
    .line 316
    new-instance v0, Lcom/android/email/mail/store/ImapFolder;

    invoke-direct {v0, p0, p1}, Lcom/android/email/mail/store/ImapFolder;-><init>(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;)V

    return-object v0
.end method

.method isUserPrefixSet()Z
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mPathSeparator:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method poolConnection(Lcom/android/email/mail/store/ImapConnection;)V
    .locals 1
    .parameter "connection"

    .prologue
    .line 587
    if-eqz p1, :cond_0

    .line 588
    invoke-virtual {p1}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    .line 589
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mConnectionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 591
    :cond_0
    return-void
.end method

.method setPathPrefix(Ljava/lang/String;)V
    .locals 0
    .parameter "pathPrefix"

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    .line 533
    return-void
.end method

.method setPathSeparator(Ljava/lang/String;)V
    .locals 0
    .parameter "pathSeparator"

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore;->mPathSeparator:Ljava/lang/String;

    .line 528
    return-void
.end method

.method setTransportForTest(Lcom/android/email/mail/Transport;)V
    .locals 0
    .parameter "testTransport"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    .line 159
    return-void
.end method

.method public updateFolders()[Lcom/android/emailcommon/mail/Folder;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore;->getConnection()Lcom/android/email/mail/store/ImapConnection;

    move-result-object v19

    .line 407
    .local v19, connection:Lcom/android/email/mail/store/ImapConnection;
    :try_start_0
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 410
    .local v26, mailboxes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/mail/store/ImapFolder;>;"
    const-string v2, "NOOP"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 412
    const/16 v2, 0x10

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/email/mail/store/ImapConnection;->isCapable(I)Z

    move-result v30

    .line 413
    .local v30, xlistSupported:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v30, :cond_5

    const-string v2, "XLIST"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \"\" \"*\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 415
    .local v24, imapCommand:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v30, :cond_6

    const-string v2, "XLIST"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \"\" \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 419
    :cond_0
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v29

    .line 420
    .local v29, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 422
    .local v28, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v3, 0x0

    if-eqz v30, :cond_7

    const-string v2, "XLIST"

    :goto_3
    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v2}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 425
    const/4 v2, 0x3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v21

    .line 426
    .local v21, encodedFolder:Lcom/android/email/mail/store/imap/ImapString;
    invoke-virtual/range {v21 .. v21}, Lcom/android/email/mail/store/imap/ImapString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 430
    invoke-virtual/range {v21 .. v21}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/email/mail/store/ImapStore;->decodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 431
    .local v6, folderName:Ljava/lang/String;
    if-nez v30, :cond_2

    const-string v2, "INBOX"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 436
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v2

    const-string v3, "\\NOSELECT"

    invoke-virtual {v2, v3}, Lcom/android/email/mail/store/imap/ImapList;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v8, 0x1

    .line 438
    .local v8, selectable:Z
    :goto_4
    const/4 v2, 0x2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v20

    .line 439
    .local v20, delimiter:Ljava/lang/String;
    const/4 v7, 0x0

    .line 440
    .local v7, delimiterChar:C
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 441
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 443
    :cond_3
    const/16 v22, 0x0

    .line 444
    .local v22, folder:Lcom/android/email/mail/store/ImapFolder;
    if-eqz v30, :cond_9

    .line 445
    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/mail/store/imap/ImapList;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/email/mail/store/ImapStore;->getMailboxTypeFromAttributes(Ljava/lang/String;)I

    move-result v9

    .line 447
    .local v9, mailboxType:I
    if-eqz v9, :cond_1

    .line 450
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/mail/Store;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/mail/Store;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/email/mail/store/ImapStore;->addMailbox(Landroid/content/Context;JLjava/lang/String;CZI)Lcom/android/email/mail/store/ImapFolder;

    move-result-object v22

    .line 457
    .end local v9           #mailboxType:I
    :goto_5
    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_2

    .line 467
    .end local v6           #folderName:Ljava/lang/String;
    .end local v7           #delimiterChar:C
    .end local v8           #selectable:Z
    .end local v20           #delimiter:Ljava/lang/String;
    .end local v21           #encodedFolder:Lcom/android/email/mail/store/imap/ImapString;
    .end local v22           #folder:Lcom/android/email/mail/store/ImapFolder;
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v24           #imapCommand:Ljava/lang/String;
    .end local v26           #mailboxes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/mail/store/ImapFolder;>;"
    .end local v28           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v29           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    .end local v30           #xlistSupported:Z
    :catch_0
    move-exception v25

    .line 468
    .local v25, ioe:Ljava/io/IOException;
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Lcom/android/email/mail/store/ImapConnection;->close()V

    .line 469
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const-string v3, "Unable to get folder list."

    move-object/from16 v0, v25

    invoke-direct {v2, v3, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    .end local v25           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v19, :cond_4

    .line 478
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapConnection;)V

    :cond_4
    throw v2

    .line 413
    .restart local v26       #mailboxes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/mail/store/ImapFolder;>;"
    .restart local v30       #xlistSupported:Z
    :cond_5
    :try_start_2
    const-string v2, "LIST"

    goto/16 :goto_0

    .line 416
    .restart local v24       #imapCommand:Ljava/lang/String;
    :cond_6
    const-string v2, "LIST"

    goto/16 :goto_1

    .line 422
    .restart local v23       #i$:Ljava/util/Iterator;
    .restart local v28       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v29       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_7
    const-string v2, "LIST"

    goto/16 :goto_3

    .line 436
    .restart local v6       #folderName:Ljava/lang/String;
    .restart local v21       #encodedFolder:Lcom/android/email/mail/store/imap/ImapString;
    :cond_8
    const/4 v8, 0x0

    goto :goto_4

    .line 453
    .restart local v7       #delimiterChar:C
    .restart local v8       #selectable:Z
    .restart local v20       #delimiter:Ljava/lang/String;
    .restart local v22       #folder:Lcom/android/email/mail/store/ImapFolder;
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/mail/Store;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/mail/Store;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v12, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v17, -0x1

    move-object/from16 v10, p0

    move-object v14, v6

    move v15, v7

    move/from16 v16, v8

    invoke-direct/range {v10 .. v17}, Lcom/android/email/mail/store/ImapStore;->addMailbox(Landroid/content/Context;JLjava/lang/String;CZI)Lcom/android/email/mail/store/ImapFolder;

    move-result-object v22

    goto :goto_5

    .line 461
    .end local v6           #folderName:Ljava/lang/String;
    .end local v7           #delimiterChar:C
    .end local v8           #selectable:Z
    .end local v20           #delimiter:Ljava/lang/String;
    .end local v21           #encodedFolder:Lcom/android/email/mail/store/imap/ImapString;
    .end local v22           #folder:Lcom/android/email/mail/store/ImapFolder;
    .end local v28           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/mail/Store;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/mail/Store;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v12, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-string v14, "INBOX"

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, -0x1

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v17}, Lcom/android/email/mail/store/ImapStore;->addMailbox(Landroid/content/Context;JLjava/lang/String;CZI)Lcom/android/email/mail/store/ImapFolder;

    move-result-object v27

    .line 463
    .local v27, newFolder:Lcom/android/emailcommon/mail/Folder;
    const-string v2, "INBOX"

    check-cast v27, Lcom/android/email/mail/store/ImapFolder;

    .end local v27           #newFolder:Lcom/android/emailcommon/mail/Folder;
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    invoke-static/range {v26 .. v26}, Lcom/android/email/mail/store/ImapStore;->createHierarchy(Ljava/util/HashMap;)V

    .line 465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/mail/Store;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Lcom/android/email/mail/store/ImapStore;->saveMailboxList(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 466
    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/android/emailcommon/mail/Folder;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/emailcommon/mail/Folder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 477
    if-eqz v19, :cond_b

    .line 478
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapConnection;)V

    :cond_b
    return-object v2

    .line 470
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v24           #imapCommand:Ljava/lang/String;
    .end local v26           #mailboxes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/mail/store/ImapFolder;>;"
    .end local v29           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    .end local v30           #xlistSupported:Z
    :catch_1
    move-exception v18

    .line 473
    .local v18, afe:Lcom/android/emailcommon/mail/AuthenticationFailedException;
    :try_start_3
    invoke-virtual/range {v19 .. v19}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    .line 474
    const/16 v19, 0x0

    .line 475
    throw v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
