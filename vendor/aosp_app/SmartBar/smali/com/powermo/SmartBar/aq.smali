.class Lcom/powermo/SmartBar/aq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/ai;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/aq;->a:Lcom/powermo/SmartBar/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/powermo/SmartBar/aq;->a:Lcom/powermo/SmartBar/ai;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powermo/SmartBar/ai;->a(Lcom/powermo/SmartBar/ai;Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/aq;->a:Lcom/powermo/SmartBar/ai;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powermo/SmartBar/ai;->b(Lcom/powermo/SmartBar/ai;Z)V

    iget-object v0, p0, Lcom/powermo/SmartBar/aq;->a:Lcom/powermo/SmartBar/ai;

    iget-object v0, v0, Lcom/powermo/SmartBar/ai;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/powermo/SmartBar/aq;->a:Lcom/powermo/SmartBar/ai;

    invoke-static {v1}, Lcom/powermo/SmartBar/ai;->d(Lcom/powermo/SmartBar/ai;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
