.class public Lcom/android/camera/ui/ModePickerFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ModePickerFrameLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MPFrameLayout"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 20
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 21
    const v2, 0x7f0b0086

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 22
    .local v0, background:Landroid/view/View;
    const v2, 0x7f0b0087

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/ModePickerScrollable;

    .line 23
    .local v1, scroller:Lcom/android/camera/ui/ModePickerScrollable;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 24
    invoke-interface {v1, v0}, Lcom/android/camera/ui/ModePickerScrollable;->setBackgroundView(Landroid/view/View;)V

    .line 26
    :cond_0
    return-void
.end method
