.class public Lcom/zte/heartyservice/common/utils/SettingUtils;
.super Ljava/lang/Object;
.source "SettingUtils.java"


# static fields
.field private static final SETTING_PREFERENCES:Ljava/lang/String; = "settings"

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
    .line 19
    invoke-static {p0}, Lcom/zte/heartyservice/common/utils/SettingUtils;->getSettingSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 20
    sget-object v0, Lcom/zte/heartyservice/common/utils/SettingUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSettingSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 12
    sget-object v0, Lcom/zte/heartyservice/common/utils/SettingUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 13
    const-string v0, "settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/common/utils/SettingUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 15
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
    .line 29
    invoke-static {p0}, Lcom/zte/heartyservice/common/utils/SettingUtils;->getSettingSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 30
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
    .line 24
    invoke-static {p0}, Lcom/zte/heartyservice/common/utils/SettingUtils;->getSettingSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 25
    sget-object v0, Lcom/zte/heartyservice/common/utils/SettingUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 26
    return-void
.end method

.method public static putStringSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 34
    invoke-static {p0}, Lcom/zte/heartyservice/common/utils/SettingUtils;->getSettingSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 35
    sget-object v0, Lcom/zte/heartyservice/common/utils/SettingUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 36
    return-void
.end method
