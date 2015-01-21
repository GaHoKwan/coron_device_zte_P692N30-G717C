.class public Lafd;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/RegisterActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0b02ab

    const/4 v4, -0x2

    const/4 v3, -0x1

    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 159
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 76
    :pswitch_1
    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    iget-object v1, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    iget-object v2, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-virtual {v1, v2}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 77
    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0197

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0247

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    const v2, 0x7f0b0299

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/settings/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lafe;

    invoke-direct {v2, p0}, Lafe;-><init>(Lafd;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    const v2, 0x7f0b0298

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/settings/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Laff;

    invoke-direct {v2, p0}, Laff;-><init>(Lafd;)V

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 97
    :pswitch_2
    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)V

    goto :goto_0

    .line 100
    :pswitch_3
    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 101
    :cond_1
    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->show()V

    goto/16 :goto_0

    .line 104
    :pswitch_4
    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Lawa;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 105
    :cond_2
    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 108
    :pswitch_5
    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 109
    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    iget-object v1, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    iget-object v2, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-virtual {v1, v2}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 110
    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f0b0198

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 111
    iget v0, p1, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 113
    :sswitch_0
    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    const v2, 0x7f0b021c

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/settings/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-virtual {v1, v5}, Lcom/sohu/inputmethod/settings/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lafg;

    invoke-direct {v2, p0}, Lafg;-><init>(Lafd;)V

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 124
    :sswitch_1
    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    const v2, 0x7f0b0211

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/settings/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    const v2, 0x7f0b0297

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/settings/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    const v2, 0x7f0b0296

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/settings/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lafh;

    invoke-direct {v2, p0}, Lafh;-><init>(Lafd;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 136
    :sswitch_2
    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Lamh;

    move-result-object v1

    invoke-virtual {v1}, Lamh;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-virtual {v1, v5}, Lcom/sohu/inputmethod/settings/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 141
    :sswitch_3
    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    const v1, 0x7f0b0050

    invoke-virtual {v0, v1}, Lafp;->d(I)V

    .line 142
    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lafp;->e(Z)V

    .line 143
    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/RegisterActivity;->b(Lcom/sohu/inputmethod/settings/RegisterActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafp;->d(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/RegisterActivity;->c(Lcom/sohu/inputmethod/settings/RegisterActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafp;->e(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->g()V

    .line 146
    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-virtual {v1, v5}, Lcom/sohu/inputmethod/settings/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lafi;

    invoke-direct {v2, p0}, Lafi;-><init>(Lafd;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    const v2, 0x7f0b0228

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/settings/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch

    .line 111
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x8 -> :sswitch_3
        0x9 -> :sswitch_2
    .end sparse-switch
.end method
