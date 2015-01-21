.class Leu/chainfire/supersu/AppsFragment$4;
.super Leu/chainfire/supersu/AppDetailActivity$UIHandler;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic 鷭:Leu/chainfire/supersu/AppsFragment;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/AppsFragment;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/AppsFragment$4;->鷭:Leu/chainfire/supersu/AppsFragment;

    .line 310
    invoke-direct {p0, p2, p3}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final 鷭()V
    .locals 0

    .line 0
    return-void
.end method

.method public final 鷭(Z)V
    .locals 3

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$4;->鷭:Leu/chainfire/supersu/AppsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/AppsFragment;->ą(Leu/chainfire/supersu/AppsFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$4;->鷭:Leu/chainfire/supersu/AppsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/AppsFragment;->ą(Leu/chainfire/supersu/AppsFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f040023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    move-object v2, v0

    .line 315
    if-eqz v2, :cond_0

    .line 316
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 319
    :cond_0
    return-void
.end method
