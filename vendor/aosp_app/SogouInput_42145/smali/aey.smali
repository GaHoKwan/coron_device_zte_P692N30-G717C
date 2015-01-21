.class Laey;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Laew;


# direct methods
.method constructor <init>(Laew;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Laey;->a:Laew;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0b02ab

    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 43
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 45
    :pswitch_0
    iget-object v0, p0, Laey;->a:Laew;

    iget-object v1, p0, Laey;->a:Laew;

    invoke-static {v1}, Laew;->a(Laew;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    iget-object v2, p0, Laey;->a:Laew;

    invoke-static {v2}, Laew;->a(Laew;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Laew;->a(Laew;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 46
    iget-object v0, p0, Laey;->a:Laew;

    invoke-static {v0}, Laew;->a(Laew;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Laey;->a:Laew;

    invoke-static {v1}, Laew;->a(Laew;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Laey;->a:Laew;

    invoke-static {v0}, Laew;->a(Laew;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Laey;->a:Laew;

    invoke-static {v1}, Laew;->a(Laew;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0247

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Laey;->a:Laew;

    invoke-static {v0}, Laew;->a(Laew;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Laey;->a:Laew;

    invoke-static {v1}, Laew;->a(Laew;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0299

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Laez;

    invoke-direct {v2, p0}, Laez;-><init>(Laey;)V

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 56
    iget-object v0, p0, Laey;->a:Laew;

    invoke-static {v0}, Laew;->a(Laew;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Laey;->a:Laew;

    invoke-static {v1}, Laew;->a(Laew;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0298

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lafa;

    invoke-direct {v2, p0}, Lafa;-><init>(Laey;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 63
    iget-object v0, p0, Laey;->a:Laew;

    invoke-static {v0}, Laew;->a(Laew;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 66
    :pswitch_1
    iget-object v0, p0, Laey;->a:Laew;

    invoke-static {v0}, Laew;->a(Laew;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Laey;->a:Laew;

    invoke-static {v0}, Laew;->a(Laew;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 67
    :cond_1
    iget-object v0, p0, Laey;->a:Laew;

    invoke-static {v0}, Laew;->a(Laew;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->show()V

    goto/16 :goto_0

    .line 70
    :pswitch_2
    iget-object v0, p0, Laey;->a:Laew;

    iget-object v1, p0, Laey;->a:Laew;

    invoke-static {v1}, Laew;->a(Laew;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    iget-object v2, p0, Laey;->a:Laew;

    invoke-static {v2}, Laew;->a(Laew;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Laew;->a(Laew;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 71
    iget-object v0, p0, Laey;->a:Laew;

    invoke-static {v0}, Laew;->a(Laew;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Laey;->a:Laew;

    invoke-static {v1}, Laew;->a(Laew;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laey;->a:Laew;

    invoke-static {v2}, Laew;->a(Laew;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 72
    iget-object v0, p0, Laey;->a:Laew;

    invoke-static {v0}, Laew;->a(Laew;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Laey;->a:Laew;

    invoke-static {v1}, Laew;->a(Laew;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b01d4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Laey;->a:Laew;

    invoke-static {v0}, Laew;->a(Laew;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 74
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_1

    .line 93
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Laey;->a:Laew;

    invoke-static {v0}, Laew;->a(Laew;)Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 99
    :goto_1
    iget-object v0, p0, Laey;->a:Laew;

    invoke-static {v0}, Laew;->a(Laew;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 76
    :pswitch_3
    iget-object v0, p0, Laey;->a:Laew;

    invoke-static {v0}, Laew;->a(Laew;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Laey;->a:Laew;

    invoke-static {v1}, Laew;->a(Laew;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b021c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 79
    :pswitch_4
    iget-object v0, p0, Laey;->a:Laew;

    invoke-static {v0}, Laew;->a(Laew;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Laey;->a:Laew;

    invoke-static {v1}, Laew;->a(Laew;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0211

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Laey;->a:Laew;

    invoke-static {v0}, Laew;->a(Laew;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Laey;->a:Laew;

    invoke-static {v1}, Laew;->a(Laew;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0296

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lafb;

    invoke-direct {v2, p0}, Lafb;-><init>(Laey;)V

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 87
    iget-object v0, p0, Laey;->a:Laew;

    invoke-static {v0}, Laew;->a(Laew;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Laey;->a:Laew;

    invoke-static {v1}, Laew;->a(Laew;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0297

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laey;->a:Laew;

    invoke-static {v2}, Laew;->a(Laew;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 90
    iget-object v0, p0, Laey;->a:Laew;

    invoke-static {v0}, Laew;->a(Laew;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 96
    :cond_2
    iget-object v0, p0, Laey;->a:Laew;

    invoke-static {v0}, Laew;->a(Laew;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Laey;->a:Laew;

    invoke-static {v1}, Laew;->a(Laew;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b01e7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 103
    :pswitch_5
    iget-object v0, p0, Laey;->a:Laew;

    iget-object v1, p0, Laey;->a:Laew;

    invoke-static {v1}, Laew;->a(Laew;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    iget-object v2, p0, Laey;->a:Laew;

    invoke-static {v2}, Laew;->a(Laew;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Laew;->a(Laew;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 104
    iget-object v0, p0, Laey;->a:Laew;

    invoke-static {v0}, Laew;->a(Laew;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Laey;->a:Laew;

    invoke-static {v1}, Laew;->a(Laew;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laey;->a:Laew;

    invoke-static {v2}, Laew;->a(Laew;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 105
    iget-object v0, p0, Laey;->a:Laew;

    invoke-static {v0}, Laew;->a(Laew;)Lawa;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Laey;->a:Laew;

    invoke-static {v0}, Laew;->a(Laew;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 106
    :cond_3
    iget-object v0, p0, Laey;->a:Laew;

    invoke-static {v0}, Laew;->a(Laew;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 109
    :pswitch_6
    iget-object v0, p0, Laey;->a:Laew;

    invoke-static {v0}, Laew;->a(Laew;)V

    goto/16 :goto_0

    .line 112
    :pswitch_7
    iget-object v0, p0, Laey;->a:Laew;

    invoke-static {v0}, Laew;->a(Laew;)Lawa;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 113
    iget-object v0, p0, Laey;->a:Laew;

    invoke-static {v0}, Laew;->a(Laew;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 115
    :cond_4
    iget-object v0, p0, Laey;->a:Laew;

    invoke-static {v0}, Laew;->a(Laew;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laey;->a:Laew;

    invoke-static {v0}, Laew;->a(Laew;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
    .end packed-switch

    .line 74
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
