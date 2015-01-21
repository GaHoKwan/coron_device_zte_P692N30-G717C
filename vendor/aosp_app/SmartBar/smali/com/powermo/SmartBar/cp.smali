.class Lcom/powermo/SmartBar/cp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/cm;


# direct methods
.method private constructor <init>(Lcom/powermo/SmartBar/cm;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/cp;->a:Lcom/powermo/SmartBar/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powermo/SmartBar/cm;Lcom/powermo/SmartBar/cp;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/SmartBar/cp;-><init>(Lcom/powermo/SmartBar/cm;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/powermo/SmartBar/cp;->a:Lcom/powermo/SmartBar/cm;

    invoke-static {v0}, Lcom/powermo/SmartBar/cm;->d(Lcom/powermo/SmartBar/cm;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/powermo/SmartBar/cp;->a:Lcom/powermo/SmartBar/cm;

    invoke-static {v1}, Lcom/powermo/SmartBar/cm;->e(Lcom/powermo/SmartBar/cm;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/powermo/SmartBar/cp;->a:Lcom/powermo/SmartBar/cm;

    invoke-static {v2}, Lcom/powermo/SmartBar/cm;->f(Lcom/powermo/SmartBar/cm;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/powermo/SmartBar/cp;->a:Lcom/powermo/SmartBar/cm;

    invoke-static {v0}, Lcom/powermo/SmartBar/cm;->d(Lcom/powermo/SmartBar/cm;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/powermo/SmartBar/cp;->a:Lcom/powermo/SmartBar/cm;

    invoke-static {v1}, Lcom/powermo/SmartBar/cm;->e(Lcom/powermo/SmartBar/cm;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/powermo/SmartBar/cp;->a:Lcom/powermo/SmartBar/cm;

    invoke-static {v0}, Lcom/powermo/SmartBar/cm;->g(Lcom/powermo/SmartBar/cm;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/cp;->a:Lcom/powermo/SmartBar/cm;

    invoke-static {v0}, Lcom/powermo/SmartBar/cm;->h(Lcom/powermo/SmartBar/cm;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/cp;->a:Lcom/powermo/SmartBar/cm;

    invoke-static {v0}, Lcom/powermo/SmartBar/cm;->e(Lcom/powermo/SmartBar/cm;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/cp;->a:Lcom/powermo/SmartBar/cm;

    invoke-static {v0}, Lcom/powermo/SmartBar/cm;->e(Lcom/powermo/SmartBar/cm;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lcom/powermo/SmartBar/cp;->b()V

    return-void
.end method
