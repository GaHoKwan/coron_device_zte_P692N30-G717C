.class public Ladr;
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
    .line 89
    iput-object p1, p0, Ladr;->a:Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 93
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Ladr;->a:Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->a(Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 97
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
