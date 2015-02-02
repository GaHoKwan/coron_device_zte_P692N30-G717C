.class public Lcom/mediatek/engineermode/wifi/WifiTestSetting;
.super Landroid/preference/PreferenceActivity;
.source "WifiTestSetting.java"


# static fields
.field public static final CTIA_TEST:Ljava/lang/String; = "mtk_wifi_ctia_test"

.field private static final DIALOG_WIFI_CTIA:I = 0x1

.field public static final TAG:Ljava/lang/String; = "EM/WifiTestSetting"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f04000e

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 56
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, dialog:Landroid/app/Dialog;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 74
    new-instance v0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;

    .end local v0           #dialog:Landroid/app/Dialog;
    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;-><init>(Landroid/content/Context;)V

    .line 76
    .restart local v0       #dialog:Landroid/app/Dialog;
    :cond_0
    return-object v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 83
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 61
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 62
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mtk_wifi_ctia_test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0, v2}, Landroid/app/Activity;->removeDialog(I)V

    .line 64
    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 66
    :cond_0
    const-string v0, "EM/WifiTestSetting"

    const-string v1, "onPreferenceTreeClick"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return v2
.end method
