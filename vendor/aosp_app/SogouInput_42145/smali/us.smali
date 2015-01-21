.class public Lus;
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
    .line 82
    iput-object p1, p0, Lus;->a:Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 85
    iget-object v0, p0, Lus;->a:Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->c(Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lus;->a:Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iput-boolean v2, v0, Lamo;->x:Z

    .line 90
    :goto_0
    return v2

    .line 88
    :cond_0
    iget-object v0, p0, Lus;->a:Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/MultimediaSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lamo;->x:Z

    goto :goto_0
.end method
