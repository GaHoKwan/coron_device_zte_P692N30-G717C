.class Leu/chainfire/supersu/AppsFragment$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic 鷭:Leu/chainfire/supersu/AppsFragment;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/AppsFragment;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/AppsFragment$3;->鷭:Leu/chainfire/supersu/AppsFragment;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$3;->鷭:Leu/chainfire/supersu/AppsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/AppsFragment;->Ą(Leu/chainfire/supersu/AppsFragment;)Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$3;->鷭:Leu/chainfire/supersu/AppsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/AppsFragment;->Ą(Leu/chainfire/supersu/AppsFragment;)Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->櫯()V

    .line 240
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$3;->鷭:Leu/chainfire/supersu/AppsFragment;

    const/16 v1, 0x1100

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Leu/chainfire/supersu/AppsFragment;->鷭(IILandroid/content/Intent;)V

    .line 241
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$3;->鷭:Leu/chainfire/supersu/AppsFragment;

    iget-object v1, p0, Leu/chainfire/supersu/AppsFragment$3;->鷭:Leu/chainfire/supersu/AppsFragment;

    invoke-virtual {v1}, Leu/chainfire/supersu/AppsFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;

    iget v1, v1, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;->鷭:I

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/AppsFragment;->鷭(I)V

    .line 243
    :cond_0
    return-void
.end method
