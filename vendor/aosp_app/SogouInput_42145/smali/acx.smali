.class public Lacx;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/FeedBackActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/FeedBackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lacx;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 123
    :goto_0
    :pswitch_0
    return-void

    .line 63
    :pswitch_1
    iget-object v0, p0, Lacx;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    iget-object v1, p0, Lacx;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    iget-object v2, p0, Lacx;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-virtual {v1, v2}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 64
    iget-object v0, p0, Lacx;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lacx;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lacx;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lacx;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0247

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lacx;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    iget-object v2, p0, Lacx;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    const v3, 0x7f0b0299

    invoke-virtual {v2, v3}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lacy;

    invoke-direct {v3, p0}, Lacy;-><init>(Lacx;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lacx;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x2

    iget-object v2, p0, Lacx;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    const v3, 0x7f0b0298

    invoke-virtual {v2, v3}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lacz;

    invoke-direct {v3, p0}, Lacz;-><init>(Lacx;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lacx;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 84
    :pswitch_2
    iget-object v0, p0, Lacx;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacx;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 85
    :cond_0
    iget-object v0, p0, Lacx;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->show()V

    goto/16 :goto_0

    .line 88
    :pswitch_3
    iget-object v0, p0, Lacx;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->dismiss()V

    goto/16 :goto_0

    .line 91
    :pswitch_4
    iget-object v0, p0, Lacx;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 109
    iget v0, p1, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_0

    .line 120
    :goto_1
    :pswitch_5
    iget-object v0, p0, Lacx;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)V

    goto/16 :goto_0

    .line 111
    :sswitch_0
    iget-object v0, p0, Lacx;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lacx;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->b(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lacx;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b025e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 116
    :sswitch_1
    iget-object v0, p0, Lacx;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b025f

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch

    .line 109
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method
