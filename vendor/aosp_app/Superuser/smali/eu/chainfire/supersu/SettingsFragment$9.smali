.class Leu/chainfire/supersu/SettingsFragment$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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
    iput-object p1, p0, Leu/chainfire/supersu/SettingsFragment$9;->鷭:Leu/chainfire/supersu/SettingsFragment;

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/SettingsFragment$9;)Leu/chainfire/supersu/SettingsFragment;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$9;->鷭:Leu/chainfire/supersu/SettingsFragment;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    .line 0
    new-instance p1, Leu/chainfire/supersu/Installer;

    invoke-direct {p1}, Leu/chainfire/supersu/Installer;-><init>()V

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$9;->鷭:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Leu/chainfire/supersu/SettingsFragment$9$1;

    invoke-direct {v4, p0}, Leu/chainfire/supersu/SettingsFragment$9$1;-><init>(Leu/chainfire/supersu/SettingsFragment$9;)V

    new-instance v0, Leu/chainfire/supersu/Installer$6;

    invoke-direct {v0, p1, v3, v4}, Leu/chainfire/supersu/Installer$6;-><init>(Leu/chainfire/supersu/Installer;Landroid/content/Context;Ljava/lang/Runnable;)V

    sget-object v1, Leu/chainfire/supersu/AsyncTask;->ˮ͈:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Leu/chainfire/supersu/Installer$6;->鷭(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;

    .line 613
    const/4 v0, 0x0

    return v0
.end method
