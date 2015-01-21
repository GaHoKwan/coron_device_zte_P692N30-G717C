.class public Leu/chainfire/supersu/SpinnerHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field ˮ͈:Landroid/widget/AdapterView$OnItemSelectedListener;

.field 櫯:I

.field final 鷭:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Leu/chainfire/supersu/SpinnerHelper;->櫯:I

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/SpinnerHelper;->ˮ͈:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 77
    if-eqz p1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/Spinner;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Leu/chainfire/supersu/SpinnerHelper;->鷭:Landroid/widget/Spinner;

    .line 78
    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
        }
    .end annotation

    .line 0
    iget v0, p0, Leu/chainfire/supersu/SpinnerHelper;->櫯:I

    if-eq p3, v0, :cond_0

    .line 101
    iput p3, p0, Leu/chainfire/supersu/SpinnerHelper;->櫯:I

    .line 102
    iget-object v0, p0, Leu/chainfire/supersu/SpinnerHelper;->ˮ͈:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Leu/chainfire/supersu/SpinnerHelper;->ˮ͈:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 104
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 103
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 108
    :cond_0
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
    iget v0, p0, Leu/chainfire/supersu/SpinnerHelper;->櫯:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Leu/chainfire/supersu/SpinnerHelper;->櫯:I

    .line 113
    iget-object v0, p0, Leu/chainfire/supersu/SpinnerHelper;->ˮ͈:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Leu/chainfire/supersu/SpinnerHelper;->ˮ͈:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 114
    .line 115
    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    .line 119
    :cond_0
    return-void
.end method
