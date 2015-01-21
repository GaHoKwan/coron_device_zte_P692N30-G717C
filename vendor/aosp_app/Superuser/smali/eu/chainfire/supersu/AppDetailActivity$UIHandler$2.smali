.class Leu/chainfire/supersu/AppDetailActivity$UIHandler$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic 鷭:Leu/chainfire/supersu/AppDetailActivity$UIHandler;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/AppDetailActivity$UIHandler;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$2;->鷭:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$2;->鷭:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->鷭(Z)V

    .line 150
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/widget/AdapterView<*>;)V"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$2;->鷭:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->鷭(Z)V

    .line 155
    return-void
.end method
