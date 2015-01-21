.class public Latu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1221
    iput-object p1, p0, Latu;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1223
    iget-object v0, p0, Latu;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1224
    iget-object v0, p0, Latu;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1225
    iget-object v0, p0, Latu;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1226
    iget-object v0, p0, Latu;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b02bc

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1229
    iget-object v0, p0, Latu;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iput-boolean v2, v0, Lamo;->p:Z

    .line 1251
    :goto_0
    return v3

    .line 1234
    :cond_0
    iget-object v0, p0, Latu;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->i()V

    .line 1237
    iget-object v0, p0, Latu;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->d(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    .line 1238
    iget-object v0, p0, Latu;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Lcom/sohu/inputmethod/settings/ui/ImagePreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a()V

    .line 1239
    iget-object v0, p0, Latu;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iput-boolean v3, v0, Lamo;->p:Z

    goto :goto_0

    .line 1245
    :cond_1
    iget-object v0, p0, Latu;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Lcom/sohu/inputmethod/settings/ui/ImagePreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->b()V

    .line 1246
    iget-object v0, p0, Latu;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    .line 1247
    iget-object v0, p0, Latu;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iput-boolean v2, v0, Lamo;->p:Z

    goto :goto_0
.end method
