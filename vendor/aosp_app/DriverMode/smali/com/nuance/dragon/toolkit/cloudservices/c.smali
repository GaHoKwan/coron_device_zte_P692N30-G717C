.class final Lcom/nuance/dragon/toolkit/cloudservices/c;
.super Lcom/nuance/dragon/toolkit/cloudservices/a;


# instance fields
.field private a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

.field private b:Ljava/lang/String;

.field private c:Lcom/nuance/a/a/a/b/c/a/a;

.field private d:Lcom/nuance/a/a/a/b/c/a/c;

.field private e:Lcom/nuance/dragon/toolkit/cloudservices/b;

.field private f:Z

.field private g:Landroid/os/Handler;

.field private h:Lcom/nuance/dragon/toolkit/cloudservices/calllog/SessionEvent;

.field private i:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$CalllogDataListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;)V
    .locals 11

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/cloudservices/a;-><init>()V

    const-string v0, "appContext"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "config"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/b;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p2, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;->appName:Ljava/lang/String;

    iget-object v3, p2, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;->host:Ljava/lang/String;

    iget v4, p2, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;->port:I

    iget-object v5, p2, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;->appId:Ljava/lang/String;

    iget-object v6, p2, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;->appKey:[B

    iget-object v7, p2, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;->deviceId:Ljava/lang/String;

    iget-object v8, p2, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;->recorderCodec:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget-object v9, p2, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;->playerCodec:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget-object v10, p2, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;->configs:Ljava/util/List;

    invoke-direct/range {v0 .. v10}, Lcom/nuance/dragon/toolkit/cloudservices/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[BLjava/lang/String;Lcom/nuance/dragon/toolkit/audio/AudioType;Lcom/nuance/dragon/toolkit/audio/AudioType;Ljava/util/List;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->e:Lcom/nuance/dragon/toolkit/cloudservices/b;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->g:Landroid/os/Handler;

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/c$2;

    invoke-direct {v0, p0}, Lcom/nuance/dragon/toolkit/cloudservices/c$2;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/c;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->d:Lcom/nuance/a/a/a/b/c/a/c;

    sget-object v0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;->DISCONNECTED:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/cloudservices/c;->a()Lcom/nuance/a/a/a/b/c/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->c:Lcom/nuance/a/a/a/b/c/a/a;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->c:Lcom/nuance/a/a/a/b/c/a/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->e:Lcom/nuance/dragon/toolkit/cloudservices/b;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->f:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/cloudservices/c;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->g:Landroid/os/Handler;

    return-object v0
.end method

.method private a()Lcom/nuance/a/a/a/b/c/a/a;
    .locals 10

    const/4 v9, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->e:Lcom/nuance/dragon/toolkit/cloudservices/b;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/b;->i()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/cloudservices/NMTConfig;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/cloudservices/NMTConfig;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/NMTConfig;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v5, Lcom/nuance/a/a/a/b/b/c;

    sget-object v6, Lcom/nuance/a/a/a/b/b/c$a;->a:Lcom/nuance/a/a/a/b/b/c$a;

    invoke-direct {v5, v1, v4, v6}, Lcom/nuance/a/a/a/b/b/c;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/a/a/a/b/b/c$a;)V

    invoke-virtual {v7, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unable to create NMSP manager"

    invoke-static {p0, v1, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v9

    :goto_1
    return-object v0

    :cond_2
    move-object v7, v9

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->e:Lcom/nuance/dragon/toolkit/cloudservices/b;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/b;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->e:Lcom/nuance/dragon/toolkit/cloudservices/b;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/cloudservices/b;->e()S

    move-result v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->e:Lcom/nuance/dragon/toolkit/cloudservices/b;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/cloudservices/b;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->e:Lcom/nuance/dragon/toolkit/cloudservices/b;

    invoke-virtual {v3}, Lcom/nuance/dragon/toolkit/cloudservices/b;->c()[B

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->e:Lcom/nuance/dragon/toolkit/cloudservices/b;

    invoke-virtual {v4}, Lcom/nuance/dragon/toolkit/cloudservices/b;->h()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->e:Lcom/nuance/dragon/toolkit/cloudservices/b;

    invoke-virtual {v5}, Lcom/nuance/dragon/toolkit/cloudservices/b;->j()Lcom/nuance/a/a/a/a/a/a$a;

    move-result-object v5

    iget-object v6, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->e:Lcom/nuance/dragon/toolkit/cloudservices/b;

    invoke-virtual {v6}, Lcom/nuance/dragon/toolkit/cloudservices/b;->k()Lcom/nuance/a/a/a/a/a/a$a;

    move-result-object v6

    iget-object v8, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->d:Lcom/nuance/a/a/a/b/c/a/c;

    invoke-static/range {v0 .. v8}, Lcom/nuance/a/a/a/b/c/a/b;->a(Ljava/lang/String;SLjava/lang/String;[BLjava/lang/String;Lcom/nuance/a/a/a/a/a/a$a;Lcom/nuance/a/a/a/a/a/a$a;Ljava/util/Vector;Lcom/nuance/a/a/a/b/c/a/c;)Lcom/nuance/a/a/a/b/c/a/a;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/cloudservices/c;Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;)Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    return-object p1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/cloudservices/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/cloudservices/c;)Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$CalllogDataListener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->i:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$CalllogDataListener;

    return-object v0
.end method


# virtual methods
.method protected final canStartTransaction()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->f:Z

    return v0
.end method

.method protected final createCommandContext(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)Lcom/nuance/dragon/toolkit/cloudservices/d;
    .locals 3

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/e;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->c:Lcom/nuance/a/a/a/b/c/a/a;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->e:Lcom/nuance/dragon/toolkit/cloudservices/b;

    invoke-direct {v0, v1, v2, p1}, Lcom/nuance/dragon/toolkit/cloudservices/e;-><init>(Lcom/nuance/a/a/a/b/c/a/a;Lcom/nuance/dragon/toolkit/cloudservices/b;Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCalllogSender(Lcom/nuance/dragon/toolkit/cloudservices/calllog/CalllogSender$SenderListener;)Lcom/nuance/dragon/toolkit/cloudservices/calllog/CalllogSender;
    .locals 2

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/c$1;

    invoke-direct {v0, p0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/c$1;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/c;Lcom/nuance/dragon/toolkit/cloudservices/calllog/CalllogSender$SenderListener;)V

    new-instance v1, Lcom/nuance/a/a/a/b/a/b/a/c;

    invoke-direct {v1, v0}, Lcom/nuance/a/a/a/b/a/b/a/c;-><init>(Lcom/nuance/a/a/a/b/a/a/a$a;)V

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/a;

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/a;-><init>(Lcom/nuance/a/a/a/b/a/a/a;)V

    return-object v0
.end method

.method public final getConnectionState()Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;->DISCONNECTED:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    goto :goto_0
.end method

.method public final getSessionEvent(Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$CalllogDataListener;)Lcom/nuance/dragon/toolkit/cloudservices/calllog/SessionEvent;
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->h:Lcom/nuance/dragon/toolkit/cloudservices/calllog/SessionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->h:Lcom/nuance/dragon/toolkit/cloudservices/calllog/SessionEvent;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->c:Lcom/nuance/a/a/a/b/c/a/a;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->c:Lcom/nuance/a/a/a/b/c/a/a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->e:Lcom/nuance/dragon/toolkit/cloudservices/b;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/cloudservices/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/a/a/a/b/c/a/a;->a(Ljava/lang/String;)Lcom/nuance/a/a/a/b/a/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/a/a/a/b/a/a/d;->a()Lcom/nuance/a/a/a/b/a/a/b;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/c;

    invoke-direct {v1, v0}, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/c;-><init>(Lcom/nuance/a/a/a/b/a/a/b;)V

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->h:Lcom/nuance/dragon/toolkit/cloudservices/calllog/SessionEvent;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->i:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$CalllogDataListener;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->h:Lcom/nuance/dragon/toolkit/cloudservices/calllog/SessionEvent;

    goto :goto_0
.end method

.method public final getSessionID()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getUniqueID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->e:Lcom/nuance/dragon/toolkit/cloudservices/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->e:Lcom/nuance/dragon/toolkit/cloudservices/b;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/b;->h()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final release()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/nuance/dragon/toolkit/cloudservices/a;->release()V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->c:Lcom/nuance/a/a/a/b/c/a/a;

    invoke-interface {v0}, Lcom/nuance/a/a/a/b/c/a/a;->c_()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->f:Z

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->e:Lcom/nuance/dragon/toolkit/cloudservices/b;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/c;->h:Lcom/nuance/dragon/toolkit/cloudservices/calllog/SessionEvent;

    :cond_0
    return-void
.end method
