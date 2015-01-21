.class Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;
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
.field private final synthetic 櫯:Landroid/app/Activity;

.field final synthetic 鷭:Leu/chainfire/supersu/AppDetailActivity$UIHandler;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/AppDetailActivity$UIHandler;Landroid/app/Activity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;->鷭:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    iput-object p2, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;->櫯:Landroid/app/Activity;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;)Leu/chainfire/supersu/AppDetailActivity$UIHandler;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;->鷭:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    return-object v0
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;->鷭:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->鷭(Leu/chainfire/supersu/AppDetailActivity$UIHandler;J)V

    .line 94
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;->鷭:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    invoke-static {v0}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->鷭(Leu/chainfire/supersu/AppDetailActivity$UIHandler;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    const/4 v0, 0x4

    if-ne p3, v0, :cond_2

    .line 95
    :cond_0
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;->櫯:Landroid/app/Activity;

    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;->櫯:Landroid/app/Activity;

    const v2, 0x7f09000c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;->櫯:Landroid/app/Activity;

    const v2, 0x7f09000d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1$1;

    invoke-direct {v2, p0}, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1$1;-><init>(Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;)V

    .line 100
    new-instance v3, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1$2;

    invoke-direct {v3, p0}, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1$2;-><init>(Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;)V

    .line 95
    invoke-static {v0, v1, v2, v3}, Leu/chainfire/supersu/Constants;->鷭(Landroid/app/Activity;Ljava/lang/String;Leu/chainfire/supersu/Constants$OnExpireTimeSelected;Ljava/lang/Runnable;)V

    .line 106
    goto :goto_1

    :cond_2
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;->鷭:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    invoke-static {v0}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->鷭(Leu/chainfire/supersu/AppDetailActivity$UIHandler;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    if-ne p3, v0, :cond_3

    .line 107
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;->櫯:Landroid/app/Activity;

    const/4 v1, 0x0

    const/16 v2, 0x1101

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Leu/chainfire/supersu/PINActivity;->鷭(Landroid/app/Activity;ZIZ)V

    .line 110
    :cond_3
    :goto_1
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;->鷭:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->鷭(Z)V

    .line 111
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/widget/AdapterView<*>;)V"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;->鷭:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->鷭(Leu/chainfire/supersu/AppDetailActivity$UIHandler;J)V

    .line 117
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;->鷭:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->鷭(Z)V

    .line 118
    return-void
.end method
