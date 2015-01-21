.class Leu/chainfire/supersu/SettingsFragment$3$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic 鷭:Leu/chainfire/supersu/SettingsFragment$3;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/SettingsFragment$3;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/SettingsFragment$3$1;->鷭:Leu/chainfire/supersu/SettingsFragment$3;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 0
    new-instance v0, Leu/chainfire/supersu/Settings;

    iget-object v1, p0, Leu/chainfire/supersu/SettingsFragment$3$1;->鷭:Leu/chainfire/supersu/SettingsFragment$3;

    invoke-static {v1}, Leu/chainfire/supersu/SettingsFragment$3;->鷭(Leu/chainfire/supersu/SettingsFragment$3;)Leu/chainfire/supersu/SettingsFragment;

    move-result-object v1

    invoke-virtual {v1}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Leu/chainfire/supersu/Settings;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Leu/chainfire/supersu/SettingsFragment$3$1;->鷭:Leu/chainfire/supersu/SettingsFragment$3;

    invoke-static {v1}, Leu/chainfire/supersu/SettingsFragment$3;->鷭(Leu/chainfire/supersu/SettingsFragment$3;)Leu/chainfire/supersu/SettingsFragment;

    move-result-object v1

    invoke-virtual {v1}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/Settings;->櫯(Landroid/content/Context;)V

    .line 224
    return-void
.end method
