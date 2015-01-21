.class public Lcom/mediatek/gallery3d/util/RotateProgressFragment;
.super Landroid/app/DialogFragment;
.source "RotateProgressFragment.java"


# instance fields
.field private mTitleID:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "titleID"

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 28
    iput p1, p0, Lcom/mediatek/gallery3d/util/RotateProgressFragment;->mTitleID:I

    .line 29
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 35
    .local v2, wind:Landroid/view/Window;
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 37
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    const v3, 0x7f04006a

    invoke-virtual {p1, v3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 40
    .local v1, view:Landroid/view/View;
    const v3, 0x7f0b0135

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object v0, v3

    check-cast v0, Landroid/widget/TextView;

    .line 41
    .local v0, rotateDialogText:Landroid/widget/TextView;
    iget v3, p0, Lcom/mediatek/gallery3d/util/RotateProgressFragment;->mTitleID:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 43
    return-object v1
.end method
