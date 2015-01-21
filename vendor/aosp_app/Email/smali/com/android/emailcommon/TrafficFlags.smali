.class public Lcom/android/emailcommon/TrafficFlags;
.super Ljava/lang/Object;
.source "TrafficFlags.java"


# static fields
.field private static final ACCOUNT_MASK:I = 0xffff

.field public static final DATA_CALENDAR:I = 0x80000

.field public static final DATA_CONTACTS:I = 0x40000

.field public static final DATA_EMAIL:I = 0x0

.field private static final DATA_MASK:I = 0xc0000

.field private static final DATA_SHIFT:I = 0x12

.field private static final PROTOCOLS:[Ljava/lang/String; = null

.field public static final PROTOCOL_EAS:I = 0x20000

.field public static final PROTOCOL_IMAP:I = 0x10000

.field private static final PROTOCOL_MASK:I = 0x30000

.field public static final PROTOCOL_POP3:I = 0x0

.field private static final PROTOCOL_SHIFT:I = 0x10

.field public static final PROTOCOL_SMTP:I = 0x30000

.field private static final REASONS:[Ljava/lang/String; = null

.field public static final REASON_ATTACHMENT_PRECACHE:I = 0x200000

.field public static final REASON_ATTACHMENT_USER:I = 0x100000

.field private static final REASON_MASK:I = 0x300000

.field private static final REASON_SHIFT:I = 0x14

.field public static final REASON_SYNC:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pop3"

    aput-object v1, v0, v2

    const-string v1, "imap"

    aput-object v1, v0, v3

    const-string v1, "eas"

    aput-object v1, v0, v4

    const-string v1, "smtp"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/emailcommon/TrafficFlags;->PROTOCOLS:[Ljava/lang/String;

    .line 59
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "sync"

    aput-object v1, v0, v2

    const-string v1, "attachment"

    aput-object v1, v0, v3

    const-string v1, "precache"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/TrafficFlags;->REASONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAttachmentFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I
    .locals 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 83
    sget-object v1, Lcom/android/emailcommon/TrafficFlags;->PROTOCOLS:[Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/utility/Utility;->arrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 84
    .local v0, protocolIndex:I
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    long-to-int v1, v1

    const/high16 v2, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, v0, 0x10

    or-int/2addr v1, v2

    return v1
.end method

.method public static getSmtpFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I
    .locals 2
    .parameter "context"
    .parameter "account"

    .prologue
    .line 95
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    long-to-int v0, v0

    or-int/lit8 v0, v0, 0x0

    const/high16 v1, 0x3

    or-int/2addr v0, v1

    return v0
.end method

.method public static getSyncFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I
    .locals 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 71
    sget-object v1, Lcom/android/emailcommon/TrafficFlags;->PROTOCOLS:[Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/utility/Utility;->arrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 72
    .local v0, protocolIndex:I
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    long-to-int v1, v1

    or-int/lit8 v1, v1, 0x0

    shl-int/lit8 v2, v0, 0x10

    or-int/2addr v1, v2

    return v1
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 5
    .parameter "flags"

    .prologue
    const/16 v4, 0x2c

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "account "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const v2, 0xffff

    and-int/2addr v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    sget-object v2, Lcom/android/emailcommon/TrafficFlags;->REASONS:[Ljava/lang/String;

    const/high16 v3, 0x30

    and-int/2addr v3, p0

    shr-int/lit8 v3, v3, 0x14

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    sget-object v2, Lcom/android/emailcommon/TrafficFlags;->PROTOCOLS:[Ljava/lang/String;

    const/high16 v3, 0x3

    and-int/2addr v3, p0

    shr-int/lit8 v3, v3, 0x10

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const/high16 v2, 0xc

    and-int v0, p0, v2

    .line 107
    .local v0, maskedData:I
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    const/high16 v2, 0x8

    if-ne v0, v2, :cond_1

    const-string v2, "calendar"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 109
    :cond_1
    const-string v2, "contacts"

    goto :goto_0
.end method
