.class Lny;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lnr;


# direct methods
.method constructor <init>(Lnr;)V
    .locals 0
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lny;->a:Lnr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x6a

    .line 414
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 431
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 416
    :pswitch_1
    iget-object v0, p0, Lny;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->fU:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->fU:I

    .line 417
    iget-object v0, p0, Lny;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lny;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->t()V

    .line 420
    :cond_0
    iget-object v0, p0, Lny;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 426
    :pswitch_2
    iget-object v0, p0, Lny;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 414
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
