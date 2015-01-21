.class Lagw;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 192
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 193
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lagw;->a:Ljava/lang/ref/WeakReference;

    .line 194
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 198
    iget-object v0, p0, Lagw;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    .line 199
    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 201
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    if-nez v0, :cond_1

    .line 349
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 203
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 205
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 206
    invoke-static {}, Lage;->a()Lage;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lhk;

    invoke-static {v1, v0}, Lage;->a(Lage;Lhk;)V

    goto :goto_0

    .line 210
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 211
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->a(Lage;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->a(Lage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 212
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->a(Lage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 213
    :cond_2
    invoke-static {}, Lage;->a()Lage;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v2, v0}, Lage;->a(Lage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 214
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->a(Lage;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 215
    if-eqz v1, :cond_0

    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {}, Lage;->a()Lage;

    move-result-object v1

    invoke-static {v1}, Lage;->a(Lage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lage;->a(Lage;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 217
    :cond_3
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {}, Lage;->a()Lage;

    move-result-object v1

    invoke-static {v1}, Lage;->a(Lage;)Lhk;

    move-result-object v1

    invoke-static {}, Lage;->a()Lage;

    move-result-object v2

    invoke-static {v2}, Lage;->a(Lage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lage;->a(Lhk;Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    .line 224
    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg2:I

    packed-switch v0, :pswitch_data_0

    .line 242
    :goto_1
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->a(Lage;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 226
    :pswitch_0
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->a(Lage;)Lawa;

    move-result-object v0

    const v2, 0x7f0b02f2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawa;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 230
    :pswitch_1
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->a(Lage;)Lawa;

    move-result-object v0

    const v2, 0x7f0b02f3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawa;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 234
    :pswitch_2
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->a(Lage;)Lawa;

    move-result-object v0

    const v2, 0x7f0b02f4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawa;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 238
    :pswitch_3
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->a(Lage;)Lawa;

    move-result-object v0

    const v2, 0x7f0b02f5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawa;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 245
    :sswitch_4
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->a(Lage;)Lawa;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->a(Lage;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 246
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->a(Lage;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 247
    :cond_4
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->a(Lage;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 250
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 251
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->a(Lage;)Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b02fc

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 252
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->a(Lage;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 256
    :sswitch_6
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lage;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 259
    :sswitch_7
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->a(Lage;)V

    goto/16 :goto_0

    .line 262
    :sswitch_8
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)V

    goto/16 :goto_0

    .line 265
    :sswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_5

    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Lawa;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 266
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Lawa;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lawa;->d(I)V

    .line 267
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Lawa;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Lawa;->b(I)V

    .line 269
    :cond_5
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Lawa;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->show()V

    .line 270
    :cond_6
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Lawa;

    move-result-object v0

    if-nez v0, :cond_0

    .line 271
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0, v3, v3}, Lage;->a(Lage;II)V

    .line 272
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->show()V

    goto/16 :goto_0

    .line 276
    :sswitch_a
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 277
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 278
    :cond_7
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Lawa;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->dismiss()V

    goto/16 :goto_0

    .line 282
    :sswitch_b
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Lawa;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 283
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 284
    :cond_8
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {}, Lage;->a()Lage;

    move-result-object v2

    invoke-static {v2}, Lage;->b(Lage;)Lhk;

    move-result-object v2

    invoke-static {}, Lage;->a()Lage;

    move-result-object v3

    invoke-static {v3}, Lage;->a(Lage;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lage;->a(Lage;Lhk;Ljava/lang/String;)V

    .line 285
    sget-boolean v0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Z

    if-nez v0, :cond_9

    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 287
    :cond_9
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->a(Lage;)Lhr;

    move-result-object v0

    invoke-static {}, Lage;->a()Lage;

    move-result-object v1

    invoke-static {v1}, Lage;->b(Lage;)Lhk;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lhr;->a(Lhk;Z)V

    goto/16 :goto_0

    .line 289
    :cond_a
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    const v2, 0x7f0b03e1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage;->b(Ljava/lang/String;)V

    .line 290
    new-instance v0, Lagx;

    invoke-direct {v0, p0}, Lagx;-><init>(Lagw;)V

    invoke-virtual {p0, v0}, Lagw;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 299
    :sswitch_c
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Lawa;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Lawa;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lawa;->d(I)V

    goto/16 :goto_0

    .line 303
    :sswitch_d
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Lawa;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Lawa;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Lawa;->b(I)V

    goto/16 :goto_0

    .line 309
    :sswitch_e
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Lawa;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Lawa;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lawa;->b(I)V

    goto/16 :goto_0

    .line 314
    :sswitch_f
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lage;->a(Lage;II)V

    goto/16 :goto_0

    .line 321
    :sswitch_10
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    const v2, 0x7f0b03e7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lage;->a(Lage;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 324
    :sswitch_11
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Lawa;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 325
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 326
    :cond_b
    sget-boolean v0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Z

    if-nez v0, :cond_0

    .line 327
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    const v2, 0x7f0b03c5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lage;->b(Lage;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 330
    :sswitch_12
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Lawa;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 331
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 332
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Lawa;

    move-result-object v0

    invoke-virtual {v0, v2}, Lawa;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 333
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->b(Lage;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->a()V

    .line 334
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0, v2}, Lage;->a(Lage;Lawa;)Lawa;

    .line 336
    :cond_c
    sget-boolean v0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Z

    if-nez v0, :cond_0

    .line 337
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    const v2, 0x7f0b03c6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lage;->b(Lage;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 340
    :sswitch_13
    sget-boolean v0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Z

    if-nez v0, :cond_0

    .line 341
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    const v2, 0x7f0b03e3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lage;->b(Lage;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 345
    :sswitch_14
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {}, Lage;->a()Lage;

    move-result-object v1

    invoke-static {v1}, Lage;->b(Lage;)Lhk;

    move-result-object v1

    invoke-static {}, Lage;->a()Lage;

    move-result-object v2

    invoke-static {v2}, Lage;->a(Lage;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lage;->a(Lage;Lhk;Ljava/lang/String;)V

    .line 346
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-static {v0}, Lage;->a(Lage;)Lhr;

    move-result-object v0

    invoke-static {}, Lage;->a()Lage;

    move-result-object v1

    invoke-static {v1}, Lage;->b(Lage;)Lhk;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lhr;->a(Lhk;Z)V

    goto/16 :goto_0

    .line 203
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0x64 -> :sswitch_9
        0x65 -> :sswitch_a
        0x66 -> :sswitch_c
        0x67 -> :sswitch_d
        0x68 -> :sswitch_e
        0x69 -> :sswitch_b
        0x6a -> :sswitch_f
        0x6b -> :sswitch_0
        0x6c -> :sswitch_11
        0x6d -> :sswitch_12
        0x6e -> :sswitch_13
        0x6f -> :sswitch_14
        0x73 -> :sswitch_10
    .end sparse-switch

    .line 224
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
