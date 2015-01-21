.class Leu/chainfire/supersu/SettingsFragment$6$2;
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
.field final synthetic 鷭:Leu/chainfire/supersu/SettingsFragment$6;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/SettingsFragment$6;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/SettingsFragment$6$2;->鷭:Leu/chainfire/supersu/SettingsFragment$6;

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/SettingsFragment$6$2;)Leu/chainfire/supersu/SettingsFragment$6;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$6$2;->鷭:Leu/chainfire/supersu/SettingsFragment$6;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 0
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 410
    :pswitch_0
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$6$2;->鷭:Leu/chainfire/supersu/SettingsFragment$6;

    invoke-static {v0}, Leu/chainfire/supersu/SettingsFragment$6;->鷭(Leu/chainfire/supersu/SettingsFragment$6;)Leu/chainfire/supersu/SettingsFragment;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->鷭(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 411
    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 412
    const v1, 0x7f0900a0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 413
    new-instance v1, Leu/chainfire/supersu/SettingsFragment$6$2$1;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/SettingsFragment$6$2$1;-><init>(Leu/chainfire/supersu/SettingsFragment$6$2;)V

    const v2, 0x7f09000b

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 419
    const v1, 0x7f090005

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 421
    return-void

    .line 423
    :pswitch_1
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$6$2;->鷭:Leu/chainfire/supersu/SettingsFragment$6;

    invoke-static {v0}, Leu/chainfire/supersu/SettingsFragment$6;->鷭(Leu/chainfire/supersu/SettingsFragment$6;)Leu/chainfire/supersu/SettingsFragment;

    move-result-object v0

    const-string v1, "original"

    invoke-static {v0, v1}, Leu/chainfire/supersu/SettingsFragment;->鷭(Leu/chainfire/supersu/SettingsFragment;Ljava/lang/String;)V

    .line 424
    return-void

    .line 426
    :pswitch_2
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$6$2;->鷭:Leu/chainfire/supersu/SettingsFragment$6;

    invoke-static {v0}, Leu/chainfire/supersu/SettingsFragment$6;->鷭(Leu/chainfire/supersu/SettingsFragment$6;)Leu/chainfire/supersu/SettingsFragment;

    move-result-object v0

    const-string v1, "superandy"

    invoke-static {v0, v1}, Leu/chainfire/supersu/SettingsFragment;->鷭(Leu/chainfire/supersu/SettingsFragment;Ljava/lang/String;)V

    .line 427
    return-void

    .line 429
    :pswitch_3
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$6$2;->鷭:Leu/chainfire/supersu/SettingsFragment$6;

    invoke-static {v0}, Leu/chainfire/supersu/SettingsFragment$6;->鷭(Leu/chainfire/supersu/SettingsFragment$6;)Leu/chainfire/supersu/SettingsFragment;

    move-result-object v0

    const-string v1, "chip"

    invoke-static {v0, v1}, Leu/chainfire/supersu/SettingsFragment;->鷭(Leu/chainfire/supersu/SettingsFragment;Ljava/lang/String;)V

    .line 430
    return-void

    .line 432
    :pswitch_4
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$6$2;->鷭:Leu/chainfire/supersu/SettingsFragment$6;

    invoke-static {v0}, Leu/chainfire/supersu/SettingsFragment$6;->鷭(Leu/chainfire/supersu/SettingsFragment$6;)Leu/chainfire/supersu/SettingsFragment;

    move-result-object v0

    const-string v1, "supersu"

    invoke-static {v0, v1}, Leu/chainfire/supersu/SettingsFragment;->鷭(Leu/chainfire/supersu/SettingsFragment;Ljava/lang/String;)V

    .line 433
    return-void

    .line 435
    :pswitch_5
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$6$2;->鷭:Leu/chainfire/supersu/SettingsFragment$6;

    invoke-static {v0}, Leu/chainfire/supersu/SettingsFragment$6;->鷭(Leu/chainfire/supersu/SettingsFragment$6;)Leu/chainfire/supersu/SettingsFragment;

    move-result-object v0

    const-string v1, "emblem"

    invoke-static {v0, v1}, Leu/chainfire/supersu/SettingsFragment;->鷭(Leu/chainfire/supersu/SettingsFragment;Ljava/lang/String;)V

    .line 438
    :goto_0
    return-void
.end method
