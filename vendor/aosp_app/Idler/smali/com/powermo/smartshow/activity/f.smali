.class Lcom/powermo/smartshow/activity/f;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/powermo/smartshow/activity/a;


# direct methods
.method constructor <init>(Lcom/powermo/smartshow/activity/a;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/smartshow/activity/f;->a:Lcom/powermo/smartshow/activity/a;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v0, p0, Lcom/powermo/smartshow/activity/f;->a:Lcom/powermo/smartshow/activity/a;

    invoke-static {v0}, Lcom/powermo/smartshow/activity/a;->a(Lcom/powermo/smartshow/activity/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/smartshow/activity/f;->a:Lcom/powermo/smartshow/activity/a;

    invoke-static {v1}, Lcom/powermo/smartshow/activity/a;->e(Lcom/powermo/smartshow/activity/a;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/powermo/smartshow/activity/f;->a:Lcom/powermo/smartshow/activity/a;

    invoke-static {v0}, Lcom/powermo/smartshow/activity/a;->a(Lcom/powermo/smartshow/activity/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/smartshow/activity/f;->a:Lcom/powermo/smartshow/activity/a;

    invoke-static {v1}, Lcom/powermo/smartshow/activity/a;->e(Lcom/powermo/smartshow/activity/a;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
