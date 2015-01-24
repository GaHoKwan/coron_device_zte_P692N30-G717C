.class Lcom/powermo/SmartBar/bt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/bo;


# direct methods
.method private constructor <init>(Lcom/powermo/SmartBar/bo;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/bt;->a:Lcom/powermo/SmartBar/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powermo/SmartBar/bo;Lcom/powermo/SmartBar/bt;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/SmartBar/bt;-><init>(Lcom/powermo/SmartBar/bo;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/powermo/SmartBar/bt;->a:Lcom/powermo/SmartBar/bo;

    invoke-static {v0}, Lcom/powermo/SmartBar/bo;->f(Lcom/powermo/SmartBar/bo;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/bt;->a:Lcom/powermo/SmartBar/bo;

    invoke-static {v0}, Lcom/powermo/SmartBar/bo;->f(Lcom/powermo/SmartBar/bo;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/bt;->a:Lcom/powermo/SmartBar/bo;

    invoke-static {v0}, Lcom/powermo/SmartBar/bo;->f(Lcom/powermo/SmartBar/bo;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/bt;->a:Lcom/powermo/SmartBar/bo;

    invoke-static {v0}, Lcom/powermo/SmartBar/bo;->f(Lcom/powermo/SmartBar/bo;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/bt;->a:Lcom/powermo/SmartBar/bo;

    invoke-static {v0}, Lcom/powermo/SmartBar/bo;->a(Lcom/powermo/SmartBar/bo;)V

    return-void
.end method
