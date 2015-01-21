.class Lafu;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lafs;


# direct methods
.method constructor <init>(Lafs;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lafu;->a:Lafs;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0b021c

    const/4 v5, 0x0

    const v3, 0x7f0b02ab

    const/4 v4, -0x2

    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 190
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 63
    :pswitch_1
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 65
    :cond_1
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 68
    :cond_2
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 72
    :pswitch_2
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 74
    :cond_3
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->b(Lafs;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->b(Lafs;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->b(Lafs;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 76
    :cond_4
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 77
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 78
    :cond_5
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Lamj;

    move-result-object v0

    invoke-virtual {v0}, Lamj;->a()I

    move-result v0

    .line 79
    iget-object v1, p0, Lafu;->a:Lafs;

    invoke-static {v1}, Lafs;->a(Lafs;)Lamj;

    move-result-object v1

    invoke-virtual {v1}, Lamj;->b()I

    move-result v1

    .line 80
    if-eqz v0, :cond_6

    .line 81
    iget-object v2, p0, Lafu;->a:Lafs;

    invoke-static {v2}, Lafs;->a(Lafs;)Lawa;

    move-result-object v2

    invoke-virtual {v2, v0}, Lawa;->d(I)V

    .line 82
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Lawa;

    move-result-object v0

    invoke-virtual {v0, v1}, Lawa;->a(I)V

    .line 87
    :goto_1
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->show()V

    goto/16 :goto_0

    .line 84
    :cond_6
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Lawa;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lawa;->d(I)V

    .line 85
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Lawa;

    move-result-object v0

    invoke-virtual {v0, v5}, Lawa;->a(I)V

    goto :goto_1

    .line 90
    :pswitch_3
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->b(Lafs;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->b(Lafs;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->b(Lafs;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 91
    :cond_7
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Lawa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 93
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lafu;->a:Lafs;

    invoke-static {v1}, Lafs;->a(Lafs;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0214

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 97
    :pswitch_4
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Lawa;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 98
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 100
    :cond_8
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 101
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 102
    :cond_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 103
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->f()V

    .line 104
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    new-instance v1, Ljava/io/File;

    sget-object v2, Laox;->l:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, Lafu;->a:Lafs;

    invoke-static {v1}, Lafs;->a(Lafs;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 122
    :cond_a
    iget-object v0, p0, Lafu;->a:Lafs;

    iget-object v1, p0, Lafu;->a:Lafs;

    invoke-static {v1}, Lafs;->a(Lafs;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    iget-object v2, p0, Lafu;->a:Lafs;

    invoke-static {v2}, Lafs;->a(Lafs;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lafs;->a(Lafs;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 123
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->b(Lafs;)Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f0b015c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 124
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_c

    .line 125
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Lamj;

    move-result-object v0

    invoke-virtual {v0}, Lamj;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 126
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->b(Lafs;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lafu;->a:Lafs;

    invoke-static {v1}, Lafs;->a(Lafs;)Lamj;

    move-result-object v1

    invoke-virtual {v1}, Lamj;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 129
    :goto_2
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->b(Lafs;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lafu;->a:Lafs;

    invoke-static {v1}, Lafs;->a(Lafs;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lafu;->a:Lafs;

    invoke-static {v2}, Lafs;->a(Lafs;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 169
    :goto_3
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->b(Lafs;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 128
    :cond_b
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->b(Lafs;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lafu;->a:Lafs;

    invoke-static {v1}, Lafs;->a(Lafs;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0166

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 132
    :cond_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_d

    .line 133
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->b(Lafs;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lafu;->a:Lafs;

    invoke-static {v1}, Lafs;->a(Lafs;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->b(Lafs;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lafu;->a:Lafs;

    invoke-static {v1}, Lafs;->a(Lafs;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lafu;->a:Lafs;

    invoke-static {v2}, Lafs;->a(Lafs;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_3

    .line 137
    :cond_d
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x41

    if-ne v0, v1, :cond_e

    .line 138
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->b(Lafs;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lafu;->a:Lafs;

    invoke-static {v1}, Lafs;->a(Lafs;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0217

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->b(Lafs;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lafu;->a:Lafs;

    invoke-static {v1}, Lafs;->a(Lafs;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lafu;->a:Lafs;

    invoke-static {v2}, Lafs;->a(Lafs;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_3

    .line 142
    :cond_e
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_f

    .line 143
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v5}, Lafp;->O(Z)V

    .line 144
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->b(Lafs;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lafu;->a:Lafs;

    invoke-static {v1}, Lafs;->a(Lafs;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0216

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->b(Lafs;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    iget-object v2, p0, Lafu;->a:Lafs;

    invoke-static {v2}, Lafs;->a(Lafs;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lafv;

    invoke-direct {v3, p0}, Lafv;-><init>(Lafu;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->b(Lafs;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lafu;->a:Lafs;

    invoke-static {v1}, Lafs;->a(Lafs;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b02ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lafw;

    invoke-direct {v2, p0}, Lafw;-><init>(Lafu;)V

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_3

    .line 164
    :cond_f
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->b(Lafs;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lafu;->a:Lafs;

    invoke-static {v1}, Lafs;->a(Lafs;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->b(Lafs;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lafu;->a:Lafs;

    invoke-static {v1}, Lafs;->a(Lafs;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lafu;->a:Lafs;

    invoke-static {v2}, Lafs;->a(Lafs;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_3

    .line 173
    :pswitch_5
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Lawa;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lawa;->d(I)V

    .line 174
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Lawa;

    move-result-object v0

    invoke-virtual {v0, v5}, Lawa;->a(I)V

    goto/16 :goto_0

    .line 177
    :pswitch_6
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Lawa;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lawa;->a(I)V

    .line 178
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Lawa;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Lawa;->d(I)V

    goto/16 :goto_0

    .line 181
    :pswitch_7
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Lawa;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lawa;->a(I)V

    goto/16 :goto_0

    .line 184
    :pswitch_8
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)V

    goto/16 :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
