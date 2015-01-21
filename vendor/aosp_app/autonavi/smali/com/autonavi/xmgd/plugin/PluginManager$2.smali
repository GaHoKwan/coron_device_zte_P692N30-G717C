.class Lcom/autonavi/xmgd/plugin/PluginManager$2;
.super Lcom/autonavi/xmgd/plugin/PluginManager$RunnableImp;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/plugin/PluginManager;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/plugin/PluginManager;Ljava/lang/String;Landroid/os/Handler;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/plugin/PluginManager$2;->this$0:Lcom/autonavi/xmgd/plugin/PluginManager;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/autonavi/xmgd/plugin/PluginManager$RunnableImp;-><init>(Ljava/lang/String;Landroid/os/Handler;IZ)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-boolean v0, p0, Lcom/autonavi/xmgd/plugin/PluginManager$2;->mInHostAssets:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginManager$2;->this$0:Lcom/autonavi/xmgd/plugin/PluginManager;

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginManager$2;->mDir:Ljava/lang/String;

    #calls: Lcom/autonavi/xmgd/plugin/PluginManager;->copyFromAssetsToSDcard(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/plugin/PluginManager;->access$100(Lcom/autonavi/xmgd/plugin/PluginManager;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginManager$2;->this$0:Lcom/autonavi/xmgd/plugin/PluginManager;

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginManager$2;->mDir:Ljava/lang/String;

    #calls: Lcom/autonavi/xmgd/plugin/PluginManager;->collectOutterPluginFromSDCard(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/plugin/PluginManager;->access$200(Lcom/autonavi/xmgd/plugin/PluginManager;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginManager$2;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/autonavi/xmgd/plugin/PluginManager$2;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/autonavi/xmgd/plugin/PluginManager$2;->mWhat:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
