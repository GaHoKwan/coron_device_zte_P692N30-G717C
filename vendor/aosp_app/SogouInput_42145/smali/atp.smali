.class public Latp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1007
    iput-object p1, p0, Latp;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1010
    iget-object v0, p0, Latp;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a(I)V

    move-object v0, p1

    .line 1011
    check-cast v0, Landroid/preference/ListPreference;

    move-object v1, p2

    .line 1012
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1013
    iget-object v1, p0, Latp;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    check-cast p2, Ljava/lang/String;

    iput-object p2, v1, Lamo;->p:Ljava/lang/String;

    .line 1014
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1015
    iget-object v0, p0, Latp;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lafp;->n(Z)V

    .line 1016
    return v2
.end method
