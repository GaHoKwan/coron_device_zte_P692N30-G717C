.class Leu/chainfire/supersu/SettingsFragment$12;
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
    iput-object p1, p0, Leu/chainfire/supersu/SettingsFragment$12;->鷭:Leu/chainfire/supersu/SettingsFragment;

    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8

    .line 0
    new-instance p1, Leu/chainfire/supersu/Installer;

    invoke-direct {p1}, Leu/chainfire/supersu/Installer;-><init>()V

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$12;->鷭:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    sget-object v7, Leu/chainfire/supersu/Installer$UninstallMode;->Ą:Leu/chainfire/supersu/Installer$UninstallMode;

    new-instance v0, Leu/chainfire/supersu/Installer$3;

    move-object v1, p1

    move-object v2, v6

    move-object v3, v7

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Leu/chainfire/supersu/Installer$3;-><init>(Leu/chainfire/supersu/Installer;Landroid/support/v4/app/FragmentActivity;Leu/chainfire/supersu/Installer$UninstallMode;ZLeu/chainfire/supersu/MainActivity$5$1$1;)V

    sget-object v1, Leu/chainfire/supersu/AsyncTask;->ˮ͈:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Leu/chainfire/supersu/Installer$3;->鷭(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;

    .line 673
    const/4 v0, 0x0

    return v0
.end method
