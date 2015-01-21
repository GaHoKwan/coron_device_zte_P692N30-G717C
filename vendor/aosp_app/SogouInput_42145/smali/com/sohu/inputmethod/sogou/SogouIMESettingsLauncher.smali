.class public Lcom/sohu/inputmethod/sogou/SogouIMESettingsLauncher;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 42
    invoke-static {p0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettingsLauncher;->a:Landroid/app/AlertDialog;

    .line 43
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettingsLauncher;->a:Landroid/app/AlertDialog;

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 44
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettingsLauncher;->a:Landroid/app/AlertDialog;

    const v1, 0x7f0b01b0

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/sogou/SogouIMESettingsLauncher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettingsLauncher;->a:Landroid/app/AlertDialog;

    const v1, 0x7f0b0321

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/sogou/SogouIMESettingsLauncher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettingsLauncher;->a:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    const v2, 0x7f0b02c1

    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/sogou/SogouIMESettingsLauncher;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lauj;

    invoke-direct {v3, p0}, Lauj;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMESettingsLauncher;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMESettingsLauncher;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 53
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 56
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettingsLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v2, 0x7f0b0071

    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/sogou/SogouIMESettingsLauncher;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    if-nez v1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettingsLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0140

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettingsLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laox;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettingsLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laox;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettingsLauncher;->startActivity(Landroid/content/Intent;)V

    .line 26
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettingsLauncher;->finish()V

    .line 39
    :goto_0
    return-void

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettingsLauncher;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettingsLauncher;->a()V

    goto :goto_0

    .line 32
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettingsLauncher;->startActivity(Landroid/content/Intent;)V

    .line 34
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMESettingsLauncher;->finish()V

    goto :goto_0
.end method
