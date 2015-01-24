.class public Lcom/powermo/SmartBar/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/powermo/SmartBar/av;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/WindowManager;

.field private final c:Landroid/os/Vibrator;

.field private final d:Lcom/powermo/SmartBar/ab;

.field private final e:Lcom/powermo/SmartBar/c;

.field private final f:Z

.field private final g:Landroid/view/WindowManager$LayoutParams;

.field private h:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/powermo/SmartBar/c;Z)V
    .locals 6

    const/4 v1, -0x2

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/powermo/SmartBar/ab;

    invoke-direct {v0}, Lcom/powermo/SmartBar/ab;-><init>()V

    iput-object v0, p0, Lcom/powermo/SmartBar/aa;->d:Lcom/powermo/SmartBar/ab;

    iput-boolean v4, p0, Lcom/powermo/SmartBar/aa;->h:Z

    iput-object p1, p0, Lcom/powermo/SmartBar/aa;->a:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/powermo/SmartBar/aa;->b:Landroid/view/WindowManager;

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/powermo/SmartBar/aa;->c:Landroid/os/Vibrator;

    iput-object p2, p0, Lcom/powermo/SmartBar/aa;->e:Lcom/powermo/SmartBar/c;

    iput-boolean p3, p0, Lcom/powermo/SmartBar/aa;->f:Z

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-boolean v2, p0, Lcom/powermo/SmartBar/aa;->f:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/powermo/SmartBar/aa;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/powermo/SmartBar/aa;->d:Lcom/powermo/SmartBar/ab;

    invoke-virtual {v3, v0, v2}, Lcom/powermo/SmartBar/ab;->a(Landroid/view/LayoutInflater;Landroid/content/res/ColorStateList;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d6

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/powermo/SmartBar/aa;->g:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/powermo/SmartBar/aa;->g:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/powermo/SmartBar/aa;->g:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/powermo/SmartBar/dc;->i:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/powermo/SmartBar/aa;->g:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x10198

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/powermo/SmartBar/aa;->g:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/powermo/SmartBar/aa;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_0
.end method

.method private b(I)V
    .locals 2

    iget-object v0, p0, Lcom/powermo/SmartBar/aa;->d:Lcom/powermo/SmartBar/ab;

    invoke-virtual {p0, p1}, Lcom/powermo/SmartBar/aa;->a(I)Lcom/powermo/SmartBar/k;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/powermo/SmartBar/ab;->a(Lcom/powermo/SmartBar/k;I)V

    return-void
.end method


# virtual methods
.method protected a(I)Lcom/powermo/SmartBar/k;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/powermo/SmartBar/aa;->e:Lcom/powermo/SmartBar/c;

    iget-boolean v1, p0, Lcom/powermo/SmartBar/aa;->f:Z

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/c;->a(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/SmartBar/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 0

    invoke-virtual {p0}, Lcom/powermo/SmartBar/aa;->e()Z

    return-void
.end method

.method public a(III)V
    .locals 4

    iget-object v1, p0, Lcom/powermo/SmartBar/aa;->d:Lcom/powermo/SmartBar/ab;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/powermo/SmartBar/aa;->h:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/powermo/SmartBar/aa;->b(I)V

    iget-object v0, p0, Lcom/powermo/SmartBar/aa;->g:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/powermo/SmartBar/aa;->d:Lcom/powermo/SmartBar/ab;

    iget-object v2, v2, Lcom/powermo/SmartBar/ab;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p2, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/powermo/SmartBar/aa;->g:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/powermo/SmartBar/aa;->d:Lcom/powermo/SmartBar/ab;

    iget-object v2, v2, Lcom/powermo/SmartBar/ab;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p3, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/powermo/SmartBar/aa;->b:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/powermo/SmartBar/aa;->d:Lcom/powermo/SmartBar/ab;

    iget-object v2, v2, Lcom/powermo/SmartBar/ab;->a:Landroid/view/View;

    iget-object v3, p0, Lcom/powermo/SmartBar/aa;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/powermo/SmartBar/aa;->h:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/powermo/SmartBar/aa;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(IIZIII)V
    .locals 4

    iget-object v1, p0, Lcom/powermo/SmartBar/aa;->d:Lcom/powermo/SmartBar/ab;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/powermo/SmartBar/aa;->h:Z

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/powermo/SmartBar/aa;->g:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/powermo/SmartBar/aa;->d:Lcom/powermo/SmartBar/ab;

    iget-object v2, v2, Lcom/powermo/SmartBar/ab;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p1, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/powermo/SmartBar/aa;->g:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/powermo/SmartBar/aa;->d:Lcom/powermo/SmartBar/ab;

    iget-object v2, v2, Lcom/powermo/SmartBar/ab;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p2, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/powermo/SmartBar/aa;->b:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/powermo/SmartBar/aa;->d:Lcom/powermo/SmartBar/ab;

    iget-object v2, v2, Lcom/powermo/SmartBar/ab;->a:Landroid/view/View;

    iget-object v3, p0, Lcom/powermo/SmartBar/aa;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected b()V
    .locals 3

    iget-object v0, p0, Lcom/powermo/SmartBar/aa;->c:Landroid/os/Vibrator;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public b(IIZIII)V
    .locals 0

    invoke-virtual {p0}, Lcom/powermo/SmartBar/aa;->e()Z

    return-void
.end method

.method protected c()Lcom/powermo/SmartBar/k;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/aa;->d:Lcom/powermo/SmartBar/ab;

    iget-object v0, v0, Lcom/powermo/SmartBar/ab;->l:Lcom/powermo/SmartBar/k;

    return-object v0
.end method

.method protected d()I
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/aa;->d:Lcom/powermo/SmartBar/ab;

    iget v0, v0, Lcom/powermo/SmartBar/ab;->m:I

    return v0
.end method

.method protected e()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/powermo/SmartBar/aa;->d:Lcom/powermo/SmartBar/ab;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/powermo/SmartBar/aa;->h:Z

    if-nez v2, :cond_0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/powermo/SmartBar/aa;->b:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/powermo/SmartBar/aa;->d:Lcom/powermo/SmartBar/ab;

    iget-object v2, v2, Lcom/powermo/SmartBar/ab;->a:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powermo/SmartBar/aa;->h:Z

    monitor-exit v1

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
