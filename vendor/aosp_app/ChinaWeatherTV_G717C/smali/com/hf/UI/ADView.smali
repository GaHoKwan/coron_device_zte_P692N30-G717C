.class public Lcom/hf/UI/ADView;
.super Landroid/widget/ImageView;
.source "ADView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "context"
    .parameter "stream"

    .prologue
    const/4 v1, -0x1

    .line 13
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/hf/UI/ADView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    invoke-virtual {p0, p2}, Lcom/hf/UI/ADView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    return-void
.end method
