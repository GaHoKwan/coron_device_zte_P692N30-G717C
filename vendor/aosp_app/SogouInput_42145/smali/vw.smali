.class public Lvw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/platform/AppDetailActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 574
    iput-object p1, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f020008

    const/16 v2, 0x65

    const/16 v3, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 578
    .line 581
    const-string v0, "0%"

    .line 582
    iget-object v1, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v1

    iget v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:I

    packed-switch v1, :pswitch_data_0

    .line 708
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 584
    :pswitch_1
    iget-object v0, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    .line 585
    if-eqz v0, :cond_0

    sget-object v1, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v1, :cond_0

    .line 587
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".sogouapi.SogouEntryActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 588
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 590
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 591
    iget-object v1, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 592
    iget-object v1, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 593
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 595
    :cond_1
    iget-object v1, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 596
    :catch_0
    move-exception v0

    .line 598
    iget-object v0, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    const-string v1, "catch activity not found exception!!!!!!!"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Lcom/sohu/inputmethod/platform/AppDetailActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 609
    :pswitch_2
    iget-object v0, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lyv;

    move-result-object v0

    iget-object v1, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lyv;->b(Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 617
    :pswitch_3
    invoke-static {}, Laox;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 618
    iget-object v0, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 619
    iget-object v0, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lxx;

    move-result-object v0

    iget-object v1, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lxx;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 622
    :cond_2
    iget-object v1, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 623
    iput v2, v1, Landroid/os/Message;->what:I

    .line 624
    iget-object v2, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 625
    iget-object v2, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 626
    iget-object v1, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v1

    iput v5, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:I

    .line 627
    iget-object v1, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lxx;

    move-result-object v1

    iget-object v2, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lxx;->b(Ljava/lang/String;)V

    .line 629
    iget-object v1, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 630
    iget-object v1, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 631
    iget-object v1, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0410

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    iget-object v1, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 633
    iget-object v1, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    iget-object v0, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 635
    iget-object v0, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 636
    iget-object v0, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 637
    iget-object v0, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->c(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 639
    :cond_3
    iget-object v0, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 649
    :pswitch_4
    iget-object v1, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v1

    iget v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->c:I

    if-ne v1, v5, :cond_4

    .line 650
    iget-object v0, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Ljava/lang/Thread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 651
    iget-object v0, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lvx;

    invoke-direct {v2, p0}, Lvx;-><init>(Lvw;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 657
    iget-object v0, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 660
    :cond_4
    invoke-static {}, Laox;->a()Z

    move-result v1

    if-nez v1, :cond_5

    .line 661
    iget-object v0, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 662
    iget-object v0, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lxx;

    move-result-object v0

    iget-object v1, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lxx;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 665
    :cond_5
    iget-object v1, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 666
    iput v2, v1, Landroid/os/Message;->what:I

    .line 667
    iget-object v2, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 668
    iget-object v2, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 669
    iget-object v1, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v1

    iput v5, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:I

    .line 670
    iget-object v1, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lxx;

    move-result-object v1

    iget-object v2, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lxx;->b(Ljava/lang/String;)V

    .line 672
    iget-object v1, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 673
    iget-object v1, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 674
    iget-object v1, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0410

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 675
    iget-object v1, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 676
    iget-object v1, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    iget-object v0, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 678
    iget-object v0, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 679
    iget-object v0, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 680
    iget-object v0, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->c(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 682
    :cond_6
    iget-object v0, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 694
    :pswitch_5
    iget-object v0, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lxx;

    move-result-object v0

    iget-object v1, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    iget-object v2, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v2

    iget v2, v2, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    invoke-virtual {v0, v1, v2}, Lxx;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 695
    iget-object v1, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lyv;

    move-result-object v1

    iget-object v2, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lyv;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 696
    iget-object v0, p0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    const-string v1, "apk file not exist!"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Lcom/sohu/inputmethod/platform/AppDetailActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 582
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
