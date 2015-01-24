.class Lcom/android/exchange/ExchangeService$CalendarObserver;
.super Landroid/database/ContentObserver;
.source "ExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/ExchangeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarObserver"
.end annotation


# instance fields
.field mAccountId:J

.field mAccountName:Ljava/lang/String;

.field mCalendarChanged:Z

.field mCalendarId:J

.field mRunnable:Ljava/lang/Runnable;

.field mSyncEvents:J

.field mThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/android/exchange/ExchangeService;


# direct methods
.method public constructor <init>(Lcom/android/exchange/ExchangeService;Landroid/os/Handler;Lcom/android/emailcommon/provider/Account;)V
    .locals 9
    .parameter
    .parameter "handler"
    .parameter "account"

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1271
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$CalendarObserver;->this$0:Lcom/android/exchange/ExchangeService;

    .line 1272
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1180
    new-instance v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;

    invoke-direct {v0, p0}, Lcom/android/exchange/ExchangeService$CalendarObserver$1;-><init>(Lcom/android/exchange/ExchangeService$CalendarObserver;)V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mRunnable:Ljava/lang/Runnable;

    .line 1273
    iget-wide v0, p3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v0, p0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mAccountId:J

    .line 1274
    iget-object v0, p3, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mAccountName:Ljava/lang/String;

    .line 1277
    #getter for: Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/exchange/ExchangeService;->access$900(Lcom/android/exchange/ExchangeService;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string v3, "sync_events"

    aput-object v3, v2, v8

    const-string v3, "account_name=? AND account_type=?"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p3, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    aput-object v5, v4, v7

    const-string v5, "com.android.exchange"

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1282
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1285
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1286
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mCalendarId:J

    .line 1287
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mSyncEvents:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1290
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1293
    :cond_1
    return-void

    .line 1290
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public declared-synchronized onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 1297
    monitor-enter p0

    :try_start_0
    const-string v0, "ExchangeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calendar of Account "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " changed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    if-nez p1, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 1301
    const-string v0, "ExchangeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calendar changed in account: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mRunnable:Ljava/lang/Runnable;

    const-string v2, "Calendar Observer"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mThread:Ljava/lang/Thread;

    .line 1303
    iget-object v0, p0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1308
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1305
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mCalendarChanged:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1297
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method