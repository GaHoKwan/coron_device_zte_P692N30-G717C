.class Lli;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Llf;


# direct methods
.method constructor <init>(Llf;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lli;->a:Llf;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 306
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 396
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 308
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Lawa;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Lawa;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lawa;->d(I)V

    .line 310
    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Lawa;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Lawa;->b(I)V

    .line 312
    :cond_1
    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Lawa;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lli;->a:Llf;

    iget-object v0, v0, Llf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 313
    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->show()V

    .line 315
    :cond_2
    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Lawa;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lli;->a:Llf;

    iget-object v0, v0, Llf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)V

    .line 317
    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->show()V

    goto :goto_0

    .line 321
    :pswitch_2
    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 322
    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 323
    :cond_3
    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Lawa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->dismiss()V

    goto/16 :goto_0

    .line 327
    :pswitch_3
    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Lawa;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 328
    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 329
    :cond_4
    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->b(Llf;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 330
    :cond_5
    iget-object v0, p0, Lli;->a:Llf;

    iget-object v1, p0, Lli;->a:Llf;

    invoke-static {v1}, Llf;->a(Llf;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lli;->a:Llf;

    invoke-static {v2}, Llf;->b(Llf;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Llf;->a(Llf;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 333
    :cond_6
    iget-object v0, p0, Lli;->a:Llf;

    iget-object v1, p0, Lli;->a:Llf;

    invoke-static {v1}, Llf;->a(Llf;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b03e1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Llf;->b(Ljava/lang/String;)V

    .line 335
    new-instance v0, Llj;

    invoke-direct {v0, p0}, Llj;-><init>(Lli;)V

    invoke-virtual {p0, v0}, Lli;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 343
    :pswitch_4
    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Lawa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Lawa;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lawa;->d(I)V

    goto/16 :goto_0

    .line 347
    :pswitch_5
    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Lawa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Lawa;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Lawa;->b(I)V

    goto/16 :goto_0

    .line 353
    :pswitch_6
    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Lawa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Lawa;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lawa;->b(I)V

    goto/16 :goto_0

    .line 358
    :pswitch_7
    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)V

    goto/16 :goto_0

    .line 364
    :pswitch_8
    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Lawa;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 365
    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 366
    :cond_7
    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lli;->a:Llf;

    iget-object v1, p0, Lli;->a:Llf;

    invoke-static {v1}, Llf;->a(Llf;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b03c5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llf;->a(Llf;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 371
    :pswitch_9
    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Lawa;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 372
    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 373
    iget-object v0, p0, Lli;->a:Llf;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Llf;->a(Llf;Lawa;)Lawa;

    .line 375
    :cond_8
    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lli;->a:Llf;

    iget-object v1, p0, Lli;->a:Llf;

    invoke-static {v1}, Llf;->a(Llf;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b03c6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llf;->b(Llf;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 380
    :pswitch_a
    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lli;->a:Llf;

    iget-object v1, p0, Lli;->a:Llf;

    invoke-static {v1}, Llf;->a(Llf;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b03e3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llf;->b(Llf;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 384
    :pswitch_b
    iget-object v0, p0, Lli;->a:Llf;

    iget-object v1, p0, Lli;->a:Llf;

    invoke-static {v1}, Llf;->a(Llf;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lli;->a:Llf;

    invoke-static {v2}, Llf;->b(Llf;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Llf;->a(Llf;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 387
    :pswitch_c
    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->b(Llf;)V

    goto/16 :goto_0

    .line 390
    :pswitch_d
    iget-object v0, p0, Lli;->a:Llf;

    invoke-static {v0}, Llf;->c(Llf;)V

    goto/16 :goto_0

    .line 393
    :pswitch_e
    iget-object v0, p0, Lli;->a:Llf;

    iget-object v1, p0, Lli;->a:Llf;

    invoke-static {v1}, Llf;->a(Llf;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b03e7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llf;->c(Llf;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
