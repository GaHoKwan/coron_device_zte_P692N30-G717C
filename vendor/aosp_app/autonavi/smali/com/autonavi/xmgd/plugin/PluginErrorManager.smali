.class public Lcom/autonavi/xmgd/plugin/PluginErrorManager;
.super Ljava/lang/Object;


# static fields
.field static final ERROR_PLUGINWRAPPER_CREATEPLUGIN_1:I = 0x5

.field static final ERROR_PLUGINWRAPPER_CREATEPLUGIN_2:I = 0x6

.field static final ERROR_PLUGINWRAPPER_LOAD_1:I = 0x1

.field static final ERROR_PLUGINWRAPPER_LOAD_2:I = 0x2

.field static final ERROR_PLUGINWRAPPER_UNLOAD_1:I = 0x3

.field static final ERROR_PLUGINWRAPPER_UNLOAD_2:I = 0x4

.field private static instance:Lcom/autonavi/xmgd/plugin/PluginErrorManager;


# instance fields
.field private sb:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginErrorManager;->sb:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static freeInstance()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xmgd/plugin/PluginErrorManager;->instance:Lcom/autonavi/xmgd/plugin/PluginErrorManager;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/autonavi/xmgd/plugin/PluginErrorManager;
    .locals 2

    const-class v1, Lcom/autonavi/xmgd/plugin/PluginErrorManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/xmgd/plugin/PluginErrorManager;->instance:Lcom/autonavi/xmgd/plugin/PluginErrorManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/plugin/PluginErrorManager;

    invoke-direct {v0}, Lcom/autonavi/xmgd/plugin/PluginErrorManager;-><init>()V

    sput-object v0, Lcom/autonavi/xmgd/plugin/PluginErrorManager;->instance:Lcom/autonavi/xmgd/plugin/PluginErrorManager;

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/plugin/PluginErrorManager;->instance:Lcom/autonavi/xmgd/plugin/PluginErrorManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginErrorManager;->sb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/autonavi/xmgd/plugin/PluginErrorManager;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginErrorManager;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setError(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/plugin/PluginErrorManager;->setError(Ljava/lang/String;)V

    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginErrorManager;->sb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/autonavi/xmgd/plugin/PluginErrorManager;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginErrorManager;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
