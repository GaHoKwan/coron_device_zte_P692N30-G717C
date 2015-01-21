.class public abstract Lcom/android/exchange/AbstractSyncService;
.super Ljava/lang/Object;
.source "AbstractSyncService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/AbstractSyncService$ValidationResult;
    }
.end annotation


# static fields
.field public static final CONNECT_TIMEOUT:I = 0x7530

.field public static final DAYS:I = 0x5265c00

.field public static final EAS_PROTOCOL:Ljava/lang/String; = "eas"

.field public static final EXIT_ACCESS_DENIED:I = 0x5

.field public static final EXIT_DONE:I = 0x0

.field public static final EXIT_EXCEPTION:I = 0x3

.field public static final EXIT_IO_ERROR:I = 0x1

.field public static final EXIT_LOGIN_FAILURE:I = 0x2

.field public static final EXIT_SECURITY_FAILURE:I = 0x4

.field private static final EXSITED_VALIDATE_SERVICE:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/exchange/AbstractSyncService;",
            ">;"
        }
    .end annotation
.end field

.field public static final HOURS:I = 0x36ee80

.field public static final MINUTES:I = 0xea60

.field public static final NETWORK_WAIT:I = 0x3a98

.field public static final SECONDS:I = 0x3e8

.field private static final VALIDATE_LOCK:Ljava/lang/Object; = null

.field private static final VALIDATE_TAG:Ljava/lang/String; = "ValidateSyncService"


# instance fields
.field public TAG:Ljava/lang/String;

.field public mAccount:Lcom/android/emailcommon/provider/Account;

.field public mChangeCount:I

.field public mContext:Landroid/content/Context;

.field protected mExitStatus:I

.field public mMailbox:Lcom/android/emailcommon/provider/Mailbox;

.field protected mMailboxId:J

.field protected mMailboxName:Ljava/lang/String;

.field protected mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/android/exchange/Request;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile mRequestTime:J

.field protected volatile mStop:Z

.field public volatile mSyncReason:I

.field protected final mSynchronizer:Ljava/lang/Object;

.field protected volatile mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/exchange/AbstractSyncService;->EXSITED_VALIDATE_SERVICE:Ljava/util/HashSet;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/AbstractSyncService;->VALIDATE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V
    .locals 2
    .parameter "_context"
    .parameter "_mailbox"

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "AbstractSyncService"

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    .line 63
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 67
    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    .line 68
    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    .line 69
    iput-boolean v1, p0, Lcom/android/exchange/AbstractSyncService;->mStop:Z

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mSynchronizer:Ljava/lang/Object;

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 74
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 116
    iput-object p1, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 118
    iget-wide v0, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    .line 119
    iget-object v0, p2, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxName:Ljava/lang/String;

    .line 120
    iget-wide v0, p2, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "prefix"

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "AbstractSyncService"

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    .line 63
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 67
    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    .line 68
    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    .line 69
    iput-boolean v1, p0, Lcom/android/exchange/AbstractSyncService;->mStop:Z

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mSynchronizer:Ljava/lang/Object;

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 74
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 125
    return-void
.end method

.method public static validate(Ljava/lang/Class;Lcom/android/emailcommon/provider/HostAuth;Landroid/content/Context;)Landroid/os/Bundle;
    .locals 9
    .parameter
    .parameter "hostAuth"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/exchange/AbstractSyncService;",
            ">;",
            "Lcom/android/emailcommon/provider/HostAuth;",
            "Landroid/content/Context;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/exchange/AbstractSyncService;>;"
    const/4 v4, 0x0

    .line 142
    .local v4, svc:Lcom/android/exchange/AbstractSyncService;
    :try_start_0
    sget-object v6, Lcom/android/exchange/AbstractSyncService;->VALIDATE_LOCK:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 143
    :try_start_1
    sget-object v5, Lcom/android/exchange/AbstractSyncService;->EXSITED_VALIDATE_SERVICE:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/exchange/AbstractSyncService;

    .line 144
    .local v3, service:Lcom/android/exchange/AbstractSyncService;
    const-string v5, "ValidateSyncService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " validate stop existed validate service"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {v3}, Lcom/android/exchange/AbstractSyncService;->stop()V

    goto :goto_0

    .line 150
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #service:Lcom/android/exchange/AbstractSyncService;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    const-string v5, "ValidateSyncService"

    const-string v6, "validate IllegalAccessException"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 159
    sget-object v6, Lcom/android/exchange/AbstractSyncService;->VALIDATE_LOCK:Ljava/lang/Object;

    monitor-enter v6

    .line 160
    :try_start_4
    sget-object v5, Lcom/android/exchange/AbstractSyncService;->EXSITED_VALIDATE_SERVICE:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 161
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 163
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :goto_1
    const/4 v5, 0x0

    :goto_2
    return-object v5

    .line 147
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    move-object v4, v0

    .line 148
    const-string v5, "ValidateSyncService"

    iput-object v5, v4, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    .line 149
    sget-object v5, Lcom/android/exchange/AbstractSyncService;->EXSITED_VALIDATE_SERVICE:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 150
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 152
    :try_start_6
    invoke-virtual {v4, p1, p2}, Lcom/android/exchange/AbstractSyncService;->validateAccount(Lcom/android/emailcommon/provider/HostAuth;Landroid/content/Context;)Landroid/os/Bundle;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v5

    .line 159
    sget-object v6, Lcom/android/exchange/AbstractSyncService;->VALIDATE_LOCK:Ljava/lang/Object;

    monitor-enter v6

    .line 160
    :try_start_7
    sget-object v7, Lcom/android/exchange/AbstractSyncService;->EXSITED_VALIDATE_SERVICE:Ljava/util/HashSet;

    invoke-virtual {v7, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 161
    monitor-exit v6

    goto :goto_2

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v5

    .end local v2           #i$:Ljava/util/Iterator;
    .restart local v1       #e:Ljava/lang/IllegalAccessException;
    :catchall_2
    move-exception v5

    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v5

    .line 155
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 156
    .local v1, e:Ljava/lang/InstantiationException;
    :try_start_9
    const-string v5, "ValidateSyncService"

    const-string v6, "validate InstantiationException"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 159
    sget-object v6, Lcom/android/exchange/AbstractSyncService;->VALIDATE_LOCK:Ljava/lang/Object;

    monitor-enter v6

    .line 160
    :try_start_a
    sget-object v5, Lcom/android/exchange/AbstractSyncService;->EXSITED_VALIDATE_SERVICE:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 161
    monitor-exit v6

    goto :goto_1

    :catchall_3
    move-exception v5

    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v5

    .line 159
    .end local v1           #e:Ljava/lang/InstantiationException;
    :catchall_4
    move-exception v5

    sget-object v6, Lcom/android/exchange/AbstractSyncService;->VALIDATE_LOCK:Ljava/lang/Object;

    monitor-enter v6

    .line 160
    :try_start_b
    sget-object v7, Lcom/android/exchange/AbstractSyncService;->EXSITED_VALIDATE_SERVICE:Ljava/util/HashSet;

    invoke-virtual {v7, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 161
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v5

    :catchall_5
    move-exception v5

    :try_start_c
    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v5
.end method


# virtual methods
.method public addRequest(Lcom/android/exchange/Request;)V
    .locals 1
    .parameter "req"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 306
    return-void
.end method

.method public abstract alarm()Z
.end method

.method public clearRequests()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 318
    return-void
.end method

.method public errorLog(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_0
    return-void
.end method

.method public getSynchronizer()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mSynchronizer:Ljava/lang/Object;

    return-object v0
.end method

.method public hasConnectivity()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 281
    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 283
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .local v2, tries:I
    move v3, v2

    .line 284
    .end local v2           #tries:I
    .local v3, tries:I
    :goto_0
    add-int/lit8 v2, v3, 0x1

    .end local v3           #tries:I
    .restart local v2       #tries:I
    if-ge v3, v4, :cond_1

    .line 287
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 288
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 296
    .end local v1           #info:Landroid/net/NetworkInfo;
    :goto_1
    return v4

    .line 292
    .restart local v1       #info:Landroid/net/NetworkInfo;
    :cond_0
    const-wide/16 v5, 0x2710

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v3, v2

    .line 295
    .end local v2           #tries:I
    .restart local v3       #tries:I
    goto :goto_0

    .line 296
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v3           #tries:I
    .restart local v2       #tries:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 293
    .restart local v1       #info:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public hasPendingRequests()Z
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/android/exchange/AbstractSyncService;->mStop:Z

    return v0
.end method

.method public removeRequest(Lcom/android/exchange/Request;)V
    .locals 1
    .parameter "req"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 310
    return-void
.end method

.method public abstract reset()V
.end method

.method public abstract stop()V
.end method

.method public userLog(Ljava/lang/String;I)V
    .locals 3
    .parameter "string"
    .parameter "code"

    .prologue
    .line 222
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_0

    .line 223
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 225
    :cond_0
    return-void
.end method

.method public userLog(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "string"
    .parameter "code"
    .parameter "string2"

    .prologue
    .line 216
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_0

    .line 217
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 219
    :cond_0
    return-void
.end method

.method public userLog(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .parameter "str"
    .parameter "e"

    .prologue
    .line 228
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    :goto_0
    sget-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v0, :cond_0

    .line 234
    invoke-static {p2}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/Exception;)V

    .line 236
    :cond_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public varargs userLog([Ljava/lang/String;)V
    .locals 8
    .parameter "strings"

    .prologue
    .line 245
    sget-boolean v6, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v6, :cond_0

    .line 247
    array-length v6, p1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 248
    const/4 v6, 0x0

    aget-object v3, p1, v6

    .line 256
    .local v3, logText:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    sget-boolean v6, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v6, :cond_0

    .line 258
    iget-object v6, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-static {v6, v3}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .end local v3           #logText:Ljava/lang/String;
    :cond_0
    return-void

    .line 250
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 251
    .local v4, sb:Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 252
    .local v5, string:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 254
    .end local v5           #string:Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #logText:Ljava/lang/String;
    goto :goto_0
.end method

.method public abstract validateAccount(Lcom/android/emailcommon/provider/HostAuth;Landroid/content/Context;)Landroid/os/Bundle;
.end method
