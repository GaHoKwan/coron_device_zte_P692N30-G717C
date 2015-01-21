.class Lcom/android/email/RefreshManager$Status;
.super Ljava/lang/Object;
.source "RefreshManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/RefreshManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Status"
.end annotation


# instance fields
.field private mIsRefreshRequested:Z

.field private mIsRefreshing:Z

.field private mLastRefreshTime:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/email/RefreshManager$Status;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/email/RefreshManager$Status;->mIsRefreshRequested:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/email/RefreshManager$Status;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/android/email/RefreshManager$Status;->mLastRefreshTime:J

    return-wide p1
.end method

.method static synthetic access$902(Lcom/android/email/RefreshManager$Status;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/email/RefreshManager$Status;->mIsRefreshing:Z

    return p1
.end method


# virtual methods
.method public canRefresh()Z
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/email/RefreshManager$Status;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastRefreshTime()J
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/android/email/RefreshManager$Status;->mLastRefreshTime:J

    return-wide v0
.end method

.method public isRefreshing()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/email/RefreshManager$Status;->mIsRefreshRequested:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/RefreshManager$Status;->mIsRefreshing:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCallback(Lcom/android/emailcommon/mail/MessagingException;ILcom/android/email/Clock;)V
    .locals 3
    .parameter "exception"
    .parameter "progress"
    .parameter "clock"

    .prologue
    const/4 v2, 0x0

    .line 129
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/RefreshManager$Status;->mIsRefreshing:Z

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    if-nez p1, :cond_2

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 134
    :cond_2
    const/4 v0, 0x2

    const-string v1, "MessageList:updateMailbox:finished"

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->performance(ILjava/lang/String;)V

    .line 138
    iput-boolean v2, p0, Lcom/android/email/RefreshManager$Status;->mIsRefreshing:Z

    .line 139
    iput-boolean v2, p0, Lcom/android/email/RefreshManager$Status;->mIsRefreshRequested:Z

    .line 140
    invoke-virtual {p3}, Lcom/android/email/Clock;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/RefreshManager$Status;->mLastRefreshTime:J

    goto :goto_0
.end method

.method public onRefreshRequested()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/RefreshManager$Status;->mIsRefreshRequested:Z

    .line 122
    return-void
.end method
