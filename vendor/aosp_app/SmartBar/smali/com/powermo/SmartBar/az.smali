.class Lcom/powermo/SmartBar/az;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/ay;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/az;->a:Lcom/powermo/SmartBar/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/az;->a:Lcom/powermo/SmartBar/ay;

    iput-boolean v7, v0, Lcom/powermo/SmartBar/ay;->a:Z

    iget-object v0, p0, Lcom/powermo/SmartBar/az;->a:Lcom/powermo/SmartBar/ay;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Lcom/powermo/SmartBar/ay;->c:F

    iget-object v0, p0, Lcom/powermo/SmartBar/az;->a:Lcom/powermo/SmartBar/ay;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, v0, Lcom/powermo/SmartBar/ay;->b:F

    :cond_0
    iget-object v0, p0, Lcom/powermo/SmartBar/az;->a:Lcom/powermo/SmartBar/ay;

    iget-boolean v0, v0, Lcom/powermo/SmartBar/ay;->a:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/powermo/SmartBar/az;->a:Lcom/powermo/SmartBar/ay;

    invoke-static {v0}, Lcom/powermo/SmartBar/ay;->a(Lcom/powermo/SmartBar/ay;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v2, p0, Lcom/powermo/SmartBar/az;->a:Lcom/powermo/SmartBar/ay;

    iget v2, v2, Lcom/powermo/SmartBar/ay;->c:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget-object v3, p0, Lcom/powermo/SmartBar/az;->a:Lcom/powermo/SmartBar/ay;

    iget v3, v3, Lcom/powermo/SmartBar/ay;->b:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/powermo/SmartBar/az;->a:Lcom/powermo/SmartBar/ay;

    invoke-static {v3}, Lcom/powermo/SmartBar/ay;->b(Lcom/powermo/SmartBar/ay;)Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v4, p0, Lcom/powermo/SmartBar/az;->a:Lcom/powermo/SmartBar/ay;

    invoke-static {v4}, Lcom/powermo/SmartBar/ay;->b(Lcom/powermo/SmartBar/ay;)Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v1, v5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-gez v1, :cond_5

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_1
    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v1, :cond_6

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/powermo/SmartBar/az;->a:Lcom/powermo/SmartBar/ay;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, v1, Lcom/powermo/SmartBar/ay;->c:F

    iget-object v1, p0, Lcom/powermo/SmartBar/az;->a:Lcom/powermo/SmartBar/ay;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, v1, Lcom/powermo/SmartBar/ay;->b:F

    iget-object v1, p0, Lcom/powermo/SmartBar/az;->a:Lcom/powermo/SmartBar/ay;

    invoke-static {v1}, Lcom/powermo/SmartBar/ay;->a(Lcom/powermo/SmartBar/ay;)Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_4

    iget-object v0, p0, Lcom/powermo/SmartBar/az;->a:Lcom/powermo/SmartBar/ay;

    iput-boolean v6, v0, Lcom/powermo/SmartBar/ay;->a:Z

    :cond_4
    return v7

    :cond_5
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-le v1, v3, :cond_1

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    :cond_6
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-le v1, v4, :cond_2

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_1
.end method
