.class Leu/chainfire/supersu/AppDetailActivity$1;
.super Leu/chainfire/supersu/AppDetailActivity$UIHandler;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic 鷭:Leu/chainfire/supersu/AppDetailActivity;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/AppDetailActivity;Leu/chainfire/supersu/AppDetailActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/AppDetailActivity$1;->鷭:Leu/chainfire/supersu/AppDetailActivity;

    .line 440
    invoke-direct {p0, p2, p3}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final 鷭()V
    .locals 2

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$1;->鷭:Leu/chainfire/supersu/AppDetailActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/AppDetailActivity;->setResult(I)V

    .line 452
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$1;->鷭:Leu/chainfire/supersu/AppDetailActivity;

    invoke-virtual {v0}, Leu/chainfire/supersu/AppDetailActivity;->finish()V

    .line 453
    return-void
.end method

.method public final 鷭(Z)V
    .locals 3

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$1;->鷭:Leu/chainfire/supersu/AppDetailActivity;

    const v1, 0x7f040023

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    move-object v2, v0

    .line 444
    if-eqz v2, :cond_0

    .line 445
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 447
    :cond_0
    return-void
.end method
