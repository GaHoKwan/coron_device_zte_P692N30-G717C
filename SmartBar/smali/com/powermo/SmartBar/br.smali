.class Lcom/powermo/SmartBar/br;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/powermo/SmartBar/bb;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/bo;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/bo;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/br;->a:Lcom/powermo/SmartBar/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/powermo/SmartBar/br;->a:Lcom/powermo/SmartBar/bo;

    invoke-static {v0}, Lcom/powermo/SmartBar/bo;->h(Lcom/powermo/SmartBar/bo;)Lcom/powermo/SmartBar/bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powermo/SmartBar/bt;->b()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/powermo/SmartBar/br;->a:Lcom/powermo/SmartBar/bo;

    invoke-static {v0}, Lcom/powermo/SmartBar/bo;->h(Lcom/powermo/SmartBar/bo;)Lcom/powermo/SmartBar/bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powermo/SmartBar/bt;->a()V

    goto :goto_0
.end method
