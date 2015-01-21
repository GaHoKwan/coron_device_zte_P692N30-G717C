.class Lcom/baidu/oauth/HttpClientFactory$IdleConnectionMonitorThread;
.super Ljava/lang/Thread;
.source "HttpClientFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/oauth/HttpClientFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdleConnectionMonitorThread"
.end annotation


# static fields
.field private static thread:Lcom/baidu/oauth/HttpClientFactory$IdleConnectionMonitorThread;


# instance fields
.field private final checkIntervalSeconds:I

.field private final idleTimeoutSeconds:I

.field private final manager:Lcom/baidu/oauth/HttpClientFactory$ClientConnectionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/oauth/HttpClientFactory$IdleConnectionMonitorThread;->thread:Lcom/baidu/oauth/HttpClientFactory$IdleConnectionMonitorThread;

    .line 129
    return-void
.end method

.method public constructor <init>(Lcom/baidu/oauth/HttpClientFactory$ClientConnectionManager;II)V
    .locals 0
    .parameter "manager"
    .parameter "idleTimeoutSeconds"
    .parameter "checkIntervalSeconds"

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/baidu/oauth/HttpClientFactory$IdleConnectionMonitorThread;->manager:Lcom/baidu/oauth/HttpClientFactory$ClientConnectionManager;

    .line 149
    iput p2, p0, Lcom/baidu/oauth/HttpClientFactory$IdleConnectionMonitorThread;->idleTimeoutSeconds:I

    .line 151
    iput p3, p0, Lcom/baidu/oauth/HttpClientFactory$IdleConnectionMonitorThread;->checkIntervalSeconds:I

    .line 152
    return-void
.end method

.method public static declared-synchronized ensureRunning(Lcom/baidu/oauth/HttpClientFactory$ClientConnectionManager;II)V
    .locals 2
    .parameter "manager"
    .parameter "idleTimeoutSeconds"
    .parameter "checkIntervalSeconds"

    .prologue
    .line 156
    const-class v1, Lcom/baidu/oauth/HttpClientFactory$IdleConnectionMonitorThread;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/oauth/HttpClientFactory$IdleConnectionMonitorThread;->thread:Lcom/baidu/oauth/HttpClientFactory$IdleConnectionMonitorThread;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/baidu/oauth/HttpClientFactory$IdleConnectionMonitorThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/oauth/HttpClientFactory$IdleConnectionMonitorThread;-><init>(Lcom/baidu/oauth/HttpClientFactory$ClientConnectionManager;II)V

    sput-object v0, Lcom/baidu/oauth/HttpClientFactory$IdleConnectionMonitorThread;->thread:Lcom/baidu/oauth/HttpClientFactory$IdleConnectionMonitorThread;

    .line 158
    sget-object v0, Lcom/baidu/oauth/HttpClientFactory$IdleConnectionMonitorThread;->thread:Lcom/baidu/oauth/HttpClientFactory$IdleConnectionMonitorThread;

    invoke-virtual {v0}, Lcom/baidu/oauth/HttpClientFactory$IdleConnectionMonitorThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :cond_0
    monitor-exit v1

    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 166
    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :try_start_1
    iget v1, p0, Lcom/baidu/oauth/HttpClientFactory$IdleConnectionMonitorThread;->checkIntervalSeconds:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 166
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    :try_start_2
    iget-object v1, p0, Lcom/baidu/oauth/HttpClientFactory$IdleConnectionMonitorThread;->manager:Lcom/baidu/oauth/HttpClientFactory$ClientConnectionManager;

    invoke-virtual {v1}, Lcom/baidu/oauth/HttpClientFactory$ClientConnectionManager;->closeExpiredConnections()V

    .line 170
    iget-object v1, p0, Lcom/baidu/oauth/HttpClientFactory$IdleConnectionMonitorThread;->manager:Lcom/baidu/oauth/HttpClientFactory$ClientConnectionManager;

    iget v2, p0, Lcom/baidu/oauth/HttpClientFactory$IdleConnectionMonitorThread;->idleTimeoutSeconds:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lcom/baidu/oauth/HttpClientFactory$ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    .line 171
    const-class v2, Lcom/baidu/oauth/HttpClientFactory$IdleConnectionMonitorThread;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 172
    :try_start_3
    iget-object v1, p0, Lcom/baidu/oauth/HttpClientFactory$IdleConnectionMonitorThread;->manager:Lcom/baidu/oauth/HttpClientFactory$ClientConnectionManager;

    invoke-virtual {v1}, Lcom/baidu/oauth/HttpClientFactory$ClientConnectionManager;->getConnectionsInPool()I

    move-result v1

    if-nez v1, :cond_0

    .line 173
    const/4 v1, 0x0

    sput-object v1, Lcom/baidu/oauth/HttpClientFactory$IdleConnectionMonitorThread;->thread:Lcom/baidu/oauth/HttpClientFactory$IdleConnectionMonitorThread;

    .line 174
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 181
    :goto_1
    return-void

    .line 166
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Ljava/lang/InterruptedException;
    sput-object v5, Lcom/baidu/oauth/HttpClientFactory$IdleConnectionMonitorThread;->thread:Lcom/baidu/oauth/HttpClientFactory$IdleConnectionMonitorThread;

    goto :goto_1

    .line 171
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    :try_start_6
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
.end method
