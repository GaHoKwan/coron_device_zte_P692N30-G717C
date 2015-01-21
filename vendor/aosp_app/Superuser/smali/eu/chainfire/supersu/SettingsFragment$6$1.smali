.class Leu/chainfire/supersu/SettingsFragment$6$1;
.super Landroid/widget/ArrayAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<Leu/chainfire/supersu/SettingsFragment$IconItem;>;"
    }
.end annotation


# instance fields
.field private final synthetic ȃ:I

.field private final synthetic ˮ͈:I

.field private final synthetic 櫯:[Leu/chainfire/supersu/SettingsFragment$IconItem;

.field final synthetic 鷭:Leu/chainfire/supersu/SettingsFragment$6;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/SettingsFragment$6;Landroid/support/v4/app/FragmentActivity;II[Leu/chainfire/supersu/SettingsFragment$IconItem;[Leu/chainfire/supersu/SettingsFragment$IconItem;II)V
    .locals 2

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/SettingsFragment$6$1;->鷭:Leu/chainfire/supersu/SettingsFragment$6;

    iput-object p6, p0, Leu/chainfire/supersu/SettingsFragment$6$1;->櫯:[Leu/chainfire/supersu/SettingsFragment$IconItem;

    iput p7, p0, Leu/chainfire/supersu/SettingsFragment$6$1;->ˮ͈:I

    iput p8, p0, Leu/chainfire/supersu/SettingsFragment$6$1;->ȃ:I

    .line 383
    const v0, 0x1090011

    const v1, 0x1020014

    invoke-direct {p0, p2, v0, v1, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 387
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object p3, v0

    .line 390
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 391
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$6$1;->鷭:Leu/chainfire/supersu/SettingsFragment$6;

    invoke-static {v0}, Leu/chainfire/supersu/SettingsFragment$6;->鷭(Leu/chainfire/supersu/SettingsFragment$6;)Leu/chainfire/supersu/SettingsFragment;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/supersu/SettingsFragment$6$1;->櫯:[Leu/chainfire/supersu/SettingsFragment$IconItem;

    aget-object v1, v1, p1

    iget v1, v1, Leu/chainfire/supersu/SettingsFragment$IconItem;->櫯:I

    const/16 v2, 0x140

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 392
    goto :goto_0

    .line 393
    :cond_0
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$6$1;->鷭:Leu/chainfire/supersu/SettingsFragment$6;

    invoke-static {v0}, Leu/chainfire/supersu/SettingsFragment$6;->鷭(Leu/chainfire/supersu/SettingsFragment$6;)Leu/chainfire/supersu/SettingsFragment;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/supersu/SettingsFragment$6$1;->櫯:[Leu/chainfire/supersu/SettingsFragment$IconItem;

    aget-object v1, v1, p1

    iget v1, v1, Leu/chainfire/supersu/SettingsFragment$IconItem;->櫯:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 395
    :goto_0
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 396
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Leu/chainfire/supersu/SettingsFragment$6$1;->鷭:Leu/chainfire/supersu/SettingsFragment$6;

    invoke-static {v1}, Leu/chainfire/supersu/SettingsFragment$6;->鷭(Leu/chainfire/supersu/SettingsFragment$6;)Leu/chainfire/supersu/SettingsFragment;

    move-result-object v1

    invoke-virtual {v1}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Leu/chainfire/supersu/SettingsFragment$6$1;->ˮ͈:I

    iget v3, p0, Leu/chainfire/supersu/SettingsFragment$6$1;->ˮ͈:I

    const/4 v4, 0x1

    invoke-static {p1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object p1, v0

    .line 398
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p3, p1, v0, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 399
    iget v0, p0, Leu/chainfire/supersu/SettingsFragment$6$1;->ȃ:I

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 400
    return-object p2
.end method
