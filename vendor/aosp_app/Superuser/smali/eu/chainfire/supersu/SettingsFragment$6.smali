.class Leu/chainfire/supersu/SettingsFragment$6;
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
    iput-object p1, p0, Leu/chainfire/supersu/SettingsFragment$6;->鷭:Leu/chainfire/supersu/SettingsFragment;

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/SettingsFragment$6;)Leu/chainfire/supersu/SettingsFragment;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$6;->鷭:Leu/chainfire/supersu/SettingsFragment;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 11

    .line 0
    const/4 v0, 0x6

    new-array p1, v0, [Leu/chainfire/supersu/SettingsFragment$IconItem;

    .line 372
    new-instance v0, Leu/chainfire/supersu/SettingsFragment$IconItem;

    iget-object v1, p0, Leu/chainfire/supersu/SettingsFragment$6;->鷭:Leu/chainfire/supersu/SettingsFragment;

    const v2, 0x7f020064

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0900a1

    invoke-direct {v0, v1, v3, v2}, Leu/chainfire/supersu/SettingsFragment$IconItem;-><init>(Leu/chainfire/supersu/SettingsFragment;ILjava/lang/Integer;)V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 373
    new-instance v0, Leu/chainfire/supersu/SettingsFragment$IconItem;

    iget-object v1, p0, Leu/chainfire/supersu/SettingsFragment$6;->鷭:Leu/chainfire/supersu/SettingsFragment;

    const v2, 0x7f02005e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0900bc

    invoke-direct {v0, v1, v3, v2}, Leu/chainfire/supersu/SettingsFragment$IconItem;-><init>(Leu/chainfire/supersu/SettingsFragment;ILjava/lang/Integer;)V

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 374
    new-instance v0, Leu/chainfire/supersu/SettingsFragment$IconItem;

    iget-object v1, p0, Leu/chainfire/supersu/SettingsFragment$6;->鷭:Leu/chainfire/supersu/SettingsFragment;

    const v2, 0x7f02005f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0900a2

    invoke-direct {v0, v1, v3, v2}, Leu/chainfire/supersu/SettingsFragment$IconItem;-><init>(Leu/chainfire/supersu/SettingsFragment;ILjava/lang/Integer;)V

    const/4 v1, 0x2

    aput-object v0, p1, v1

    .line 375
    new-instance v0, Leu/chainfire/supersu/SettingsFragment$IconItem;

    iget-object v1, p0, Leu/chainfire/supersu/SettingsFragment$6;->鷭:Leu/chainfire/supersu/SettingsFragment;

    const v2, 0x7f02005c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0900a3

    invoke-direct {v0, v1, v3, v2}, Leu/chainfire/supersu/SettingsFragment$IconItem;-><init>(Leu/chainfire/supersu/SettingsFragment;ILjava/lang/Integer;)V

    const/4 v1, 0x3

    aput-object v0, p1, v1

    .line 376
    new-instance v0, Leu/chainfire/supersu/SettingsFragment$IconItem;

    iget-object v1, p0, Leu/chainfire/supersu/SettingsFragment$6;->鷭:Leu/chainfire/supersu/SettingsFragment;

    const v2, 0x7f020060

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0900a4

    invoke-direct {v0, v1, v3, v2}, Leu/chainfire/supersu/SettingsFragment$IconItem;-><init>(Leu/chainfire/supersu/SettingsFragment;ILjava/lang/Integer;)V

    const/4 v1, 0x4

    aput-object v0, p1, v1

    .line 377
    new-instance v0, Leu/chainfire/supersu/SettingsFragment$IconItem;

    iget-object v1, p0, Leu/chainfire/supersu/SettingsFragment$6;->鷭:Leu/chainfire/supersu/SettingsFragment;

    const v2, 0x7f02005d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0900a5

    invoke-direct {v0, v1, v3, v2}, Leu/chainfire/supersu/SettingsFragment$IconItem;-><init>(Leu/chainfire/supersu/SettingsFragment;ILjava/lang/Integer;)V

    const/4 v1, 0x5

    aput-object v0, p1, v1

    .line 371
    .line 380
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$6;->鷭:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x4240

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v9, v0

    .line 381
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$6;->鷭:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x4100

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v10, v0

    .line 383
    new-instance v0, Leu/chainfire/supersu/SettingsFragment$6$1;

    move-object v1, p0

    iget-object v2, v1, Leu/chainfire/supersu/SettingsFragment$6;->鷭:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v2}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object v5, p1

    move v7, v9

    move v8, v10

    const v3, 0x1090011

    const v4, 0x1020014

    move-object v6, v5

    invoke-direct/range {v0 .. v8}, Leu/chainfire/supersu/SettingsFragment$6$1;-><init>(Leu/chainfire/supersu/SettingsFragment$6;Landroid/support/v4/app/FragmentActivity;II[Leu/chainfire/supersu/SettingsFragment$IconItem;[Leu/chainfire/supersu/SettingsFragment$IconItem;II)V

    move-object p1, v0

    .line 404
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$6;->鷭:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->鷭(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 405
    const v1, 0x7f09009f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 406
    new-instance v1, Leu/chainfire/supersu/SettingsFragment$6$2;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/SettingsFragment$6$2;-><init>(Leu/chainfire/supersu/SettingsFragment$6;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 440
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 442
    const/4 v0, 0x0

    return v0
.end method
