.class final Lcom/android/exchange/ExchangeService$5;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService;->alert(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$exchangeService:Lcom/android/exchange/ExchangeService;

.field final synthetic val$id:J

.field final synthetic val$service:Lcom/android/exchange/AbstractSyncService;


# direct methods
.method constructor <init>(JLcom/android/exchange/ExchangeService;Lcom/android/exchange/AbstractSyncService;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1912
    iput-wide p1, p0, Lcom/android/exchange/ExchangeService$5;->val$id:J

    iput-object p3, p0, Lcom/android/exchange/ExchangeService$5;->val$exchangeService:Lcom/android/exchange/ExchangeService;

    iput-object p4, p0, Lcom/android/exchange/ExchangeService$5;->val$service:Lcom/android/exchange/AbstractSyncService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private alarmService()V
    .locals 7

    .prologue
    .line 1924
    iget-object v3, p0, Lcom/android/exchange/ExchangeService$5;->val$exchangeService:Lcom/android/exchange/ExchangeService;

    iget-wide v4, p0, Lcom/android/exchange/ExchangeService$5;->val$id:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 1925
    .local v1, m:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v1, :cond_2

    .line 1928
    sget-boolean v3, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v3, :cond_0

    .line 1929
    const-string v3, "ExchangeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Alert for mailbox "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/exchange/ExchangeService$5;->val$id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    :cond_0
    iget v3, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    iget v3, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 1932
    :cond_1
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-wide v4, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 1933
    .local v0, args:[Ljava/lang/String;
    sget-object v3, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    #getter for: Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->access$900(Lcom/android/exchange/ExchangeService;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 1934
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "mailboxKey=?"

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1936
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "mailboxKey=?"

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1957
    .end local v0           #args:[Ljava/lang/String;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :cond_2
    :goto_0
    return-void

    .line 1940
    :cond_3
    iget-object v3, p0, Lcom/android/exchange/ExchangeService$5;->val$service:Lcom/android/exchange/AbstractSyncService;

    sget-object v4, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    iget-wide v5, v1, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v4

    iput-object v4, v3, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 1942
    iget-object v3, p0, Lcom/android/exchange/ExchangeService$5;->val$service:Lcom/android/exchange/AbstractSyncService;

    iput-object v1, v3, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 1944
    iget-object v3, p0, Lcom/android/exchange/ExchangeService$5;->val$service:Lcom/android/exchange/AbstractSyncService;

    invoke-virtual {v3}, Lcom/android/exchange/AbstractSyncService;->alarm()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1948
    const-string v3, "Alarm failed; releasing mailbox"

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1949
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$600()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1950
    :try_start_0
    iget-object v3, p0, Lcom/android/exchange/ExchangeService$5;->val$exchangeService:Lcom/android/exchange/ExchangeService;

    iget-wide v5, p0, Lcom/android/exchange/ExchangeService$5;->val$id:J

    #calls: Lcom/android/exchange/ExchangeService;->releaseMailbox(J)V
    invoke-static {v3, v5, v6}, Lcom/android/exchange/ExchangeService;->access$1000(Lcom/android/exchange/ExchangeService;J)V

    .line 1951
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1954
    #calls: Lcom/android/exchange/ExchangeService;->shutdownConnectionManager()V
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$1100()V

    goto :goto_0

    .line 1951
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const-wide/16 v3, -0x64

    .line 1916
    :try_start_0
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService$5;->alarmService()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1918
    iget-wide v0, p0, Lcom/android/exchange/ExchangeService$5;->val$id:J

    sub-long v0, v3, v0

    invoke-static {v0, v1}, Lcom/android/exchange/ExchangeService;->releaseEasWakeLock(J)V

    .line 1919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExchangeService alert release EasWakeLock: - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/exchange/ExchangeService$5;->val$id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1921
    return-void

    .line 1918
    :catchall_0
    move-exception v0

    iget-wide v1, p0, Lcom/android/exchange/ExchangeService$5;->val$id:J

    sub-long v1, v3, v1

    invoke-static {v1, v2}, Lcom/android/exchange/ExchangeService;->releaseEasWakeLock(J)V

    .line 1919
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExchangeService alert release EasWakeLock: - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/ExchangeService$5;->val$id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1918
    throw v0
.end method
