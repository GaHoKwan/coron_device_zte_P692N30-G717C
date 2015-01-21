.class Lapp;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field final synthetic a:Lapn;

.field private a:Z

.field private a:[I

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(Lapn;)V
    .locals 1
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lapp;->a:Lapn;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 340
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lapp;->a:[I

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lapp;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lapn;Lapo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lapp;-><init>(Lapn;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lapp;->a:I

    return v0
.end method

.method public a(JI[III)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 348
    iput p3, p0, Lapp;->a:I

    .line 349
    const/4 v0, 0x2

    if-eq v0, p3, :cond_0

    .line 350
    iget-object v0, p0, Lapp;->a:[I

    aget v1, p4, v3

    aput v1, v0, v3

    .line 351
    iget-object v0, p0, Lapp;->a:[I

    aget v1, p4, v2

    aput v1, v0, v2

    .line 353
    :cond_0
    iput p5, p0, Lapp;->b:I

    .line 354
    iput p6, p0, Lapp;->c:I

    .line 355
    invoke-virtual {p0, p0, p1, p2}, Lapp;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 356
    iput-boolean v2, p0, Lapp;->a:Z

    .line 357
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 360
    iget-boolean v0, p0, Lapp;->a:Z

    return v0
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 364
    iget-boolean v1, p0, Lapp;->a:Z

    if-eqz v1, :cond_0

    .line 365
    iput-boolean v0, p0, Lapp;->a:Z

    .line 366
    invoke-virtual {p0, p0}, Lapp;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 367
    const/4 v0, 0x1

    .line 370
    :cond_0
    return v0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 378
    iget v0, p0, Lapp;->a:I

    packed-switch v0, :pswitch_data_0

    .line 390
    :cond_0
    :goto_0
    iput-boolean v6, p0, Lapp;->a:Z

    .line 391
    return-void

    .line 380
    :pswitch_0
    iget-object v0, p0, Lapp;->a:Lapn;

    invoke-static {v0}, Lapn;->a(Lapn;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lapp;->a:Lapn;

    invoke-static {v0}, Lapn;->a(Lapn;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lapp;->a:Lapn;

    iget-object v1, p0, Lapp;->a:Lapn;

    invoke-static {v1}, Lapn;->a(Lapn;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x33

    iget-object v3, p0, Lapp;->a:[I

    aget v3, v3, v6

    iget-object v4, p0, Lapp;->a:[I

    aget v4, v4, v5

    iget-object v5, p0, Lapp;->a:Lapn;

    invoke-static {v5}, Lapn;->a(Lapn;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lapn;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 385
    :pswitch_1
    iget-object v0, p0, Lapp;->a:Lapn;

    invoke-virtual {v0}, Lapn;->dismiss()V

    goto :goto_0

    .line 388
    :pswitch_2
    iget-object v0, p0, Lapp;->a:Lapn;

    iget-object v1, p0, Lapp;->a:[I

    aget v1, v1, v6

    iget-object v2, p0, Lapp;->a:[I

    aget v2, v2, v5

    iget-object v3, p0, Lapp;->a:Lapn;

    invoke-static {v3}, Lapn;->a(Lapn;)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lapp;->b:I

    iget v4, p0, Lapp;->c:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lapn;->update(IIII)V

    goto :goto_0

    .line 378
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
