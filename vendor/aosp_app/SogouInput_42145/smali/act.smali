.class Lact;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lacr;


# direct methods
.method constructor <init>(Lacr;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lact;->a:Lacr;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, -0x2

    const/4 v3, -0x1

    .line 48
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 50
    :pswitch_0
    iget-object v0, p0, Lact;->a:Lacr;

    iget-object v1, p0, Lact;->a:Lacr;

    invoke-static {v1}, Lacr;->a(Lacr;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    iget-object v2, p0, Lact;->a:Lacr;

    invoke-static {v2}, Lacr;->a(Lacr;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lacr;->a(Lacr;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 51
    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lact;->a:Lacr;

    invoke-static {v1}, Lacr;->a(Lacr;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lact;->a:Lacr;

    invoke-static {v1}, Lacr;->a(Lacr;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0247

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lact;->a:Lacr;

    invoke-static {v1}, Lacr;->a(Lacr;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0299

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lacu;

    invoke-direct {v2, p0}, Lacu;-><init>(Lact;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lact;->a:Lacr;

    invoke-static {v1}, Lacr;->a(Lacr;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0298

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lacv;

    invoke-direct {v2, p0}, Lacv;-><init>(Lact;)V

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 71
    :pswitch_1
    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 72
    :cond_1
    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)V

    goto/16 :goto_0

    .line 75
    :pswitch_2
    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->show()V

    goto/16 :goto_0

    .line 78
    :pswitch_3
    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Lawa;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 79
    :cond_2
    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 82
    :pswitch_4
    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Lawa;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lawa;->d(I)V

    goto/16 :goto_0

    .line 87
    :pswitch_5
    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Lawa;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Lawa;->d(I)V

    .line 88
    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Lawa;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lawa;->a(I)V

    goto/16 :goto_0

    .line 91
    :pswitch_6
    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Lawa;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Lawa;->d(I)V

    .line 92
    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Lawa;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lawa;->a(I)V

    goto/16 :goto_0

    .line 95
    :pswitch_7
    iget-object v0, p0, Lact;->a:Lacr;

    iget-object v1, p0, Lact;->a:Lacr;

    invoke-static {v1}, Lacr;->a(Lacr;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    iget-object v2, p0, Lact;->a:Lacr;

    invoke-static {v2}, Lacr;->a(Lacr;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lacr;->a(Lacr;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 96
    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lact;->a:Lacr;

    invoke-static {v1}, Lacr;->a(Lacr;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b016b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 98
    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lact;->a:Lacr;

    invoke-static {v1}, Lacr;->a(Lacr;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b02ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lact;->a:Lacr;

    invoke-static {v2}, Lacr;->a(Lacr;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 101
    iget v0, p1, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_0

    .line 137
    :goto_1
    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 103
    :sswitch_0
    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lact;->a:Lacr;

    invoke-static {v1}, Lacr;->a(Lacr;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b021c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 106
    :sswitch_1
    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lact;->a:Lacr;

    invoke-static {v1}, Lacr;->a(Lacr;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0211

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lact;->a:Lacr;

    invoke-static {v1}, Lacr;->a(Lacr;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0296

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lacw;

    invoke-direct {v2, p0}, Lacw;-><init>(Lact;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lact;->a:Lacr;

    invoke-static {v1}, Lacr;->a(Lacr;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0297

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lact;->a:Lacr;

    invoke-static {v2}, Lacr;->a(Lacr;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 120
    :sswitch_2
    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lact;->a:Lacr;

    invoke-static {v1}, Lacr;->a(Lacr;)Lalq;

    move-result-object v1

    invoke-virtual {v1}, Lalq;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 123
    :sswitch_3
    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lact;->a:Lacr;

    invoke-static {v1}, Lacr;->a(Lacr;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0229

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 126
    :sswitch_4
    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lact;->a:Lacr;

    invoke-static {v1}, Lacr;->a(Lacr;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b022a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 127
    const-string v0, "success:"

    invoke-static {v0}, Lacr;->a(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->b(Lacr;)V

    goto/16 :goto_1

    .line 131
    :sswitch_5
    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lact;->a:Lacr;

    invoke-static {v1}, Lacr;->a(Lacr;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b022c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 134
    :sswitch_6
    iget-object v0, p0, Lact;->a:Lacr;

    invoke-static {v0}, Lacr;->a(Lacr;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lact;->a:Lacr;

    invoke-static {v1}, Lacr;->a(Lacr;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b022d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 101
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xc -> :sswitch_4
        0xd -> :sswitch_2
        0xe -> :sswitch_3
        0xf -> :sswitch_6
        0x14 -> :sswitch_5
    .end sparse-switch
.end method
