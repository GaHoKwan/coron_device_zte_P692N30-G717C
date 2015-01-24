.class public Lcom/android/email/mail/store/Pop3Store;
.super Lcom/android/email/mail/Store;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;,
        Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;,
        Lcom/android/email/mail/store/Pop3Store$Pop3Message;,
        Lcom/android/email/mail/store/Pop3Store$Pop3Folder;
    }
.end annotation


# static fields
.field private static DEBUG_FORCE_SINGLE_LINE_UIDL:Z = false

.field private static DEBUG_LOG_RAW_STREAM:Z = false

.field private static final PERMANENT_FLAGS:[Lcom/android/emailcommon/mail/Flag; = null

.field private static final POP3_MAILBOX_NAME:Ljava/lang/String; = "INBOX"


# instance fields
.field private final DEFAULT_FOLDERS:[I

.field private final mFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/emailcommon/mail/Folder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    sput-boolean v2, Lcom/android/email/mail/store/Pop3Store;->DEBUG_FORCE_SINGLE_LINE_UIDL:Z

    .line 58
    sput-boolean v2, Lcom/android/email/mail/store/Pop3Store;->DEBUG_LOG_RAW_STREAM:Z

    .line 60
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/emailcommon/mail/Flag;

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/mail/store/Pop3Store;->PERMANENT_FLAGS:[Lcom/android/emailcommon/mail/Flag;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 11
    .parameter "context"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 100
    invoke-direct {p0}, Lcom/android/email/mail/Store;-><init>()V

    .line 63
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/email/mail/store/Pop3Store;->mFolders:Ljava/util/HashMap;

    .line 156
    const/4 v8, 0x4

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    iput-object v8, p0, Lcom/android/email/mail/store/Pop3Store;->DEFAULT_FOLDERS:[I

    .line 101
    iput-object p1, p0, Lcom/android/email/mail/Store;->mContext:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/android/email/mail/Store;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 104
    invoke-virtual {p2, p1}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v3

    .line 105
    .local v3, recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    if-eqz v3, :cond_0

    const-string v8, "pop3"

    iget-object v9, v3, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 106
    :cond_0
    new-instance v6, Lcom/android/emailcommon/mail/MessagingException;

    const-string v7, "Unsupported protocol"

    invoke-direct {v6, v7}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 109
    :cond_1
    const/4 v0, 0x0

    .line 110
    .local v0, connectionSecurity:I
    const/16 v1, 0x6e

    .line 113
    .local v1, defaultPort:I
    iget v8, v3, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_5

    .line 114
    const/4 v0, 0x1

    .line 115
    const/16 v1, 0x3e3

    .line 119
    :cond_2
    :goto_0
    iget v8, v3, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_6

    move v4, v6

    .line 121
    .local v4, trustCertificates:Z
    :goto_1
    move v2, v1

    .line 122
    .local v2, port:I
    iget v8, v3, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 123
    iget v2, v3, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 125
    :cond_3
    new-instance v8, Lcom/android/email/mail/transport/MailTransport;

    const-string v9, "POP3"

    iget-object v10, p0, Lcom/android/email/mail/Store;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v10}, Lcom/android/email/mail/transport/MailTransport;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    .line 126
    iget-object v8, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    iget-object v9, v3, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-interface {v8, v9}, Lcom/android/email/mail/Transport;->setHost(Ljava/lang/String;)V

    .line 127
    iget-object v8, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v8, v2}, Lcom/android/email/mail/Transport;->setPort(I)V

    .line 128
    iget-object v8, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v8, v0, v4}, Lcom/android/email/mail/Transport;->setSecurity(IZ)V

    .line 130
    invoke-virtual {v3}, Lcom/android/emailcommon/provider/HostAuth;->getLogin()[Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, userInfoParts:[Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 132
    aget-object v7, v5, v7

    iput-object v7, p0, Lcom/android/email/mail/Store;->mUsername:Ljava/lang/String;

    .line 133
    aget-object v6, v5, v6

    iput-object v6, p0, Lcom/android/email/mail/Store;->mPassword:Ljava/lang/String;

    .line 135
    :cond_4
    return-void

    .line 116
    .end local v2           #port:I
    .end local v4           #trustCertificates:Z
    .end local v5           #userInfoParts:[Ljava/lang/String;
    :cond_5
    iget v8, v3, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_2

    .line 117
    const/4 v0, 0x2

    goto :goto_0

    :cond_6
    move v4, v7

    .line 119
    goto :goto_1

    .line 156
    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    return-object v0
.end method

.method static synthetic access$1500()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/email/mail/store/Pop3Store;->DEBUG_FORCE_SINGLE_LINE_UIDL:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    return-object v0
.end method

.method static synthetic access$2200()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/email/mail/store/Pop3Store;->DEBUG_LOG_RAW_STREAM:Z

    return v0
.end method

.method static synthetic access$2300()[Lcom/android/emailcommon/mail/Flag;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/email/mail/store/Pop3Store;->PERMANENT_FLAGS:[Lcom/android/emailcommon/mail/Flag;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/mail/store/Pop3Store;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/mail/Store;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/mail/store/Pop3Store;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/mail/Store;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    return-object v0
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
    .line 94
    new-instance v0, Lcom/android/email/mail/store/Pop3Store;

    invoke-direct {v0, p1, p0}, Lcom/android/email/mail/store/Pop3Store;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    return-object v0
.end method


# virtual methods
.method public checkSettings()Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 195
    new-instance v1, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;

    const-string v2, "INBOX"

    invoke-direct {v1, p0, v2}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;-><init>(Lcom/android/email/mail/store/Pop3Store;Ljava/lang/String;)V

    .line 196
    .local v1, folder:Lcom/android/email/mail/store/Pop3Store$Pop3Folder;
    const/4 v0, 0x0

    .line 198
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v2}, Lcom/android/email/mail/Transport;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    invoke-virtual {v1, v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->close(Z)V

    .line 202
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v1, v2}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 203
    invoke-virtual {v1}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->checkSettings()Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 205
    invoke-virtual {v1, v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->close(Z)V

    .line 207
    return-object v0

    .line 205
    :catchall_0
    move-exception v2

    invoke-virtual {v1, v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->close(Z)V

    throw v2
.end method

.method public getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;
    .locals 3
    .parameter "name"

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/email/mail/store/Pop3Store;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Folder;

    .line 149
    .local v0, folder:Lcom/android/emailcommon/mail/Folder;
    if-nez v0, :cond_0

    .line 150
    new-instance v0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;

    .end local v0           #folder:Lcom/android/emailcommon/mail/Folder;
    invoke-direct {v0, p0, p1}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;-><init>(Lcom/android/email/mail/store/Pop3Store;Ljava/lang/String;)V

    .line 151
    .restart local v0       #folder:Lcom/android/emailcommon/mail/Folder;
    iget-object v1, p0, Lcom/android/email/mail/store/Pop3Store;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_0
    return-object v0
.end method

.method setTransport(Lcom/android/email/mail/Transport;)V
    .locals 0
    .parameter "testTransport"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/email/mail/Store;->mTransport:Lcom/android/email/mail/Transport;

    .line 144
    return-void
.end method

.method public updateFolders()[Lcom/android/emailcommon/mail/Folder;
    .locals 14

    .prologue
    const-wide/16 v12, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 165
    iget-object v1, p0, Lcom/android/email/mail/Store;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/mail/Store;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-string v6, "INBOX"

    invoke-static {v1, v2, v3, v6}, Lcom/android/emailcommon/provider/Mailbox;->getMailboxForPath(Landroid/content/Context;JLjava/lang/String;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 166
    .local v0, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    iget-object v1, p0, Lcom/android/email/mail/Store;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-string v3, "INBOX"

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/email/mail/store/Pop3Store;->updateMailbox(Lcom/android/emailcommon/provider/Mailbox;JLjava/lang/String;CZI)V

    .line 168
    iput-wide v12, v0, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    .line 169
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/android/email/mail/Store;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Mailbox;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 176
    :goto_0
    iget-object v7, p0, Lcom/android/email/mail/store/Pop3Store;->DEFAULT_FOLDERS:[I

    .local v7, arr$:[I
    array-length v9, v7

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v9, :cond_2

    aget v11, v7, v8

    .line 177
    .local v11, type:I
    iget-object v1, p0, Lcom/android/email/mail/Store;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/mail/Store;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3, v11}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v1

    cmp-long v1, v1, v12

    if-nez v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/android/email/mail/Store;->mContext:Landroid/content/Context;

    invoke-static {v1, v11}, Lcom/android/email/Controller;->getMailboxServerName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    .line 179
    .local v10, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/email/mail/Store;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v11, v10}, Lcom/android/emailcommon/provider/Mailbox;->newSystemMailbox(JILjava/lang/String;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/mail/Store;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 176
    .end local v10           #name:Ljava/lang/String;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 172
    .end local v7           #arr$:[I
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v11           #type:I
    :cond_1
    iget-object v1, p0, Lcom/android/email/mail/Store;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_0

    .line 183
    .restart local v7       #arr$:[I
    .restart local v8       #i$:I
    .restart local v9       #len$:I
    :cond_2
    new-array v1, v5, [Lcom/android/emailcommon/mail/Folder;

    const-string v2, "INBOX"

    invoke-virtual {p0, v2}, Lcom/android/email/mail/store/Pop3Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v2

    aput-object v2, v1, v4

    return-object v1
.end method