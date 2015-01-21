.class public Lzd;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/AccountList;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/AccountList;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f0b01d7

    .line 41
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 110
    :goto_0
    :pswitch_0
    return-void

    .line 66
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b02ae

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1}, Lqy;->a()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 71
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 72
    iget-object v1, p0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    const v2, 0x7f0b01e1

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/settings/AccountList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 77
    :goto_1
    const/4 v1, -0x1

    iget-object v2, p0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    const v3, 0x7f0b029a

    invoke-virtual {v2, v3}, Lcom/sohu/inputmethod/settings/AccountList;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lze;

    invoke-direct {v3, p0}, Lze;-><init>(Lzd;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 86
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 75
    iget-object v1, p0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    const v2, 0x7f0b023a

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/settings/AccountList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 89
    :pswitch_2
    const-string v0, "add a account info"

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AccountList;->a(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    iget-object v1, p0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/AccountList;->a(Lcom/sohu/inputmethod/settings/AccountList;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/AccountList;->a(Lcom/sohu/inputmethod/settings/AccountList;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    .line 91
    iget-object v0, p0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    iget-object v1, p0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/AccountList;->a(Lcom/sohu/inputmethod/settings/AccountList;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/AccountList;->a(Lcom/sohu/inputmethod/settings/AccountList;Landroid/preference/Preference;)V

    .line 92
    iget-object v0, p0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    iget-object v1, p0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/AccountList;->b(Lcom/sohu/inputmethod/settings/AccountList;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/AccountList;->b(Lcom/sohu/inputmethod/settings/AccountList;Landroid/preference/Preference;)V

    .line 93
    iget-object v0, p0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    iget-object v1, p0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    iget-object v2, p0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AccountList;->a(Lcom/sohu/inputmethod/settings/AccountList;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sohu/inputmethod/settings/AccountList;->c(Lcom/sohu/inputmethod/settings/AccountList;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/AccountList;->b(Lcom/sohu/inputmethod/settings/AccountList;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    .line 94
    iget-object v0, p0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    iget-object v1, p0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/AccountList;->a(Lcom/sohu/inputmethod/settings/AccountList;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/AccountList;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 95
    iget-object v0, p0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/AccountList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->g()V

    goto/16 :goto_0

    .line 98
    :pswitch_3
    const-string v0, "remove account info"

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AccountList;->a(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    iget-object v1, p0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/AccountList;->a(Lcom/sohu/inputmethod/settings/AccountList;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/AccountList;->c(Lcom/sohu/inputmethod/settings/AccountList;Landroid/preference/Preference;)V

    .line 100
    iget-object v0, p0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    iget-object v1, p0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/AccountList;->b(Lcom/sohu/inputmethod/settings/AccountList;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/AccountList;->d(Lcom/sohu/inputmethod/settings/AccountList;Landroid/preference/Preference;)V

    .line 101
    iget-object v0, p0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    iget-object v1, p0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/AccountList;->a(Lcom/sohu/inputmethod/settings/AccountList;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/AccountList;->a(Lcom/sohu/inputmethod/settings/AccountList;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    .line 102
    iget-object v0, p0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    iget-object v1, p0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/AccountList;->a(Lcom/sohu/inputmethod/settings/AccountList;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/AccountList;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 103
    iget-object v0, p0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/AccountList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->q()V

    .line 104
    iget-object v0, p0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/AccountList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    const v1, 0x7f0b0089

    invoke-virtual {v0, v1}, Lafp;->d(I)V

    .line 105
    iget-object v0, p0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/AccountList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lafp;->B(Z)V

    .line 106
    iget-object v0, p0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/AccountList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    const v1, 0x7f0b0050

    invoke-virtual {v0, v1}, Lafp;->d(I)V

    .line 107
    iget-object v0, p0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/AccountList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    const v1, 0x7f0b008c

    invoke-virtual {v0, v1}, Lafp;->d(I)V

    goto/16 :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
