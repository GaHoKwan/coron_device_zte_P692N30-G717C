.class Leu/chainfire/supersu/SettingsFragment$5;
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
    iput-object p1, p0, Leu/chainfire/supersu/SettingsFragment$5;->鷭:Leu/chainfire/supersu/SettingsFragment;

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$5;->鷭:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x1301

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Leu/chainfire/supersu/PINActivity;->鷭(Landroid/app/Activity;ZIZ)V

    .line 337
    const/4 v0, 0x0

    return v0
.end method
