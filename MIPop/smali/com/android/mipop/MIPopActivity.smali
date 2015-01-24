.class public Lcom/android/mipop/MIPopActivity;
.super Landroid/preference/PreferenceActivity;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static gV:Lcom/android/mipop/MIPopActivity;


# instance fields
.field private final DBG:Z

.field private TAG:Ljava/lang/String;

.field private dG:Landroid/database/ContentObserver;

.field private gS:Z

.field gT:Landroid/preference/CheckBoxPreference;

.field gU:Landroid/preference/CheckBoxPreference;

.field private gW:Landroid/preference/ListPreference;

.field private gf:Landroid/database/ContentObserver;

.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mipop/MIPopActivity;->gV:Lcom/android/mipop/MIPopActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const-string v0, "Suhao.MIPopActivity"

    iput-object v0, p0, Lcom/android/mipop/MIPopActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/MIPopActivity;->DBG:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mipop/MIPopActivity;->gS:Z

    iput-object v1, p0, Lcom/android/mipop/MIPopActivity;->gT:Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/mipop/MIPopActivity;->gU:Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/mipop/MIPopActivity;->gW:Landroid/preference/ListPreference;

    new-instance v0, Lcom/android/mipop/a;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mipop/a;-><init>(Lcom/android/mipop/MIPopActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mipop/MIPopActivity;->dG:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/mipop/b;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mipop/b;-><init>(Lcom/android/mipop/MIPopActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mipop/MIPopActivity;->gf:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic a(Lcom/android/mipop/MIPopActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mipop/MIPopActivity;->aZ()V

    return-void
.end method

.method private aZ()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/api/MyApplication;

    invoke-virtual {v0}, Lcom/android/mipop/api/MyApplication;->as()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/api/MyApplication;

    if-ne v2, v1, :cond_1

    iget-object v0, p0, Lcom/android/mipop/MIPopActivity;->gT:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/MIPopActivity;->gT:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mipop/MIPopActivity;->TAG:Ljava/lang/String;

    const-string v1, "mMiPop is null !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mipop/MIPopActivity;->gT:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mipop/MIPopActivity;->gT:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mipop/MIPopActivity;->TAG:Ljava/lang/String;

    const-string v1, "mMiPop is null !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/mipop/MIPopActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mipop/MIPopActivity;->ba()V

    return-void
.end method

.method private ba()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/api/MyApplication;

    invoke-virtual {v0}, Lcom/android/mipop/api/MyApplication;->ar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/api/MyApplication;

    const-string v0, "show"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "navbar ContentObserver onChange() HAS_NAVBAR"

    invoke-direct {p0, v0}, Lcom/android/mipop/MIPopActivity;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mipop/MIPopActivity;->gU:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/mipop/MIPopActivity;->gT:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/api/MyApplication;

    const-string v0, "hide"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/MIPopActivity;->gU:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "navbar ContentObserver onChange() NO_NAVBAR"

    invoke-direct {p0, v0}, Lcom/android/mipop/MIPopActivity;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mipop/MIPopActivity;->gT:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private bb()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "FirstKey"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static bc()Lcom/android/mipop/MIPopActivity;
    .locals 1

    sget-object v0, Lcom/android/mipop/MIPopActivity;->gV:Lcom/android/mipop/MIPopActivity;

    return-object v0
.end method

.method private c(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/mipop/MIPopActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string v2, "MIPOP"

    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/api/MyApplication;

    const/4 v0, 0x1

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_0
    const-string v2, "MIPOP"

    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/api/MyApplication;

    const/4 v0, 0x0

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private g(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/mipop/MIPopActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/api/MyApplication;

    invoke-virtual {v0}, Lcom/android/mipop/api/MyApplication;->ar()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/api/MyApplication;

    const-string v0, "show"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/api/MyApplication;

    const-string v2, "showNavigationBar"

    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/api/MyApplication;

    const-string v0, "show"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/api/MyApplication;

    const-string v0, "hide"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/api/MyApplication;

    const-string v2, "showNavigationBar"

    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/api/MyApplication;

    const-string v0, "hide"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mipop/MIPopActivity;->c(Z)V

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    const-class v0, Landroid/R$style;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j(Landroid/content/Context;)Z
    .locals 2

    :try_start_0
    const-class v0, Landroid/R$bool;

    const-string v1, "enable_theme_zte"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/MIPopActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public bd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mipop/MIPopActivity;->gS:Z

    return v0
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mipop/MIPopActivity;->gS:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "onCreate()"

    invoke-direct {p0, v0}, Lcom/android/mipop/MIPopActivity;->log(Ljava/lang/String;)V

    sput-object p0, Lcom/android/mipop/MIPopActivity;->gV:Lcom/android/mipop/MIPopActivity;

    invoke-static {p0}, Lcom/android/mipop/MIPopActivity;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Theme_ZTE_Light"

    invoke-static {v0}, Lcom/android/mipop/MIPopActivity;->i(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Theme_Holo_Light"

    invoke-static {v0}, Lcom/android/mipop/MIPopActivity;->i(Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/android/mipop/MIPopActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MIPOP"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mipop/MIPopActivity;->dG:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/api/MyApplication;

    const-string v0, "showNavigationBar"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mipop/MIPopActivity;->gf:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v0, "mipop_switch"

    invoke-virtual {p0, v0}, Lcom/android/mipop/MIPopActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mipop/MIPopActivity;->gT:Landroid/preference/CheckBoxPreference;

    const-string v0, "mipop_fullscreen"

    invoke-virtual {p0, v0}, Lcom/android/mipop/MIPopActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mipop/MIPopActivity;->gU:Landroid/preference/CheckBoxPreference;

    const-string v0, "mipop_first_key"

    invoke-virtual {p0, v0}, Lcom/android/mipop/MIPopActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/mipop/MIPopActivity;->gW:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/android/mipop/MIPopActivity;->gW:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/mipop/MIPopActivity;->bb()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mipop/MIPopActivity;->gW:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->gW:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mipop/MIPopActivity;->gW:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iput-object p0, p0, Lcom/android/mipop/MIPopActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/mipop/MIPopActivity;->aZ()V

    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/api/MyApplication;

    invoke-virtual {v0}, Lcom/android/mipop/api/MyApplication;->ap()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->gU:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_1
    const-string v0, "mq"

    const-string v1, "ZTEStatistics.increaseUseTimes!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/zte/statistics/sdk/b;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/zte/statistics/sdk/b;->U()V

    return-void

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/mipop/MIPopActivity;->setTheme(I)V

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/mipop/MIPopActivity;->ba()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Suhao.Memory"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->gf:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->dG:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/android/mipop/MIPopActivity;->removeDialog(I)V

    iput-object v2, p0, Lcom/android/mipop/MIPopActivity;->gT:Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/mipop/MIPopActivity;->gU:Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/mipop/MIPopActivity;->gW:Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/mipop/MIPopActivity;->mContext:Landroid/content/Context;

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mipop_first_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->gW:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->gW:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/mipop/MIPopActivity;->gW:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "FirstKey"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/mipop/MIPopActivity;->TAG:Ljava/lang/String;

    const-string v3, "onPreferenceTreeClick"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Suhao.Memory"

    const-string v3, "onPreferenceTreeClick()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/mipop/MIPopActivity;->gT:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_0

    iget-object v0, p0, Lcom/android/mipop/MIPopActivity;->TAG:Ljava/lang/String;

    const-string v2, "onPreferenceTreeClick preference == mMiPop"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/mipop/MIPopActivity;->gT:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mipop/MIPopActivity;->c(Z)V

    invoke-virtual {p0, v1}, Lcom/android/mipop/MIPopActivity;->h(Z)V

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/mipop/MIPopActivity;->gU:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    const-string v2, "Suhao.CheckBox"

    const-string v3, "mFullScreen checked mipop = true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/mipop/MIPopActivity;->gU:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/mipop/MIPopActivity;->g(Z)V

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const-string v0, "onResume()"

    invoke-direct {p0, v0}, Lcom/android/mipop/MIPopActivity;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/android/mipop/c;

    invoke-direct {v0, p0}, Lcom/android/mipop/c;-><init>(Lcom/android/mipop/MIPopActivity;)V

    invoke-static {v0}, Lcom/zte/statistics/sdk/b;->b(Lcom/zte/statistics/sdk/d;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    return-void
.end method
