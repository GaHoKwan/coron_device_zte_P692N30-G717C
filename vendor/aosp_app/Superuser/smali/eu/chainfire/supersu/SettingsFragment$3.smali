.class Leu/chainfire/supersu/SettingsFragment$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic 鷭:Leu/chainfire/supersu/SettingsFragment;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/SettingsFragment;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/SettingsFragment$3;->鷭:Leu/chainfire/supersu/SettingsFragment;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/SettingsFragment$3;)Leu/chainfire/supersu/SettingsFragment;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$3;->鷭:Leu/chainfire/supersu/SettingsFragment;

    return-object v0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$3;->鷭:Leu/chainfire/supersu/SettingsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/SettingsFragment;->鷭(Leu/chainfire/supersu/SettingsFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "superuser"

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 217
    new-instance p1, Leu/chainfire/supersu/Installer;

    invoke-direct {p1}, Leu/chainfire/supersu/Installer;-><init>()V

    .line 218
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$3;->鷭:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Leu/chainfire/supersu/Installer;->鷭(Landroid/content/Context;)V

    .line 219
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$3;->鷭:Leu/chainfire/supersu/SettingsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/SettingsFragment;->鷭(Leu/chainfire/supersu/SettingsFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "superuser"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$3;->鷭:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    new-instance v7, Leu/chainfire/supersu/SettingsFragment$3$1;

    invoke-direct {v7, p0}, Leu/chainfire/supersu/SettingsFragment$3$1;-><init>(Leu/chainfire/supersu/SettingsFragment$3;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    new-instance v0, Leu/chainfire/supersu/Installer$2;

    invoke-direct {v0, p1, p2, v6, v7}, Leu/chainfire/supersu/Installer$2;-><init>(Leu/chainfire/supersu/Installer;Landroid/support/v4/app/FragmentActivity;Ljava/lang/Boolean;Ljava/lang/Runnable;)V

    sget-object v1, Leu/chainfire/supersu/AsyncTask;->ˮ͈:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Leu/chainfire/supersu/Installer$2;->鷭(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;

    .line 226
    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$3;->鷭:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    sget-object v6, Leu/chainfire/supersu/Installer$UninstallMode;->鷭:Leu/chainfire/supersu/Installer$UninstallMode;

    new-instance v0, Leu/chainfire/supersu/Installer$3;

    move-object v1, p1

    move-object v2, p2

    move-object v3, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Leu/chainfire/supersu/Installer$3;-><init>(Leu/chainfire/supersu/Installer;Landroid/support/v4/app/FragmentActivity;Leu/chainfire/supersu/Installer$UninstallMode;ZLeu/chainfire/supersu/MainActivity$5$1$1;)V

    sget-object v1, Leu/chainfire/supersu/AsyncTask;->ˮ͈:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Leu/chainfire/supersu/Installer$3;->鷭(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;

    .line 230
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
