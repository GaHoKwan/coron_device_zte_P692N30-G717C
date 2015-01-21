.class public Lcom/ctc/epush/ShutdownReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Lcom/ctc/c/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Shutdown Receiver():is loading: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/ctc/System/DownOrUnInstalAPPService;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-boolean v0, Lcom/ctc/System/DownOrUnInstalAPPService;->c:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/ctc/c/n;

    invoke-direct {v0, p1}, Lcom/ctc/c/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ctc/epush/ShutdownReceiver;->a:Lcom/ctc/c/n;

    iget-object v0, p0, Lcom/ctc/epush/ShutdownReceiver;->a:Lcom/ctc/c/n;

    const-string v1, "down_isall"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_2
    sget-object v0, Lcom/ctc/c/g;->j:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ctc/c/g;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method
