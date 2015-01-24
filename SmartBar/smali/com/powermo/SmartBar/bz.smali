.class public Lcom/powermo/SmartBar/bz;
.super Ljava/lang/Object;


# instance fields
.field private final A:Landroid/os/Handler;

.field private B:Lcom/powermo/SmartBar/ci;

.field protected a:Lcom/powermo/b/a;

.field b:Z

.field private final c:Lcom/powermo/SmartBar/bv;

.field private d:Landroid/app/Dialog;

.field private e:Landroid/view/View;

.field private f:Landroid/content/Context;

.field private g:Landroid/view/Window;

.field private final h:Landroid/graphics/Point;

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:Z

.field private final n:Landroid/graphics/Point;

.field private o:Z

.field private p:I

.field private q:Lcom/powermo/SmartBar/SmartBarService;

.field private r:Lcom/powermo/SmartBar/bw;

.field private s:Z

.field private t:Landroid/os/Vibrator;

.field private final u:Landroid/view/WindowManager;

.field private final v:Lcom/powermo/SmartBar/cf;

.field private final w:Ljava/lang/Runnable;

.field private final x:Lcom/powermo/SmartBar/cg;

.field private final y:Landroid/view/View$OnTouchListener;

.field private z:Lcom/powermo/SmartBar/ch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/powermo/SmartBar/bz;->h:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/powermo/SmartBar/bz;->n:Landroid/graphics/Point;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/powermo/SmartBar/bz;->o:Z

    iput v1, p0, Lcom/powermo/SmartBar/bz;->p:I

    iput-boolean v1, p0, Lcom/powermo/SmartBar/bz;->s:Z

    iput-object v2, p0, Lcom/powermo/SmartBar/bz;->t:Landroid/os/Vibrator;

    iput-boolean v1, p0, Lcom/powermo/SmartBar/bz;->b:Z

    new-instance v0, Lcom/powermo/SmartBar/ca;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/ca;-><init>(Lcom/powermo/SmartBar/bz;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/bz;->v:Lcom/powermo/SmartBar/cf;

    new-instance v0, Lcom/powermo/SmartBar/cb;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/cb;-><init>(Lcom/powermo/SmartBar/bz;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/bz;->w:Ljava/lang/Runnable;

    new-instance v0, Lcom/powermo/SmartBar/cg;

    invoke-direct {v0, p0, v2}, Lcom/powermo/SmartBar/cg;-><init>(Lcom/powermo/SmartBar/bz;Lcom/powermo/SmartBar/cg;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/bz;->x:Lcom/powermo/SmartBar/cg;

    new-instance v0, Lcom/powermo/SmartBar/cc;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/cc;-><init>(Lcom/powermo/SmartBar/bz;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/bz;->y:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/powermo/SmartBar/cd;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/cd;-><init>(Lcom/powermo/SmartBar/bz;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/bz;->z:Lcom/powermo/SmartBar/ch;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/powermo/SmartBar/bz;->A:Landroid/os/Handler;

    new-instance v0, Lcom/powermo/SmartBar/ci;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/ci;-><init>(Lcom/powermo/SmartBar/bz;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/bz;->B:Lcom/powermo/SmartBar/ci;

    iput-object p1, p0, Lcom/powermo/SmartBar/bz;->f:Landroid/content/Context;

    new-instance v0, Lcom/powermo/SmartBar/bw;

    invoke-direct {v0, p1}, Lcom/powermo/SmartBar/bw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/bz;->r:Lcom/powermo/SmartBar/bw;

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->f:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/powermo/SmartBar/bz;->t:Landroid/os/Vibrator;

    new-instance v0, Lcom/powermo/SmartBar/bv;

    invoke-direct {v0, p1}, Lcom/powermo/SmartBar/bv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/bz;->c:Lcom/powermo/SmartBar/bv;

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->f:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/powermo/SmartBar/bz;->u:Landroid/view/WindowManager;

    return-void
.end method

.method static synthetic a(Lcom/powermo/SmartBar/bz;)Lcom/powermo/SmartBar/cf;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->v:Lcom/powermo/SmartBar/cf;

    return-object v0
.end method

.method private a(FZ)V
    .locals 2

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->g:Landroid/view/Window;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/powermo/SmartBar/bz;FZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/powermo/SmartBar/bz;->a(FZ)V

    return-void
.end method

.method static synthetic a(Lcom/powermo/SmartBar/bz;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/powermo/SmartBar/bz;->m:Z

    return-void
.end method

.method static synthetic b(Lcom/powermo/SmartBar/bz;)Landroid/os/Vibrator;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->t:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic c(Lcom/powermo/SmartBar/bz;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->A:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/powermo/SmartBar/bz;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->w:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lcom/powermo/SmartBar/bz;)Lcom/powermo/SmartBar/cg;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->x:Lcom/powermo/SmartBar/cg;

    return-object v0
.end method

.method static synthetic f(Lcom/powermo/SmartBar/bz;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/powermo/SmartBar/bz;)Lcom/powermo/SmartBar/ch;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->z:Lcom/powermo/SmartBar/ch;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/powermo/SmartBar/bz;->p:I

    return v0
.end method

.method a(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-boolean v0, Lcom/powermo/SmartBar/dc;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->q:Lcom/powermo/SmartBar/SmartBarService;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/SmartBarService;->b()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->q:Lcom/powermo/SmartBar/SmartBarService;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/SmartBarService;->a()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method a(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method a(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/powermo/SmartBar/bz;->u:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/powermo/SmartBar/bz;->h:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v1, p0, Lcom/powermo/SmartBar/bz;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/powermo/SmartBar/bz;->b:Z

    invoke-virtual {p0}, Lcom/powermo/SmartBar/bz;->c()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lcom/powermo/SmartBar/SmartBarService;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/powermo/SmartBar/bz;->q:Lcom/powermo/SmartBar/SmartBarService;

    iput-boolean v2, p0, Lcom/powermo/SmartBar/bz;->j:Z

    iput-boolean v1, p0, Lcom/powermo/SmartBar/bz;->i:Z

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/powermo/SmartBar/dc;->n:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/powermo/SmartBar/bz;->m:Z

    iput-object v4, p0, Lcom/powermo/SmartBar/bz;->d:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->f:Landroid/content/Context;

    const-string v3, "show_s_btn"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "laststate"

    const-string v3, "hide"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "hide"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/powermo/SmartBar/bz;->j:Z

    :cond_0
    invoke-virtual {p0, v4}, Lcom/powermo/SmartBar/bz;->a(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/powermo/SmartBar/bz;->b()V

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->B:Lcom/powermo/SmartBar/ci;

    iget-object v1, p0, Lcom/powermo/SmartBar/bz;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/ci;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/powermo/b/a;->a()Lcom/powermo/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/bz;->a:Lcom/powermo/b/a;

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/powermo/SmartBar/bz;->i:Z

    invoke-virtual {p0}, Lcom/powermo/SmartBar/bz;->b()V

    return-void
.end method

.method a(ZIIZ)V
    .locals 8

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/powermo/SmartBar/bz;->k:I

    div-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/powermo/SmartBar/bz;->l:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/powermo/SmartBar/bz;->g:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    if-eqz p1, :cond_3

    sub-int v0, p2, v0

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v0, p3, v2

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_0
    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v0, :cond_4

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_0
    :goto_1
    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    if-gez v0, :cond_5

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_1
    :goto_2
    if-eqz p4, :cond_2

    if-nez p1, :cond_9

    :cond_2
    const/4 v0, 0x4

    new-array v6, v0, [I

    aput p2, v6, v1

    aput p3, v6, v4

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/powermo/SmartBar/bz;->h:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, p2

    aput v2, v6, v0

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/powermo/SmartBar/bz;->h:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, p3

    aput v2, v6, v0

    const v0, 0x7fffffff

    move v2, v1

    move v3, v0

    move v0, v1

    :goto_3
    array-length v7, v6

    if-lt v0, v7, :cond_6

    packed-switch v2, :pswitch_data_0

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_4
    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->h:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v0, 0x2

    if-ge p2, v0, :cond_8

    :goto_5
    iput v1, p0, Lcom/powermo/SmartBar/bz;->p:I

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->n:Landroid/graphics/Point;

    iget v1, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {p0}, Lcom/powermo/SmartBar/bz;->f()V

    :goto_6
    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->g:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_3
    iput p2, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p3, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    :cond_4
    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/powermo/SmartBar/bz;->h:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/powermo/SmartBar/bz;->k:I

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->h:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/powermo/SmartBar/bz;->k:I

    sub-int/2addr v0, v2

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_1

    :cond_5
    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/powermo/SmartBar/bz;->h:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/powermo/SmartBar/bz;->l:I

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->h:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/powermo/SmartBar/bz;->l:I

    sub-int/2addr v0, v2

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2

    :cond_6
    aget v7, v6, v0

    if-ge v7, v3, :cond_7

    aget v3, v6, v0

    move v2, v0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :pswitch_0
    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_4

    :pswitch_1
    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->h:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/powermo/SmartBar/bz;->k:I

    sub-int/2addr v0, v2

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_4

    :pswitch_2
    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->h:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/powermo/SmartBar/bz;->l:I

    sub-int/2addr v0, v2

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_4

    :cond_8
    move v1, v4

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->n:Landroid/graphics/Point;

    iget v1, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method b()V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/powermo/SmartBar/bz;->m:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/powermo/SmartBar/bz;->i:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/powermo/SmartBar/bz;->j:Z

    if-eq v0, v2, :cond_0

    iput-boolean v0, p0, Lcom/powermo/SmartBar/bz;->j:Z

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->f:Landroid/content/Context;

    const-string v2, "show_s_btn"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "laststate"

    iget-boolean v0, p0, Lcom/powermo/SmartBar/bz;->j:Z

    if-eqz v0, :cond_2

    const-string v0, "show"

    :goto_1
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/powermo/SmartBar/bz;->c()V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const-string v0, "hide"

    goto :goto_1
.end method

.method c()V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/powermo/SmartBar/bz;->d()V

    iget-boolean v0, p0, Lcom/powermo/SmartBar/bz;->j:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v3, 0x7f06

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/powermo/SmartBar/bz;->k:I

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f060001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/powermo/SmartBar/bz;->l:I

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/powermo/SmartBar/bz;->b:Z

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->u:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v3, p0, Lcom/powermo/SmartBar/bz;->h:Landroid/graphics/Point;

    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->f:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v3, 0x7f03000a

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/bz;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->e:Landroid/view/View;

    iget-object v3, p0, Lcom/powermo/SmartBar/bz;->y:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/app/Dialog;

    iget-object v3, p0, Lcom/powermo/SmartBar/bz;->f:Landroid/content/Context;

    sget v4, Lcom/powermo/SmartBar/dc;->h:I

    invoke-direct {v0, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/powermo/SmartBar/bz;->d:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->d:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->d:Landroid/app/Dialog;

    const-string v3, "SDock"

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->d:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/powermo/SmartBar/bz;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->d:Landroid/app/Dialog;

    new-instance v3, Lcom/powermo/SmartBar/ce;

    invoke-direct {v3, p0}, Lcom/powermo/SmartBar/ce;-><init>(Lcom/powermo/SmartBar/bz;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput-object v5, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    sget v4, Lcom/powermo/SmartBar/dc;->i:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x33

    invoke-virtual {v0, v4}, Landroid/view/Window;->setGravity(I)V

    iget v4, p0, Lcom/powermo/SmartBar/bz;->k:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v4, p0, Lcom/powermo/SmartBar/bz;->l:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    const/high16 v4, 0x3f80

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    iput-object v0, p0, Lcom/powermo/SmartBar/bz;->g:Landroid/view/Window;

    invoke-virtual {p0}, Lcom/powermo/SmartBar/bz;->e()V

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->n:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/powermo/SmartBar/bz;->n:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v2, v0, v3, v2}, Lcom/powermo/SmartBar/bz;->a(ZIIZ)V

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-boolean v0, p0, Lcom/powermo/SmartBar/bz;->s:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/powermo/SmartBar/bz;->s:Z

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->r:Lcom/powermo/SmartBar/bw;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/bw;->a()V

    :cond_1
    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->x:Lcom/powermo/SmartBar/cg;

    const/16 v1, 0xdac

    invoke-static {v0, v1}, Lcom/powermo/SmartBar/cg;->a(Lcom/powermo/SmartBar/cg;I)V

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto/16 :goto_1
.end method

.method d()V
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->x:Lcom/powermo/SmartBar/cg;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/cg;->a()V

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/SmartBar/bz;->d:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method e()V
    .locals 5

    iget-boolean v0, p0, Lcom/powermo/SmartBar/bz;->b:Z

    iput-boolean v0, p0, Lcom/powermo/SmartBar/bz;->o:Z

    iget-boolean v0, p0, Lcom/powermo/SmartBar/bz;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->h:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/powermo/SmartBar/bz;->k:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/powermo/SmartBar/bz;->h:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/powermo/SmartBar/bz;->l:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/powermo/SmartBar/bz;->n:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/powermo/SmartBar/bz;->c:Lcom/powermo/SmartBar/bv;

    const-string v4, "cfg_sbtn_port_x"

    invoke-virtual {v3, v4, v0}, Lcom/powermo/SmartBar/bv;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->n:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/powermo/SmartBar/bz;->c:Lcom/powermo/SmartBar/bv;

    const-string v3, "cfg_sbtn_port_y"

    invoke-virtual {v2, v3, v1}, Lcom/powermo/SmartBar/bv;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->h:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/powermo/SmartBar/bz;->k:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/powermo/SmartBar/bz;->h:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/powermo/SmartBar/bz;->l:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/powermo/SmartBar/bz;->n:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/powermo/SmartBar/bz;->c:Lcom/powermo/SmartBar/bv;

    const-string v4, "cfg_sbtn_land_x"

    invoke-virtual {v3, v4, v0}, Lcom/powermo/SmartBar/bv;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->n:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/powermo/SmartBar/bz;->c:Lcom/powermo/SmartBar/bv;

    const-string v3, "cfg_sbtn_land_y"

    invoke-virtual {v2, v3, v1}, Lcom/powermo/SmartBar/bv;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method f()V
    .locals 3

    iget-boolean v0, p0, Lcom/powermo/SmartBar/bz;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->c:Lcom/powermo/SmartBar/bv;

    const-string v1, "cfg_sbtn_port_x"

    iget-object v2, p0, Lcom/powermo/SmartBar/bz;->n:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1, v2}, Lcom/powermo/SmartBar/bv;->b(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->c:Lcom/powermo/SmartBar/bv;

    const-string v1, "cfg_sbtn_port_y"

    iget-object v2, p0, Lcom/powermo/SmartBar/bz;->n:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/powermo/SmartBar/bv;->b(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->c:Lcom/powermo/SmartBar/bv;

    const-string v1, "cfg_sbtn_land_x"

    iget-object v2, p0, Lcom/powermo/SmartBar/bz;->n:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1, v2}, Lcom/powermo/SmartBar/bv;->b(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/powermo/SmartBar/bz;->c:Lcom/powermo/SmartBar/bv;

    const-string v1, "cfg_sbtn_land_y"

    iget-object v2, p0, Lcom/powermo/SmartBar/bz;->n:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/powermo/SmartBar/bv;->b(Ljava/lang/String;I)V

    goto :goto_0
.end method
