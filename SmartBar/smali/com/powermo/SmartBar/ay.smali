.class public Lcom/powermo/SmartBar/ay;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:F

.field c:F

.field final d:Landroid/view/View$OnTouchListener;

.field e:I

.field private f:Landroid/app/Dialog;

.field private g:Landroid/view/View;

.field private h:Landroid/content/Context;

.field private i:Landroid/view/Window;

.field private j:Landroid/util/DisplayMetrics;

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/powermo/SmartBar/ay;->a:Z

    new-instance v0, Lcom/powermo/SmartBar/az;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/az;-><init>(Lcom/powermo/SmartBar/ay;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/ay;->d:Landroid/view/View$OnTouchListener;

    iput v1, p0, Lcom/powermo/SmartBar/ay;->e:I

    iput-object p1, p0, Lcom/powermo/SmartBar/ay;->h:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/powermo/SmartBar/ay;)Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/ay;->i:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic b(Lcom/powermo/SmartBar/ay;)Landroid/util/DisplayMetrics;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/ay;->j:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method private b(Z)V
    .locals 4

    const/16 v3, 0x32

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/powermo/SmartBar/ay;->i:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-boolean v1, p0, Lcom/powermo/SmartBar/ay;->n:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/powermo/SmartBar/ay;->e:I

    if-nez v1, :cond_1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/powermo/SmartBar/ay;->m:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/powermo/SmartBar/ay;->i:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_1
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powermo/SmartBar/ay;->k:Z

    iput-boolean v0, p0, Lcom/powermo/SmartBar/ay;->l:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/SmartBar/ay;->f:Landroid/app/Dialog;

    return-void
.end method

.method a(I)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/ay;->i:Landroid/view/Window;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/powermo/SmartBar/ay;->e:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/powermo/SmartBar/ay;->e:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/powermo/SmartBar/ay;->b(Z)V

    goto :goto_0
.end method

.method a(Landroid/content/Intent;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "cmd_create_imedock"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/ay;->a(Z)V

    :cond_0
    const-string v0, "cmd_show_imedock"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iput-boolean v1, p0, Lcom/powermo/SmartBar/ay;->l:Z

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/powermo/SmartBar/ay;->b()V

    :cond_2
    const-string v0, "status_focus_hint"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/ay;->a(I)V

    :cond_3
    return-void

    :cond_4
    const-string v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_5
    const-string v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/powermo/SmartBar/ay;->l:Z

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_0
.end method

.method a(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/powermo/SmartBar/ay;->h:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcom/powermo/SmartBar/ay;->j:Landroid/util/DisplayMetrics;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v2, p0, Lcom/powermo/SmartBar/ay;->j:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ay;->j:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/powermo/SmartBar/ay;->m:I

    iget-object v0, p0, Lcom/powermo/SmartBar/ay;->f:Landroid/app/Dialog;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/powermo/SmartBar/ay;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/powermo/SmartBar/ay;->n:Z

    invoke-direct {p0, v1}, Lcom/powermo/SmartBar/ay;->b(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/powermo/SmartBar/ay;->k:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/powermo/SmartBar/ay;->k:Z

    invoke-virtual {p0}, Lcom/powermo/SmartBar/ay;->c()V

    goto :goto_0
.end method

.method b()V
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/ay;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/powermo/SmartBar/ay;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powermo/SmartBar/ay;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/powermo/SmartBar/ay;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    goto :goto_0
.end method

.method c()V
    .locals 6

    const/16 v5, 0x32

    const/4 v4, -0x2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/powermo/SmartBar/ay;->d()V

    iget-boolean v0, p0, Lcom/powermo/SmartBar/ay;->k:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/powermo/SmartBar/ay;->h:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030007

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/ay;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/powermo/SmartBar/ay;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/powermo/SmartBar/ay;->d:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/powermo/SmartBar/ay;->h:Landroid/content/Context;

    sget v2, Lcom/powermo/SmartBar/dc;->h:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/powermo/SmartBar/ay;->f:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/powermo/SmartBar/ay;->f:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/powermo/SmartBar/ay;->f:Landroid/app/Dialog;

    const-string v1, "ImeDock"

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ay;->f:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/powermo/SmartBar/ay;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ay;->f:Landroid/app/Dialog;

    new-instance v1, Lcom/powermo/SmartBar/ba;

    invoke-direct {v1, p0}, Lcom/powermo/SmartBar/ba;-><init>(Lcom/powermo/SmartBar/ay;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ay;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    sget v2, Lcom/powermo/SmartBar/dc;->k:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x33

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v1, 0x40028

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iput-object v0, p0, Lcom/powermo/SmartBar/ay;->i:Landroid/view/Window;

    invoke-virtual {p0, v3}, Lcom/powermo/SmartBar/ay;->a(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/powermo/SmartBar/ay;->b()V

    goto :goto_0
.end method

.method d()V
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/ay;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/ay;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/SmartBar/ay;->f:Landroid/app/Dialog;

    :cond_0
    return-void
.end method
