.class Lacn;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lacl;

.field a:Z


# direct methods
.method constructor <init>(Lacl;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lacn;->a:Lacl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0b021c

    const/4 v4, -0x2

    const/4 v3, -0x1

    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 133
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 52
    :pswitch_1
    iget-object v0, p0, Lacn;->a:Lacl;

    iget-object v1, p0, Lacn;->a:Lacl;

    invoke-static {v1}, Lacl;->a(Lacl;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    iget-object v2, p0, Lacn;->a:Lacl;

    invoke-static {v2}, Lacl;->a(Lacl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lacl;->a(Lacl;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 53
    iget-object v0, p0, Lacn;->a:Lacl;

    invoke-static {v0}, Lacl;->a(Lacl;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lacn;->a:Lacl;

    invoke-static {v1}, Lacl;->a(Lacl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lacn;->a:Lacl;

    invoke-static {v0}, Lacl;->a(Lacl;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lacn;->a:Lacl;

    invoke-static {v1}, Lacl;->a(Lacl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0247

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lacn;->a:Lacl;

    invoke-static {v0}, Lacl;->a(Lacl;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lacn;->a:Lacl;

    invoke-static {v1}, Lacl;->a(Lacl;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0299

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Laco;

    invoke-direct {v2, p0}, Laco;-><init>(Lacn;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lacn;->a:Lacl;

    invoke-static {v0}, Lacl;->a(Lacl;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lacn;->a:Lacl;

    invoke-static {v1}, Lacl;->a(Lacl;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0298

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lacp;

    invoke-direct {v2, p0}, Lacp;-><init>(Lacn;)V

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lacn;->a:Lacl;

    invoke-static {v0}, Lacl;->a(Lacl;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 73
    :pswitch_2
    iget-object v0, p0, Lacn;->a:Lacl;

    invoke-static {v0}, Lacl;->a(Lacl;)V

    goto/16 :goto_0

    .line 76
    :pswitch_3
    iget-object v0, p0, Lacn;->a:Lacl;

    invoke-static {v0}, Lacl;->a(Lacl;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lacn;->a:Lacl;

    invoke-static {v0}, Lacl;->a(Lacl;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 77
    :cond_1
    iget-object v0, p0, Lacn;->a:Lacl;

    invoke-static {v0}, Lacl;->a(Lacl;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->show()V

    goto/16 :goto_0

    .line 80
    :pswitch_4
    iget-object v0, p0, Lacn;->a:Lacl;

    invoke-static {v0}, Lacl;->a(Lacl;)Lawa;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lacn;->a:Lacl;

    invoke-static {v0}, Lacl;->a(Lacl;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 81
    :cond_2
    iget-object v0, p0, Lacn;->a:Lacl;

    invoke-static {v0}, Lacl;->a(Lacl;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacn;->a:Lacl;

    invoke-static {v0}, Lacl;->a(Lacl;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 84
    :pswitch_5
    iget-object v0, p0, Lacn;->a:Lacl;

    invoke-static {v0}, Lacl;->a(Lacl;)Lawa;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lawa;->d(I)V

    goto/16 :goto_0

    .line 87
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    const v1, 0x19000

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lacn;->a:Lacl;

    invoke-static {v0}, Lacl;->a(Lacl;)Lawa;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lawa;->a(I)V

    goto/16 :goto_0

    .line 92
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v1, :cond_3

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lacn;->a:Z

    .line 93
    iget-object v0, p0, Lacn;->a:Lacl;

    invoke-static {v0}, Lacl;->a(Lacl;)Lawa;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lawa;->a(I)V

    goto/16 :goto_0

    .line 92
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 97
    :pswitch_8
    iget-object v0, p0, Lacn;->a:Lacl;

    invoke-static {v0}, Lacl;->a(Lacl;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 98
    iget-object v0, p0, Lacn;->a:Lacl;

    iget-object v1, p0, Lacn;->a:Lacl;

    invoke-static {v1}, Lacl;->a(Lacl;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    iget-object v2, p0, Lacn;->a:Lacl;

    invoke-static {v2}, Lacl;->a(Lacl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lacl;->a(Lacl;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 99
    iget-object v0, p0, Lacn;->a:Lacl;

    invoke-static {v0}, Lacl;->a(Lacl;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lacn;->a:Lacl;

    invoke-static {v1}, Lacl;->a(Lacl;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b02ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lacn;->a:Lacl;

    invoke-static {v2}, Lacl;->a(Lacl;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lacn;->a:Lacl;

    invoke-static {v0}, Lacl;->a(Lacl;)Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f0b016c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 101
    iget v0, p1, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_0

    .line 128
    iget-object v0, p0, Lacn;->a:Lacl;

    invoke-static {v0}, Lacl;->a(Lacl;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lacn;->a:Lacl;

    invoke-static {v1}, Lacl;->a(Lacl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 130
    :goto_2
    iget-object v0, p0, Lacn;->a:Lacl;

    invoke-static {v0}, Lacl;->a(Lacl;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 103
    :sswitch_0
    iget-object v0, p0, Lacn;->a:Lacl;

    invoke-static {v0}, Lacl;->a(Lacl;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lacn;->a:Lacl;

    invoke-static {v1}, Lacl;->a(Lacl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0211

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lacn;->a:Lacl;

    invoke-static {v0}, Lacl;->a(Lacl;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lacn;->a:Lacl;

    invoke-static {v1}, Lacl;->a(Lacl;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0296

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lacq;

    invoke-direct {v2, p0}, Lacq;-><init>(Lacn;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lacn;->a:Lacl;

    invoke-static {v0}, Lacl;->a(Lacl;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lacn;->a:Lacl;

    invoke-static {v1}, Lacl;->a(Lacl;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0297

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lacn;->a:Lacl;

    invoke-static {v2}, Lacl;->a(Lacl;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    .line 116
    :sswitch_1
    iget-object v0, p0, Lacn;->a:Lacl;

    invoke-static {v0}, Lacl;->a(Lacl;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lacn;->a:Lacl;

    invoke-static {v1}, Lacl;->a(Lacl;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b022e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 119
    :sswitch_2
    iget-object v0, p0, Lacn;->a:Lacl;

    invoke-static {v0}, Lacl;->a(Lacl;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lacn;->a:Lacl;

    invoke-static {v1}, Lacl;->a(Lacl;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b022b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 122
    :sswitch_3
    iget-object v0, p0, Lacn;->a:Lacl;

    invoke-static {v0}, Lacl;->a(Lacl;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lacn;->a:Lacl;

    invoke-static {v1}, Lacl;->a(Lacl;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b023b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 125
    :sswitch_4
    iget-object v0, p0, Lacn;->a:Lacl;

    invoke-static {v0}, Lacl;->a(Lacl;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lacn;->a:Lacl;

    invoke-static {v1}, Lacl;->a(Lacl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 101
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_0
        0xb -> :sswitch_3
        0x11 -> :sswitch_1
        0x17 -> :sswitch_2
    .end sparse-switch
.end method
