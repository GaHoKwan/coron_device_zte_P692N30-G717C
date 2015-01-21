.class public Lcom/zte/heartyservice/common/utils/SettingUtils;
.super Ljava/lang/Object;
.source "SettingUtils.java"


# static fields
.field public static final PREF_INIT_FLAG:Ljava/lang/String; = "init_flag"

.field public static final PREF_USER_ENTER_FLAG:Ljava/lang/String; = "user_enter"

.field public static final PREF_VIRUSDB_AUTO_UPDATE_ENABLE:Ljava/lang/String; = "virusdb_auto_update_enable"

.field public static final SETTING_PREFERENCES:Ljava/lang/String; = "settings"

.field private static mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 22
    invoke-static {p0}, Lcom/zte/heartyservice/common/utils/SettingUtils;->getSettingSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 23
    sget-object v0, Lcom/zte/heartyservice/common/utils/SettingUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getIntSetting(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .parameter "context"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 42
    invoke-static {p0}, Lcom/zte/heartyservice/common/utils/SettingUtils;->getSettingSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 43
    sget-object v0, Lcom/zte/heartyservice/common/utils/SettingUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSettingSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3
    .parameter "context"

    .prologue
    .line 15
    sget-object v0, Lcom/zte/heartyservice/common/utils/SettingUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/common/utils/SettingUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 18
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/common/utils/SettingUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static getStringSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 32
    invoke-static {p0}, Lcom/zte/heartyservice/common/utils/SettingUtils;->getSettingSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 33
    sget-object v0, Lcom/zte/heartyservice/common/utils/SettingUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static putBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 27
    invoke-static {p0}, Lcom/zte/heartyservice/common/utils/SettingUtils;->getSettingSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 28
    sget-object v0, Lcom/zte/heartyservice/common/utils/SettingUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 29
    return-void
.end method

.method public static putIntSetting(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 47
    invoke-static {p0}, Lcom/zte/heartyservice/common/utils/SettingUtils;->getSettingSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 48
    sget-object v0, Lcom/zte/heartyservice/common/utils/SettingUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 49
    return-void
.end method

.method public static putStringSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 37
    invoke-static {p0}, Lcom/zte/heartyservice/common/utils/SettingUtils;->getSettingSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 38
    sget-object v0, Lcom/zte/heartyservice/common/utils/SettingUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 39
    return-void
.end method
