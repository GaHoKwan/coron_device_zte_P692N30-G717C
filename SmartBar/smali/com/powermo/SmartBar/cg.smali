.class Lcom/powermo/SmartBar/cg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/bz;

.field private b:F


# direct methods
.method private constructor <init>(Lcom/powermo/SmartBar/bz;)V
    .locals 1

    iput-object p1, p0, Lcom/powermo/SmartBar/cg;->a:Lcom/powermo/SmartBar/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/powermo/SmartBar/cg;->b:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/powermo/SmartBar/bz;Lcom/powermo/SmartBar/cg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/SmartBar/cg;-><init>(Lcom/powermo/SmartBar/bz;)V

    return-void
.end method

.method private a(I)V
    .locals 3

    iget-object v0, p0, Lcom/powermo/SmartBar/cg;->a:Lcom/powermo/SmartBar/bz;

    invoke-static {v0}, Lcom/powermo/SmartBar/bz;->c(Lcom/powermo/SmartBar/bz;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/cg;->a:Lcom/powermo/SmartBar/bz;

    invoke-static {v0}, Lcom/powermo/SmartBar/bz;->c(Lcom/powermo/SmartBar/bz;)Landroid/os/Handler;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/powermo/SmartBar/cg;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/SmartBar/cg;->a(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/high16 v1, 0x3f80

    iget-object v0, p0, Lcom/powermo/SmartBar/cg;->a:Lcom/powermo/SmartBar/bz;

    invoke-static {v0}, Lcom/powermo/SmartBar/bz;->c(Lcom/powermo/SmartBar/bz;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/powermo/SmartBar/cg;->b:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iput v1, p0, Lcom/powermo/SmartBar/cg;->b:F

    iget-object v0, p0, Lcom/powermo/SmartBar/cg;->a:Lcom/powermo/SmartBar/bz;

    iget v1, p0, Lcom/powermo/SmartBar/cg;->b:F

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/powermo/SmartBar/bz;->a(Lcom/powermo/SmartBar/bz;FZ)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    const v2, 0x3e99999a

    iget v0, p0, Lcom/powermo/SmartBar/cg;->b:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/powermo/SmartBar/cg;->b:F

    const v1, 0x3dcccccd

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/powermo/SmartBar/cg;->b:F

    iget v0, p0, Lcom/powermo/SmartBar/cg;->b:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/powermo/SmartBar/cg;->a:Lcom/powermo/SmartBar/bz;

    iget v2, p0, Lcom/powermo/SmartBar/cg;->b:F

    invoke-static {v1, v2, v0}, Lcom/powermo/SmartBar/bz;->a(Lcom/powermo/SmartBar/bz;FZ)V

    const/16 v0, 0x42

    invoke-direct {p0, v0}, Lcom/powermo/SmartBar/cg;->a(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
