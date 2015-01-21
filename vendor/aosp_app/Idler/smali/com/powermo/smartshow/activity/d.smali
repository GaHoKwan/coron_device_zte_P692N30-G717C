.class Lcom/powermo/smartshow/activity/d;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/powermo/smartshow/activity/a;


# direct methods
.method constructor <init>(Lcom/powermo/smartshow/activity/a;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/smartshow/activity/d;->a:Lcom/powermo/smartshow/activity/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/powermo/smartshow/activity/d;->a:Lcom/powermo/smartshow/activity/a;

    invoke-static {v0}, Lcom/powermo/smartshow/activity/a;->a(Lcom/powermo/smartshow/activity/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/smartshow/activity/d;->a:Lcom/powermo/smartshow/activity/a;

    invoke-static {v1}, Lcom/powermo/smartshow/activity/a;->b(Lcom/powermo/smartshow/activity/a;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/powermo/smartshow/activity/d;->a:Lcom/powermo/smartshow/activity/a;

    invoke-static {v0}, Lcom/powermo/smartshow/activity/a;->a(Lcom/powermo/smartshow/activity/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/smartshow/activity/d;->a:Lcom/powermo/smartshow/activity/a;

    invoke-static {v1}, Lcom/powermo/smartshow/activity/a;->b(Lcom/powermo/smartshow/activity/a;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
