.class public Latb;
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
    .line 960
    iput-object p1, p0, Latb;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 962
    move-object v0, p1

    check-cast v0, Landroid/preference/ListPreference;

    move-object v1, p2

    .line 963
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 964
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 965
    iget-object v0, p0, Latb;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lamo;->i:I

    .line 967
    const/4 v0, 0x1

    return v0
.end method