.class public Lcom/android/email/mail/store/imap/ImapMemoryLiteral;
.super Lcom/android/email/mail/store/imap/ImapString;
.source "ImapMemoryLiteral.java"


# instance fields
.field private mData:[B


# direct methods
.method constructor <init>(Lcom/android/email/FixedLengthInputStream;)V
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapString;-><init>()V

    .line 39
    invoke-virtual {p1}, Lcom/android/email/FixedLengthInputStream;->getLength()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, pos:I
    :goto_0
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 42
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    iget-object v3, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v3, v3

    sub-int/2addr v3, v0

    invoke-virtual {p1, v2, v0, v3}, Lcom/android/email/FixedLengthInputStream;->read([BII)I

    move-result v1

    .line 43
    .local v1, read:I
    if-gez v1, :cond_2

    .line 48
    .end local v1           #read:I
    :cond_0
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v2, v2

    if-eq v0, v2, :cond_1

    .line 49
    const-string v2, "Email"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_1
    return-void

    .line 46
    .restart local v1       #read:I
    :cond_2
    add-int/2addr v0, v1

    .line 47
    goto :goto_0
.end method

.method constructor <init>(Lcom/android/email/FixedLengthInputStream;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .locals 5
    .parameter "in"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapString;-><init>()V

    .line 57
    invoke-virtual {p1}, Lcom/android/email/FixedLengthInputStream;->getLength()I

    move-result v3

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    .line 58
    invoke-virtual {p1}, Lcom/android/email/FixedLengthInputStream;->getLength()I

    move-result v2

    .line 59
    .local v2, size:I
    const/4 v0, 0x0

    .line 60
    .local v0, pos:I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 61
    iget-object v3, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    iget-object v4, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v4, v4

    sub-int/2addr v4, v0

    invoke-virtual {p1, v3, v0, v4}, Lcom/android/email/FixedLengthInputStream;->read([BII)I

    move-result v1

    .line 62
    .local v1, read:I
    if-gez v1, :cond_3

    .line 76
    .end local v1           #read:I
    :cond_1
    iget-object v3, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v3, v3

    if-eq v0, v3, :cond_2

    .line 77
    const-string v3, "Email"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_2
    return-void

    .line 65
    .restart local v1       #read:I
    :cond_3
    add-int/2addr v0, v1

    .line 71
    if-eqz p2, :cond_0

    if-eqz v2, :cond_0

    if-ge v0, v2, :cond_0

    .line 72
    mul-int/lit8 v3, v0, 0x64

    div-int/2addr v3, v2

    invoke-interface {p2, v3}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->loadAttachmentProgress(I)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    .line 84
    invoke-super {p0}, Lcom/android/email/mail/store/imap/ImapElement;->destroy()V

    .line 85
    return-void
.end method

.method public getAsStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->fromAscii([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 99
    const-string v0, "{%d byte literal(memory)}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
