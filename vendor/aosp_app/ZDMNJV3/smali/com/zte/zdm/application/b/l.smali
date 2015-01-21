.class Lcom/zte/zdm/application/b/l;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/zte/zdm/application/b/k;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/k;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/l;->b:Lcom/zte/zdm/application/b/k;

    iput-object p2, p0, Lcom/zte/zdm/application/b/l;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.zte.zdm.application.STATUS_BAR_COVER_CLICK_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/zte/zdm/application/b/l;->a:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
