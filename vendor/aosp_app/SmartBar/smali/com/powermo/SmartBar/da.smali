.class public Lcom/powermo/SmartBar/da;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/Dialog;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/SmartBar/da;->b:Landroid/app/Dialog;

    iput-object p1, p0, Lcom/powermo/SmartBar/da;->a:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powermo/SmartBar/da;->c:Z

    return-void
.end method


# virtual methods
.method a()V
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/powermo/SmartBar/da;->b()V

    iget-boolean v0, p0, Lcom/powermo/SmartBar/da;->c:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/powermo/SmartBar/da;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/powermo/SmartBar/da;->d:Z

    iget-object v0, p0, Lcom/powermo/SmartBar/da;->a:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-boolean v3, p0, Lcom/powermo/SmartBar/da;->d:Z

    if-eqz v3, :cond_2

    const v3, 0x7f03000d

    :goto_2
    invoke-virtual {v0, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v3, Landroid/app/Dialog;

    iget-object v4, p0, Lcom/powermo/SmartBar/da;->a:Landroid/content/Context;

    sget v5, Lcom/powermo/SmartBar/dc;->h:I

    invoke-direct {v3, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/powermo/SmartBar/da;->b:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/powermo/SmartBar/da;->b:Landroid/app/Dialog;

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v1, p0, Lcom/powermo/SmartBar/da;->b:Landroid/app/Dialog;

    const-string v3, "SplitBarHint"

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/powermo/SmartBar/da;->b:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/powermo/SmartBar/da;->b:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput-object v7, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/16 v3, 0x7d2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-boolean v3, p0, Lcom/powermo/SmartBar/da;->d:Z

    if-eqz v3, :cond_3

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    sget v3, Lcom/powermo/SmartBar/dc;->C:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v2, 0x118

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    iget-object v1, p0, Lcom/powermo/SmartBar/da;->b:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    const v3, 0x7f03000c

    goto :goto_2

    :cond_3
    sget v3, Lcom/powermo/SmartBar/dc;->C:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_3
.end method

.method a(II)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/powermo/SmartBar/da;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/da;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-boolean v2, p0, Lcom/powermo/SmartBar/da;->d:Z

    if-eqz v2, :cond_1

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v2, Lcom/powermo/SmartBar/dc;->D:I

    sub-int v2, p2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    sget v2, Lcom/powermo/SmartBar/dc;->D:I

    sub-int v2, p1, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0
.end method

.method a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/powermo/SmartBar/da;->c:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/powermo/SmartBar/da;->c:Z

    invoke-virtual {p0}, Lcom/powermo/SmartBar/da;->a()V

    goto :goto_0
.end method

.method b()V
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/da;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/da;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/SmartBar/da;->b:Landroid/app/Dialog;

    :cond_0
    return-void
.end method
