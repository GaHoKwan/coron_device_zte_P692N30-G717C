.class Leu/chainfire/supersu/SettingsFragment$20;
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
.field final synthetic 鷭:Leu/chainfire/supersu/SettingsFragment;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/SettingsFragment;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/SettingsFragment$20;->鷭:Leu/chainfire/supersu/SettingsFragment;

    .line 855
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 0
    if-nez p2, :cond_0

    .line 859
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 860
    const-string v0, "http://www.twitter.com/ChainfireXDA"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 861
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$20;->鷭:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v0, p1}, Leu/chainfire/supersu/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 862
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$20;->鷭:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 863
    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 864
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 865
    const-string v0, "http://plus.google.com/b/113517319477420052449/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 866
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$20;->鷭:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v0, p1}, Leu/chainfire/supersu/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 867
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$20;->鷭:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 869
    :cond_1
    return-void
.end method
