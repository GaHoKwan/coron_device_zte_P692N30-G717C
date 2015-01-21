.class Leu/chainfire/supersu/SettingsFragment$16;
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
    iput-object p1, p0, Leu/chainfire/supersu/SettingsFragment$16;->鷭:Leu/chainfire/supersu/SettingsFragment;

    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/SettingsFragment$16;)Leu/chainfire/supersu/SettingsFragment;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$16;->鷭:Leu/chainfire/supersu/SettingsFragment;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 10

    .line 0
    const/4 v0, 0x1

    new-array p1, v0, [Z

    fill-array-data p1, :array_0

    .line 735
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$16;->鷭:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030013

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 736
    const v0, 0x7f04002c

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    move-object v8, v0

    .line 737
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 738
    new-instance v0, Leu/chainfire/supersu/SettingsFragment$16$1;

    invoke-direct {v0, p0, v8, p1}, Leu/chainfire/supersu/SettingsFragment$16$1;-><init>(Leu/chainfire/supersu/SettingsFragment$16;Landroid/widget/ScrollView;[Z)V

    invoke-virtual {v8, v0}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 746
    const v0, 0x7f04002d

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v9, v0

    .line 747
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$16;->鷭:Leu/chainfire/supersu/SettingsFragment;

    const v1, 0x7f09007a

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 748
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Leu/chainfire/supersu/SettingsFragment$16;->鷭:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v1}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 749
    const v1, 0x7f090004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 750
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 751
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 752
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v7

    .line 748
    .line 754
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 755
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$16;->鷭:Leu/chainfire/supersu/SettingsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/SettingsFragment;->ˮ͈(Leu/chainfire/supersu/SettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/SettingsFragment$16$2;

    move-object v2, p0

    move-object v3, v8

    move-object v4, v9

    move-object v5, v7

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Leu/chainfire/supersu/SettingsFragment$16$2;-><init>(Leu/chainfire/supersu/SettingsFragment$16;Landroid/widget/ScrollView;Landroid/widget/TextView;Landroid/app/AlertDialog;[Z)V

    .line 755
    .line 803
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 805
    :cond_0
    const/4 v0, 0x0

    return v0

    nop

    :array_0
    .array-data 0x1
        0x1t
    .end array-data
.end method
