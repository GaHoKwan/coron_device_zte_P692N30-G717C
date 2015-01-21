.class public Lun;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic a:Landroid/widget/SeekBar;

.field final synthetic a:Landroid/widget/TextView;

.field final synthetic a:Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;Landroid/app/AlertDialog;Landroid/widget/SeekBar;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lun;->a:Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;

    iput-object p2, p0, Lun;->a:Landroid/app/AlertDialog;

    iput-object p3, p0, Lun;->a:Landroid/widget/SeekBar;

    iput-object p4, p0, Lun;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    const/16 v5, 0x8

    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 366
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 367
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 438
    :goto_0
    return-void

    .line 370
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lun;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mShowing"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 371
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 372
    iget-object v1, p0, Lun;->a:Landroid/app/AlertDialog;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 379
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 380
    const-string v3, "transferredSize"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 382
    const-string v5, "allSize"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 383
    cmp-long v2, v5, v0

    if-nez v2, :cond_1

    :goto_1
    long-to-int v0, v0

    .line 384
    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 385
    add-int/lit8 v0, v0, -0x1

    .line 386
    :cond_0
    iget-object v1, p0, Lun;->a:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 383
    :cond_1
    const-wide/16 v0, 0x64

    mul-long/2addr v0, v3

    div-long/2addr v0, v5

    goto :goto_1

    .line 390
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 392
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 394
    :pswitch_3
    iget-object v0, p0, Lun;->a:Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;

    invoke-static {v0}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0335

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 405
    :goto_2
    iget-object v1, p0, Lun;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lun;->a:Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0373

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 397
    :pswitch_4
    iget-object v0, p0, Lun;->a:Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;

    invoke-static {v0}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0333

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 400
    :pswitch_5
    iget-object v0, p0, Lun;->a:Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;

    invoke-static {v0}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0337

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 409
    :pswitch_6
    iget-object v0, p0, Lun;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 410
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 414
    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 415
    const-string v1, "msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 417
    iget-object v2, p0, Lun;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v1, p0, Lun;->a:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 420
    iget-object v1, p0, Lun;->a:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 421
    iget-object v1, p0, Lun;->a:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 422
    iget-object v1, p0, Lun;->a:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Luo;

    invoke-direct {v2, p0, v0}, Luo;-><init>(Lun;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 392
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
