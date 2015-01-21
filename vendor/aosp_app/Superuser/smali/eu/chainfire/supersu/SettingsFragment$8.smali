.class Leu/chainfire/supersu/SettingsFragment$8;
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
    iput-object p1, p0, Leu/chainfire/supersu/SettingsFragment$8;->鷭:Leu/chainfire/supersu/SettingsFragment;

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/SettingsFragment$8;)Leu/chainfire/supersu/SettingsFragment;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$8;->鷭:Leu/chainfire/supersu/SettingsFragment;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .line 0
    const-string v0, "/system/app/superuser.apk"

    invoke-static {v0}, Leu/chainfire/supersu/SettingsFragment;->櫯(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    const-string v0, "/system/app/Superuser.apk"

    invoke-static {v0}, Leu/chainfire/supersu/SettingsFragment;->櫯(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    const-string v0, "/system/app/SuperUser.apk"

    invoke-static {v0}, Leu/chainfire/supersu/SettingsFragment;->櫯(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    const-string v0, "/system/app/supersu.apk"

    invoke-static {v0}, Leu/chainfire/supersu/SettingsFragment;->櫯(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    const-string v0, "/system/app/Supersu.apk"

    invoke-static {v0}, Leu/chainfire/supersu/SettingsFragment;->櫯(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 559
    const-string v0, "/system/app/SuperSU.apk"

    invoke-static {v0}, Leu/chainfire/supersu/SettingsFragment;->櫯(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    :cond_0
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$8;->鷭:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->鷭(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 562
    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 563
    const v1, 0x7f0900bd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 564
    new-instance v1, Leu/chainfire/supersu/SettingsFragment$8$1;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/SettingsFragment$8$1;-><init>(Leu/chainfire/supersu/SettingsFragment$8;)V

    const v2, 0x7f09000b

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 570
    const v1, 0x7f090005

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 571
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 572
    goto :goto_0

    .line 573
    :cond_1
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$8;->鷭:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->鷭(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 574
    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 575
    const v1, 0x7f090089

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 576
    new-instance v1, Leu/chainfire/supersu/SettingsFragment$8$2;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/SettingsFragment$8$2;-><init>(Leu/chainfire/supersu/SettingsFragment$8;)V

    const v2, 0x7f09000b

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 582
    const v1, 0x7f090005

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 583
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 585
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
