.class Lcom/plugin/installapk/ar/AR$GDBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/plugin/installapk/ar/AR;


# direct methods
.method private constructor <init>(Lcom/plugin/installapk/ar/AR;)V
    .locals 0

    iput-object p1, p0, Lcom/plugin/installapk/ar/AR$GDBroadCastReceiver;->this$0:Lcom/plugin/installapk/ar/AR;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/plugin/installapk/ar/AR;Lcom/plugin/installapk/ar/AR$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/plugin/installapk/ar/AR$GDBroadCastReceiver;-><init>(Lcom/plugin/installapk/ar/AR;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "chenwei.AR"

    const-string v1, "onReceive()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR$GDBroadCastReceiver;->this$0:Lcom/plugin/installapk/ar/AR;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    #setter for: Lcom/plugin/installapk/ar/AR;->bundle:Landroid/os/Bundle;
    invoke-static {v0, v1}, Lcom/plugin/installapk/ar/AR;->access$102(Lcom/plugin/installapk/ar/AR;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR$GDBroadCastReceiver;->this$0:Lcom/plugin/installapk/ar/AR;

    #getter for: Lcom/plugin/installapk/ar/AR;->bundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/plugin/installapk/ar/AR;->access$100(Lcom/plugin/installapk/ar/AR;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR$GDBroadCastReceiver;->this$0:Lcom/plugin/installapk/ar/AR;

    iget-object v1, p0, Lcom/plugin/installapk/ar/AR$GDBroadCastReceiver;->this$0:Lcom/plugin/installapk/ar/AR;

    #getter for: Lcom/plugin/installapk/ar/AR;->bundle:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/plugin/installapk/ar/AR;->access$100(Lcom/plugin/installapk/ar/AR;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/plugin/installapk/ar/AR;->updateInfo(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
