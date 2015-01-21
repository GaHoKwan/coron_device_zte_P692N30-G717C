.class public Lcn/com/zte/yp/utils/SettingsPrefs;
.super Ljava/lang/Object;
.source "SettingsPrefs.java"


# static fields
.field private static final SEARCHYELLOWPAGESONLYWIFI:Ljava/lang/String; = "SearchYellowPageOnlyWifi"

.field private static final SETTINGS_FILE:Ljava/lang/String; = "settings_prefs"

.field private static final UPDATECITYONLYWIFI:Ljava/lang/String; = "updateCityOnlyWifi"

.field private static final UPDATECITYTIMES:Ljava/lang/String; = "updateCityTimes"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSearchYellowPageOnlyWifi(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 88
    const-string v2, "settings_prefs"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 89
    .local v0, agreement:Landroid/content/SharedPreferences;
    const-string v2, "SearchYellowPageOnlyWifi"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 90
    .local v1, ret:Z
    return v1
.end method

.method public static getUpdateCityOnlyWifiFlag(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 28
    const-string v2, "settings_prefs"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 29
    .local v0, agreement:Landroid/content/SharedPreferences;
    const-string v2, "updateCityOnlyWifi"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 30
    .local v1, ret:Z
    return v1
.end method

.method public static getUpdateCityTimes(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 58
    const-string v2, "settings_prefs"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 59
    .local v0, agreement:Landroid/content/SharedPreferences;
    const-string v2, "updateCityTimes"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 60
    .local v1, ret:I
    return v1
.end method

.method public static setSearchYellowPageOnlyWifi(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "flag"

    .prologue
    .line 103
    const-string v2, "settings_prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 104
    .local v0, agreement:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 105
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "SearchYellowPageOnlyWifi"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 106
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    return-void
.end method

.method public static setUpdateCityOnlyWifiFlag(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "flag"

    .prologue
    .line 43
    const-string v2, "settings_prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 44
    .local v0, agreement:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 45
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "updateCityOnlyWifi"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 47
    return-void
.end method

.method public static setUpdateCityTimes(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "times"

    .prologue
    .line 73
    const-string v2, "settings_prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 74
    .local v0, agreement:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 75
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "updateCityTimes"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 77
    return-void
.end method
