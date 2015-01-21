.class public Lcom/android/email/MessageListContext;
.super Ljava/lang/Object;
.source "MessageListContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/email/MessageListContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAccountId:J

.field private final mMailboxId:J

.field private final mSearchParams:Lcom/android/emailcommon/service/SearchParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lcom/android/email/MessageListContext$1;

    invoke-direct {v0}, Lcom/android/email/MessageListContext$1;-><init>()V

    sput-object v0, Lcom/android/email/MessageListContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(JJLcom/android/emailcommon/service/SearchParams;)V
    .locals 0
    .parameter "accountId"
    .parameter "searchMailboxId"
    .parameter "searchParams"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-wide p1, p0, Lcom/android/email/MessageListContext;->mAccountId:J

    .line 59
    iput-wide p3, p0, Lcom/android/email/MessageListContext;->mMailboxId:J

    .line 60
    iput-object p5, p0, Lcom/android/email/MessageListContext;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    .line 61
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/MessageListContext;->mAccountId:J

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/MessageListContext;->mMailboxId:J

    .line 183
    const-class v0, Lcom/android/emailcommon/service/SearchParams;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/service/SearchParams;

    iput-object v0, p0, Lcom/android/email/MessageListContext;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    .line 184
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/email/MessageListContext$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/email/MessageListContext;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static forIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/email/MessageListContext;
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const-wide/16 v11, -0x1

    .line 72
    const-string v0, "ACCOUNT_ID"

    invoke-virtual {p1, v0, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 73
    .local v6, accountId:J
    const-string v0, "MAILBOX_ID"

    invoke-virtual {p1, v0, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 75
    .local v1, mailboxId:J
    const-string v0, "com.android.email.action.REMOTE_SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "QUERY_STRING"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, queryTerm:Ljava/lang/String;
    const-string v0, "QUERY_FIELD"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, queryField:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/android/email/Controller;->getNewSearchMailbox(J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    iget-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 82
    .local v8, searchMailboxId:J
    new-instance v0, Lcom/android/emailcommon/service/SearchParams;

    invoke-direct/range {v0 .. v5}, Lcom/android/emailcommon/service/SearchParams;-><init>(JLjava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v6, v7, v8, v9, v0}, Lcom/android/email/MessageListContext;->forSearch(JJLcom/android/emailcommon/service/SearchParams;)Lcom/android/email/MessageListContext;

    move-result-object v0

    .line 98
    .end local v3           #queryTerm:Ljava/lang/String;
    .end local v4           #queryField:Ljava/lang/String;
    .end local v8           #searchMailboxId:J
    :goto_0
    return-object v0

    .line 85
    :cond_0
    cmp-long v0, v6, v11

    if-nez v0, :cond_1

    .line 86
    invoke-static {p0}, Lcom/android/emailcommon/provider/Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v6

    .line 88
    :cond_1
    cmp-long v0, v6, v11

    if-nez v0, :cond_2

    .line 89
    const-string v0, "MessageListContext forIntent is failed. Account not found. "

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x0

    goto :goto_0

    .line 92
    :cond_2
    cmp-long v0, v1, v11

    if-nez v0, :cond_3

    .line 93
    const-wide/high16 v10, 0x1000

    cmp-long v0, v6, v10

    if-nez v0, :cond_4

    const-wide/16 v1, -0x2

    .line 98
    :cond_3
    :goto_1
    invoke-static {v6, v7, v1, v2}, Lcom/android/email/MessageListContext;->forMailboxFromEmailActivity(JJ)Lcom/android/email/MessageListContext;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_4
    invoke-static {p0, v6, v7, v5}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v1

    goto :goto_1
.end method

.method public static forMailbox(JJ)Lcom/android/email/MessageListContext;
    .locals 6
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 118
    cmp-long v0, p0, v4

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Must specify an account"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 119
    cmp-long v0, p2, v4

    if-eqz v0, :cond_1

    :goto_1
    const-string v0, "Must specify a mailbox"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 120
    new-instance v0, Lcom/android/email/MessageListContext;

    const/4 v5, 0x0

    move-wide v1, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/email/MessageListContext;-><init>(JJLcom/android/emailcommon/service/SearchParams;)V

    return-object v0

    :cond_0
    move v0, v2

    .line 118
    goto :goto_0

    :cond_1
    move v1, v2

    .line 119
    goto :goto_1
.end method

.method public static forMailboxFromEmailActivity(JJ)Lcom/android/email/MessageListContext;
    .locals 6
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    const-wide/16 v1, -0x1

    const/4 v5, 0x0

    .line 124
    cmp-long v0, p0, v1

    if-eqz v0, :cond_0

    cmp-long v0, p2, v1

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v5

    .line 127
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/email/MessageListContext;

    move-wide v1, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/email/MessageListContext;-><init>(JJLcom/android/emailcommon/service/SearchParams;)V

    goto :goto_0
.end method

.method public static forSearch(JJLcom/android/emailcommon/service/SearchParams;)Lcom/android/email/MessageListContext;
    .locals 6
    .parameter "accountId"
    .parameter "searchMailboxId"
    .parameter "searchParams"

    .prologue
    .line 107
    iget-boolean v0, p4, Lcom/android/emailcommon/service/SearchParams;->mIsLocal:Z

    if-nez v0, :cond_0

    .line 108
    invoke-static {p0, p1}, Lcom/android/emailcommon/provider/Account;->isNormalAccount(J)Z

    move-result v0

    const-string v1, "Can only search in normal accounts"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 111
    :cond_0
    new-instance v0, Lcom/android/email/MessageListContext;

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/email/MessageListContext;-><init>(JJLcom/android/emailcommon/service/SearchParams;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    if-ne p1, p0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v1

    .line 159
    :cond_1
    if-eqz p1, :cond_2

    instance-of v3, p1, Lcom/android/email/MessageListContext;

    if-nez v3, :cond_3

    :cond_2
    move v1, v2

    .line 160
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 163
    check-cast v0, Lcom/android/email/MessageListContext;

    .line 164
    .local v0, om:Lcom/android/email/MessageListContext;
    iget-wide v3, p0, Lcom/android/email/MessageListContext;->mAccountId:J

    iget-wide v5, v0, Lcom/android/email/MessageListContext;->mAccountId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    iget-wide v3, p0, Lcom/android/email/MessageListContext;->mMailboxId:J

    iget-wide v5, v0, Lcom/android/email/MessageListContext;->mMailboxId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/email/MessageListContext;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    iget-object v4, v0, Lcom/android/email/MessageListContext;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getMailboxId()J
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/android/email/MessageListContext;->mMailboxId:J

    return-wide v0
.end method

.method public getSearchParams()Lcom/android/emailcommon/service/SearchParams;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/email/MessageListContext;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    return-object v0
.end method

.method public getSearchedMailbox()J
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/email/MessageListContext;->isSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/MessageListContext;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    iget-wide v0, v0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 171
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/email/MessageListContext;->mAccountId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/email/MessageListContext;->mMailboxId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/email/MessageListContext;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isLocalSearch()Z
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/email/MessageListContext;->isSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/MessageListContext;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    iget-boolean v0, v0, Lcom/android/emailcommon/service/SearchParams;->mIsLocal:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRemoteSearch()Z
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/email/MessageListContext;->isSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/MessageListContext;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    iget-boolean v0, v0, Lcom/android/emailcommon/service/SearchParams;->mIsLocal:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSearch()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/email/MessageListContext;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MessageListContext "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/MessageListContext;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/MessageListContext;->mMailboxId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/MessageListContext;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 193
    iget-wide v0, p0, Lcom/android/email/MessageListContext;->mAccountId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 194
    iget-wide v0, p0, Lcom/android/email/MessageListContext;->mMailboxId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 195
    iget-object v0, p0, Lcom/android/email/MessageListContext;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 196
    return-void
.end method
