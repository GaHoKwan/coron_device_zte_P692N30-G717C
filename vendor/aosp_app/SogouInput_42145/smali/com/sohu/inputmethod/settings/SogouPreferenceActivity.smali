.class public Lcom/sohu/inputmethod/settings/SogouPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 12
    invoke-static {}, Lazh;->a()I

    move-result v0

    const/16 v1, 0xd

    if-le v0, v1, :cond_0

    .line 13
    const v0, 0x1030128

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/SogouPreferenceActivity;->setTheme(I)V

    .line 14
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    return-void
.end method
