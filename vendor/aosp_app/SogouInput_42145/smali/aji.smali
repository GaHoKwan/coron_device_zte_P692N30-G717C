.class public Laji;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Laji;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 291
    iget-object v0, p0, Laji;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    const-string v1, "mIMEChangedReceiver"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Laji;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laox;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laji;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laox;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Laji;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    const-string v1, "mIMEChangedReceiver default === true"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Laji;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Z)Z

    .line 296
    iget-object v0, p0, Laji;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    iget v0, v0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Laji;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    iget-object v0, v0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laji;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    iget-object v0, v0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Laji;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    iget v1, v0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:I

    .line 300
    iget-object v0, p0, Laji;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    iget-object v0, v0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 303
    :cond_0
    return-void
.end method
