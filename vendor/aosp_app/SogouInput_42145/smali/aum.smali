.class public Laum;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)V
    .locals 0
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Laum;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter

    .prologue
    const-wide/16 v9, 0x32

    const/4 v8, 0x3

    const/4 v6, 0x0

    .line 473
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 475
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 476
    if-ltz v0, :cond_1

    iget-object v1, p0, Laum;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)[Lawq;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laum;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)[Lawq;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0, v6}, Lawq;->a(I)I

    move-result v0

    const/4 v1, -0x5

    if-ne v0, v1, :cond_1

    .line 478
    iget-object v0, p0, Laum;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;I)I

    .line 479
    iget-object v0, p0, Laum;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)[Lawq;

    move-result-object v0

    iget-object v1, p0, Laum;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)I

    move-result v1

    aget-object v3, v0, v1

    .line 480
    iget-object v0, p0, Laum;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    iget-object v1, p0, Laum;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)I

    move-result v1

    iget v2, v3, Lawq;->a:F

    float-to-int v2, v2

    iget v3, v3, Lawq;->b:F

    float-to-int v3, v3

    iget-object v4, p0, Laum;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-static {v4}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)J

    move-result-wide v4

    move v7, v6

    invoke-static/range {v0 .. v7}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;IIIJII)V

    .line 481
    invoke-static {p0, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 482
    invoke-virtual {p0, v0, v9, v10}, Laum;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 485
    :cond_1
    iget-object v0, p0, Laum;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    invoke-static {p0, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 487
    invoke-virtual {p0, v0, v9, v10}, Laum;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 491
    :pswitch_1
    iget-object v1, p0, Laum;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
