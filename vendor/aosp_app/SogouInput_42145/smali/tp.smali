.class Ltp;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Ltm;


# direct methods
.method constructor <init>(Ltm;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Ltp;->a:Ltm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v1, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 293
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 294
    iget-object v0, p0, Ltp;->a:Ltm;

    invoke-static {v0}, Ltm;->a(Ltm;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 295
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 298
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 299
    const-string v2, "isBackground"

    sget-object v0, Ltm;->a:Ltm;

    if-nez v0, :cond_2

    move v0, v5

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 300
    const-string v2, "packageName"

    iget-object v0, p0, Ltp;->a:Ltm;

    invoke-static {v0}, Ltm;->a(Ltm;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v0, "transfertype"

    iget-object v2, p0, Ltp;->a:Ltm;

    invoke-static {v2}, Ltm;->a(Ltm;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 302
    iget-object v0, p0, Ltp;->a:Ltm;

    invoke-static {v0}, Ltm;->a(Ltm;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)I

    move-result v0

    .line 303
    if-ltz v0, :cond_3

    if-gt v0, v5, :cond_3

    .line 304
    iget-object v0, p0, Ltp;->a:Ltm;

    invoke-virtual {v0}, Ltm;->i()V

    .line 305
    iget-object v0, p0, Ltp;->a:Ltm;

    invoke-static {v0}, Ltm;->a(Ltm;)Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Ltp;->a:Ltm;

    invoke-static {v3}, Ltm;->a(Ltm;)Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.sohu.inputmethod.sms.TOUPLOAD"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    move v0, v6

    .line 299
    goto :goto_1

    .line 310
    :cond_3
    iget-object v0, p0, Ltp;->a:Ltm;

    invoke-static {v0}, Ltm;->a(Ltm;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v2, v0, Lamo;->bu:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lamo;->bu:I

    .line 311
    iget-object v0, p0, Ltp;->a:Ltm;

    invoke-static {v0}, Ltm;->a(Ltm;)V

    .line 312
    const-string v0, "uploadResult"

    const/16 v2, 0x26

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 313
    iget-object v0, p0, Ltp;->a:Ltm;

    invoke-virtual {v0, v1}, Ltm;->b(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 319
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 320
    const-string v1, "transferredSize"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 321
    const-string v3, "allSize"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 322
    iget-object v0, p0, Ltp;->a:Ltm;

    invoke-virtual {v0, v1, v2, v3, v4}, Ltm;->a(JJ)V

    goto/16 :goto_0

    .line 327
    :pswitch_3
    iget-object v0, p0, Ltp;->a:Ltm;

    invoke-static {v0}, Ltm;->a(Ltm;)V

    .line 328
    iget-object v0, p0, Ltp;->a:Ltm;

    invoke-virtual {v0}, Ltm;->b()V

    .line 329
    invoke-static {v3}, Ltm;->a(Lsg;)Lsg;

    .line 330
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 331
    iget-object v1, p0, Ltp;->a:Ltm;

    invoke-virtual {v1, v0}, Ltm;->a(Landroid/os/Bundle;)V

    .line 332
    const-wide/16 v0, 0x64

    invoke-virtual {p0, v2, v0, v1}, Ltp;->sendEmptyMessageDelayed(IJ)Z

    .line 333
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget-object v1, p0, Ltp;->a:Ltm;

    invoke-static {v1}, Ltm;->a(Ltm;)I

    move-result v1

    invoke-virtual {v0, v1, v5}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(IZ)V

    goto/16 :goto_0

    .line 340
    :pswitch_4
    iget-object v0, p0, Ltp;->a:Ltm;

    invoke-static {v0}, Ltm;->a(Ltm;)V

    .line 341
    iget-object v0, p0, Ltp;->a:Ltm;

    invoke-virtual {v0}, Ltm;->b()V

    .line 342
    invoke-static {v3}, Ltm;->a(Lsg;)Lsg;

    .line 343
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 344
    iget-object v1, p0, Ltp;->a:Ltm;

    invoke-virtual {v1, v0}, Ltm;->b(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 349
    :pswitch_5
    sput-boolean v6, Ltm;->a:Z

    .line 350
    iget-object v0, p0, Ltp;->a:Ltm;

    invoke-static {v0}, Ltm;->b(Ltm;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 353
    iget-object v0, p0, Ltp;->a:Ltm;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Ltm;->a(Ltm;I)I

    .line 354
    iget-object v0, p0, Ltp;->a:Ltm;

    invoke-static {v0}, Ltm;->b(Ltm;)Z

    .line 355
    iget-object v0, p0, Ltp;->a:Ltm;

    invoke-static {v0}, Ltm;->a(Ltm;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "0%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v0, p0, Ltp;->a:Ltm;

    invoke-static {v0}, Ltm;->b(Ltm;)V

    .line 358
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lts;

    iget-object v1, p0, Ltp;->a:Ltm;

    iget-object v2, p0, Ltp;->a:Ltm;

    invoke-static {v2}, Ltm;->a(Ltm;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltp;->a:Ltm;

    invoke-static {v3}, Ltm;->b(Ltm;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Ltp;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget-object v8, p0, Ltp;->a:Ltm;

    invoke-static {v8}, Ltm;->c(Ltm;)I

    move-result v8

    const/16 v9, 0x1f40

    if-ne v8, v9, :cond_4

    :goto_2
    invoke-direct/range {v0 .. v5}, Lts;-><init>(Ltm;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Z)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_4
    move v5, v6

    goto :goto_2

    .line 368
    :pswitch_6
    iget-object v0, p0, Ltp;->a:Ltm;

    invoke-static {v0}, Ltm;->a(Ltm;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b034d

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 369
    iget-object v0, p0, Ltp;->a:Ltm;

    invoke-static {v0}, Ltm;->b(Ltm;)Z

    goto/16 :goto_0

    .line 372
    :pswitch_7
    iget-object v0, p0, Ltp;->a:Ltm;

    invoke-static {v0}, Ltm;->a(Ltm;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;

    check-cast v0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a()V

    goto/16 :goto_0

    .line 375
    :pswitch_8
    iget-object v0, p0, Ltp;->a:Ltm;

    invoke-static {v0}, Ltm;->a(Ltm;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ltp;->a:Ltm;

    invoke-static {v1}, Ltm;->a(Ltm;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b034c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 381
    :pswitch_9
    iget-object v0, p0, Ltp;->a:Ltm;

    invoke-static {v0}, Ltm;->b(Ltm;)Z

    .line 382
    invoke-static {}, Lcom/sohu/inputmethod/sogou/SogouIME;->i()V

    goto/16 :goto_0

    .line 387
    :pswitch_a
    sget-boolean v0, Ltm;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ltp;->a:Ltm;

    iget-object v0, v0, Ltm;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltp;->a:Ltm;

    iget-object v0, v0, Ltm;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    sput-boolean v5, Ltm;->a:Z

    .line 390
    iget-object v0, p0, Ltp;->a:Ltm;

    iget-object v0, v0, Ltm;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 396
    :pswitch_b
    iget-object v0, p0, Ltp;->a:Ltm;

    invoke-static {v0}, Ltm;->a(Ltm;)Lcom/sohu/inputmethod/multimedia/TimerRecView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/multimedia/TimerRecView;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Ltp;->a:Ltm;

    invoke-static {v0}, Ltm;->b(Ltm;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 401
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 402
    const-string v1, "filelength"

    iget-object v2, p0, Ltp;->a:Ltm;

    invoke-static {v2}, Ltm;->a(Ltm;)J

    move-result-wide v2

    iget-object v4, p0, Ltp;->a:Ltm;

    invoke-static {v4}, Ltm;->b(Ltm;)J

    move-result-wide v6

    sub-long/2addr v2, v6

    long-to-double v2, v2

    const-wide v6, 0x408f400000000000L

    div-double/2addr v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 403
    const-string v1, "rawfilepath"

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Ltp;->a:Ltm;

    invoke-static {v3}, Ltm;->a(Ltm;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v1, "filepath"

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Ltp;->a:Ltm;

    invoke-static {v3}, Ltm;->b(Ltm;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v1, "filename"

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Ltp;->a:Ltm;

    invoke-static {v3}, Ltm;->b(Ltm;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Laox;->O:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v1, "filetype"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 407
    const-string v1, "sampleRate"

    iget-object v2, p0, Ltp;->a:Ltm;

    invoke-static {v2}, Ltm;->c(Ltm;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 408
    iget-object v1, p0, Ltp;->a:Ltm;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltm;->a(Ltm;Ljava/lang/String;)Ljava/lang/String;

    .line 409
    const-string v1, "upload_serial_no"

    iget-object v2, p0, Ltp;->a:Ltm;

    invoke-static {v2}, Ltm;->c(Ltm;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0, v5}, Ltp;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 411
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 412
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
