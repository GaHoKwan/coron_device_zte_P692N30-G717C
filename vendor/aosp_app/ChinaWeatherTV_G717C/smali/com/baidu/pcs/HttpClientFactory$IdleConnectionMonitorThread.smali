.class Lcom/baidu/pcs/HttpClientFactory$IdleConnectionMonitorThread;
.super Ljava/lang/Thread;
.source "HttpClientFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/pcs/HttpClientFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdleConnectionMonitorThread"
.end annotation


# static fields
.field private static thread:Lcom/baidu/pcs/HttpClientFactory$IdleConnectionMonitorThread;


# instance fields
.field private final checkIntervalSeconds:I

.field private final idleTimeoutSeconds:I

.field private final manager:Lcom/baidu/pcs/HttpClientFactory$ClientConnectionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/pcs/HttpClientFactory$IdleConnectionMonitorThread;->thread:Lcom/baidu/pcs/HttpClientFactory$IdleConnectionMonitorThread;

    .line 141
    return-void
.end method

.method public constructor <init>(Lcom/baidu/pcs/HttpClientFactory$ClientConnectionManager;II)V
    .locals 0
    .parameter "manager"
    .parameter "idleTimeoutSeconds"
    .parameter "checkIntervalSeconds"

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/baidu/pcs/HttpClientFactory$IdleConnectionMonitorThread;->manager:Lcom/baidu/pcs/HttpClientFactory$ClientConnectionManager;

    .line 161
    iput p2, p0, Lcom/baidu/pcs/HttpClientFactory$IdleConnectionMonitorThread;->idleTimeoutSeconds:I

    .line 163
    iput p3, p0, Lcom/baidu/pcs/HttpClientFactory$IdleConnectionMonitorThread;->checkIntervalSeconds:I

    .line 164
    return-void
.end method

.method public static declared-synchronized ensureRunning(Lcom/baidu/pcs/HttpClientFactory$ClientConnectionManager;II)V
    .locals 2
    .parameter "manager"
    .parameter "idleTimeoutSeconds"
    .parameter "checkIntervalSeconds"

    .prologue
    .line 168
    const-class v1, Lcom/baidu/pcs/HttpClientFactory$IdleConnectionMonitorThread;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/pcs/HttpClientFactory$IdleConnectionMonitorThread;->thread:Lcom/baidu/pcs/HttpClientFactory$IdleConnectionMonitorThread;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/baidu/pcs/HttpClientFactory$IdleConnectionMonitorThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/pcs/HttpClientFactory$IdleConnectionMonitorThread;-><init>(Lcom/baidu/pcs/HttpClientFactory$ClientConnectionManager;II)V

    sput-object v0, Lcom/baidu/pcs/HttpClientFactory$IdleConnectionMonitorThread;->thread:Lcom/baidu/pcs/HttpClientFactory$IdleConnectionMonitorThread;

    .line 170
    sget-object v0, Lcom/baidu/pcs/HttpClientFactory$IdleConnectionMonitorThread;->thread:Lcom/baidu/pcs/HttpClientFactory$IdleConnectionMonitorThread;

    invoke-virtual {v0}, Lcom/baidu/pcs/HttpClientFactory$IdleConnectionMonitorThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :cond_0
    monitor-exit v1

    return-void

    .line 168
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

    .line 178
    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :try_start_1
    iget v1, p0, Lcom/baidu/pcs/HttpClientFactory$IdleConnectionMonitorThread;->checkIntervalSeconds:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 178
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :try_start_2
    iget-object v1, p0, Lcom/baidu/pcs/HttpClientFactory$IdleConnectionMonitorThread;->manager:Lcom/baidu/pcs/HttpClientFactory$ClientConnectionManager;

    invoke-virtual {v1}, Lcom/baidu/pcs/HttpClientFactory$ClientConnectionManager;->closeExpiredConnections()V

    .line 182
    iget-object v1, p0, Lcom/baidu/pcs/HttpClientFactory$IdleConnectionMonitorThread;->manager:Lcom/baidu/pcs/HttpClientFactory$ClientConnectionManager;

    iget v2, p0, Lcom/baidu/pcs/HttpClientFactory$IdleConnectionMonitorThread;->idleTimeoutSeconds:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lcom/baidu/pcs/HttpClientFactory$ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    .line 183
    const-class v2, Lcom/baidu/pcs/HttpClientFactory$IdleConnectionMonitorThread;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 184
    :try_start_3
    iget-object v1, p0, Lcom/baidu/pcs/HttpClientFactory$IdleConnectionMonitorThread;->manager:Lcom/baidu/pcs/HttpClientFactory$ClientConnectionManager;

    invoke-virtual {v1}, Lcom/baidu/pcs/HttpClientFactory$ClientConnectionManager;->getConnectionsInPool()I

    move-result v1

    if-nez v1, :cond_0

    .line 185
    const/4 v1, 0x0

    sput-object v1, Lcom/baidu/pcs/HttpClientFactory$IdleConnectionMonitorThread;->thread:Lcom/baidu/pcs/HttpClientFactory$IdleConnectionMonitorThread;

    .line 186
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 193
    :goto_1
    return-void

    .line 178
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

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, e:Ljava/lang/InterruptedException;
    sput-object v5, Lcom/baidu/pcs/HttpClientFactory$IdleConnectionMonitorThread;->thread:Lcom/baidu/pcs/HttpClientFactory$IdleConnectionMonitorThread;

    goto :goto_1

    .line 183
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
