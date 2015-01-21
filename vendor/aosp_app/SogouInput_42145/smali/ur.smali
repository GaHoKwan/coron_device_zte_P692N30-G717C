.class public Lur;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lur;->a:Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 77
    iget-object v0, p0, Lur;->a:Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v2

    iget-object v0, p0, Lur;->a:Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->b(Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v2, Lamo;->A:Z

    .line 78
    return v1

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
