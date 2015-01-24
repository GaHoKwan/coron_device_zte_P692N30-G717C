.class Lcom/powermo/SmartBar/h;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/c;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/c;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/h;->a:Lcom/powermo/SmartBar/c;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v0, p0, Lcom/powermo/SmartBar/h;->a:Lcom/powermo/SmartBar/c;

    invoke-static {v0}, Lcom/powermo/SmartBar/c;->a(Lcom/powermo/SmartBar/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/SmartBar/h;->a:Lcom/powermo/SmartBar/c;

    invoke-static {v1}, Lcom/powermo/SmartBar/c;->e(Lcom/powermo/SmartBar/c;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/h;->a:Lcom/powermo/SmartBar/c;

    invoke-static {v0}, Lcom/powermo/SmartBar/c;->a(Lcom/powermo/SmartBar/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/SmartBar/h;->a:Lcom/powermo/SmartBar/c;

    invoke-static {v1}, Lcom/powermo/SmartBar/c;->e(Lcom/powermo/SmartBar/c;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
