.class Lade;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Ladc;


# direct methods
.method constructor <init>(Ladc;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lade;->a:Ladc;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0b02ab

    const v4, 0x7f0b021c

    const/4 v3, -0x2

    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v0, p0, Lade;->a:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)Lalt;

    move-result-object v0

    invoke-virtual {v0}, Lalt;->a()I

    move-result v0

    .line 79
    iget-object v1, p0, Lade;->a:Ladc;

    invoke-static {v1}, Ladc;->a(Ladc;)Lalt;

    move-result-object v1

    invoke-virtual {v1}, Lalt;->b()I

    move-result v1

    .line 80
    if-eqz v0, :cond_1

    .line 81
    iget-object v2, p0, Lade;->a:Ladc;

    invoke-static {v2}, Ladc;->a(Ladc;)Lawa;

    move-result-object v2

    invoke-virtual {v2, v0}, Lawa;->d(I)V

    .line 82
    iget-object v0, p0, Lade;->a:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)Lawa;

    move-result-object v0

    invoke-virtual {v0, v1}, Lawa;->a(I)V

    .line 84
    :cond_1
    iget-object v0, p0, Lade;->a:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->show()V

    goto :goto_0

    .line 88
    :pswitch_1
    iget-object v0, p0, Lade;->a:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)Lawa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lade;->a:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lade;->a:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->dismiss()V

    goto :goto_0

    .line 91
    :pswitch_2
    iget-object v0, p0, Lade;->a:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)Lawa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lade;->a:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lade;->a:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 93
    iget-object v0, p0, Lade;->a:Ladc;

    iget-object v1, p0, Lade;->a:Ladc;

    invoke-static {v1}, Ladc;->a(Ladc;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    iget-object v2, p0, Lade;->a:Ladc;

    invoke-static {v2}, Ladc;->a(Ladc;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Ladc;->a(Ladc;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 94
    iget-object v0, p0, Lade;->a:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f0b015c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 95
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_2

    .line 96
    iget-object v0, p0, Lade;->a:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lade;->a:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lade;->a:Ladc;

    invoke-static {v1}, Ladc;->a(Ladc;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Layu;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 100
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_3

    .line 101
    iget-object v0, p0, Lade;->a:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lade;->a:Ladc;

    invoke-static {v1}, Ladc;->a(Ladc;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lade;->a:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lade;->a:Ladc;

    invoke-static {v1}, Ladc;->a(Ladc;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lade;->a:Ladc;

    invoke-static {v2}, Ladc;->a(Ladc;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 111
    :goto_1
    iget-object v0, p0, Lade;->a:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 106
    :cond_3
    iget-object v0, p0, Lade;->a:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lade;->a:Ladc;

    invoke-static {v1}, Ladc;->a(Ladc;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lade;->a:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lade;->a:Ladc;

    invoke-static {v1}, Ladc;->a(Ladc;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lade;->a:Ladc;

    invoke-static {v2}, Ladc;->a(Ladc;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    .line 115
    :pswitch_3
    iget-object v0, p0, Lade;->a:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)Lawa;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lawa;->d(I)V

    goto/16 :goto_0

    .line 118
    :pswitch_4
    iget-object v0, p0, Lade;->a:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)Lawa;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lawa;->a(I)V

    .line 119
    iget-object v0, p0, Lade;->a:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)Lawa;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Lawa;->d(I)V

    goto/16 :goto_0

    .line 122
    :pswitch_5
    iget-object v0, p0, Lade;->a:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)Lawa;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lawa;->a(I)V

    goto/16 :goto_0

    .line 125
    :pswitch_6
    iget-object v0, p0, Lade;->a:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)V

    goto/16 :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method
