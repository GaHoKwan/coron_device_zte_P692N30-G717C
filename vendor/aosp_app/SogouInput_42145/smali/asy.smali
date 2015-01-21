.class public Lasy;
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
    .line 1359
    iput-object p1, p0, Lasy;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter

    .prologue
    .line 1363
    iget-object v0, p0, Lasy;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->f(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    .line 1364
    iget-object v0, p0, Lasy;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lasy;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0155

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1365
    const/4 v0, 0x1

    return v0
.end method
