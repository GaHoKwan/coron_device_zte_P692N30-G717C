.class public Lahb;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f0b021c

    const v6, 0x7f0b0218

    const v5, 0x7f0b015b

    const/4 v4, -0x2

    const/4 v3, -0x1

    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 168
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 59
    :pswitch_0
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    iget-object v1, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    iget-object v2, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 60
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0247

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0299

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lahc;

    invoke-direct {v2, p0}, Lahc;-><init>(Lahb;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0298

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lahd;

    invoke-direct {v2, p0}, Lahd;-><init>(Lahb;)V

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 80
    :pswitch_1
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)V

    goto/16 :goto_0

    .line 83
    :pswitch_2
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 84
    :cond_1
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->show()V

    goto/16 :goto_0

    .line 87
    :pswitch_3
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Lawa;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 88
    :cond_2
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 91
    :pswitch_4
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->u:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->u:I

    .line 92
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    iget-object v1, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    iget-object v2, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 93
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b02ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 97
    iget v0, p1, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_0

    .line 163
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 99
    :sswitch_1
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 103
    :sswitch_2
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0211

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0296

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lahe;

    invoke-direct {v2, p0}, Lahe;-><init>(Lahb;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0297

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 117
    :sswitch_3
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0306

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 122
    :sswitch_4
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0307

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 127
    :sswitch_5
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0215

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 132
    :sswitch_6
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lafp;->e(J)V

    .line 134
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lafp;->i(Z)V

    .line 136
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Lanb;

    move-result-object v0

    invoke-virtual {v0}, Lanb;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Lanb;

    move-result-object v1

    invoke-virtual {v1}, Lanb;->a_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 150
    :cond_3
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Lanb;

    move-result-object v1

    invoke-virtual {v1}, Lanb;->a_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 158
    :sswitch_7
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 97
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x4 -> :sswitch_6
        0x5 -> :sswitch_5
        0x6 -> :sswitch_0
        0x1e -> :sswitch_7
        0x20 -> :sswitch_3
        0x21 -> :sswitch_4
    .end sparse-switch
.end method
