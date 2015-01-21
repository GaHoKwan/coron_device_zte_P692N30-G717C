.class public Ladj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Ladj;->a:Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;

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

    .line 43
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Ladj;->a:Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->a(Z)V

    .line 48
    :goto_0
    return v2

    .line 46
    :cond_0
    iget-object v0, p0, Ladj;->a:Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->a(Z)V

    goto :goto_0
.end method
