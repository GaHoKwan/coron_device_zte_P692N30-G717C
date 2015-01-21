.class Leu/chainfire/supersu/SettingsFragment$8$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic 鷭:Leu/chainfire/supersu/SettingsFragment$8;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/SettingsFragment$8;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/SettingsFragment$8$1;->鷭:Leu/chainfire/supersu/SettingsFragment$8;

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 0
    new-instance p1, Leu/chainfire/supersu/Installer;

    invoke-direct {p1}, Leu/chainfire/supersu/Installer;-><init>()V

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$8$1;->鷭:Leu/chainfire/supersu/SettingsFragment$8;

    invoke-static {v0}, Leu/chainfire/supersu/SettingsFragment$8;->鷭(Leu/chainfire/supersu/SettingsFragment$8;)Leu/chainfire/supersu/SettingsFragment;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    new-instance v0, Leu/chainfire/supersu/Installer$5;

    invoke-direct {v0, p1, p2}, Leu/chainfire/supersu/Installer$5;-><init>(Leu/chainfire/supersu/Installer;Landroid/support/v4/app/FragmentActivity;)V

    sget-object v1, Leu/chainfire/supersu/AsyncTask;->ˮ͈:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Leu/chainfire/supersu/Installer$5;->鷭(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;

    .line 568
    return-void
.end method
