.class public Laen;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, -0x1

    const v4, 0x7f0b02ab

    const/4 v3, -0x2

    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    iget-object v1, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    iget-object v2, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-virtual {v1, v2}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 52
    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0247

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    const v2, 0x7f0b0299

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/settings/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Laeo;

    invoke-direct {v2, p0}, Laeo;-><init>(Laen;)V

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 62
    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    const v2, 0x7f0b0298

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/settings/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Laep;

    invoke-direct {v2, p0}, Laep;-><init>(Laen;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 69
    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 72
    :pswitch_1
    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)V

    goto :goto_0

    .line 75
    :pswitch_2
    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 76
    :cond_1
    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->show()V

    goto/16 :goto_0

    .line 79
    :pswitch_3
    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Lawa;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 80
    :cond_2
    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 83
    :pswitch_4
    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Lawa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 85
    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    iget-object v1, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    iget-object v2, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-virtual {v1, v2}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 86
    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    const v2, 0x7f0b0199

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/settings/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    iget v0, p1, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 90
    :sswitch_0
    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-virtual {v1, v4}, Lcom/sohu/inputmethod/settings/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 91
    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    const v2, 0x7f0b021c

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/settings/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 96
    :sswitch_1
    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    const v2, 0x7f0b0211

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/settings/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    const v2, 0x7f0b0296

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/settings/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Laeq;

    invoke-direct {v2, p0}, Laeq;-><init>(Laen;)V

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 102
    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    const v2, 0x7f0b0297

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/settings/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 103
    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 107
    :sswitch_2
    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-virtual {v1, v4}, Lcom/sohu/inputmethod/settings/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 108
    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    const v2, 0x7f0b023b

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/settings/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 113
    :sswitch_3
    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    .line 114
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lafp;->e(Z)V

    .line 115
    iget-object v1, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafp;->d(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/LoginActivity;->b(Lcom/sohu/inputmethod/settings/LoginActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafp;->e(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Laly;

    move-result-object v1

    invoke-virtual {v1}, Laly;->c()Ljava/lang/String;

    move-result-object v1

    .line 118
    if-eqz v1, :cond_3

    .line 119
    invoke-virtual {v0, v1}, Lafp;->k(Ljava/lang/String;)V

    .line 121
    :cond_3
    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->g()V

    .line 122
    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "success:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Laly;

    move-result-object v2

    invoke-virtual {v2}, Laly;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-virtual {v1, v4}, Lcom/sohu/inputmethod/settings/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Laer;

    invoke-direct {v2, p0}, Laer;-><init>(Laen;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 129
    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Laly;

    move-result-object v1

    invoke-virtual {v1}, Laly;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 87
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xa -> :sswitch_3
        0xb -> :sswitch_2
    .end sparse-switch
.end method
