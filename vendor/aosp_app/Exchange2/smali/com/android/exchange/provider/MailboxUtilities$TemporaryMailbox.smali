.class Lcom/android/exchange/provider/MailboxUtilities$TemporaryMailbox;
.super Ljava/lang/Object;
.source "MailboxUtilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/provider/MailboxUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TemporaryMailbox"
.end annotation


# instance fields
.field mFlags:I

.field mId:J

.field mParentKey:J

.field mParentServerId:Ljava/lang/String;

.field mServerId:Ljava/lang/String;

.field mType:I


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JII)V
    .locals 0
    .parameter "id"
    .parameter "serverId"
    .parameter "parentServerId"
    .parameter "parentKey"
    .parameter "type"
    .parameter "flags"

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-wide p1, p0, Lcom/android/exchange/provider/MailboxUtilities$TemporaryMailbox;->mId:J

    .line 325
    iput-object p3, p0, Lcom/android/exchange/provider/MailboxUtilities$TemporaryMailbox;->mServerId:Ljava/lang/String;

    .line 326
    iput-object p4, p0, Lcom/android/exchange/provider/MailboxUtilities$TemporaryMailbox;->mParentServerId:Ljava/lang/String;

    .line 327
    iput-wide p5, p0, Lcom/android/exchange/provider/MailboxUtilities$TemporaryMailbox;->mParentKey:J

    .line 328
    iput p7, p0, Lcom/android/exchange/provider/MailboxUtilities$TemporaryMailbox;->mType:I

    .line 329
    iput p8, p0, Lcom/android/exchange/provider/MailboxUtilities$TemporaryMailbox;->mFlags:I

    .line 330
    return-void
.end method
