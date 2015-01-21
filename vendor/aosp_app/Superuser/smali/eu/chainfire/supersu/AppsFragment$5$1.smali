.class Leu/chainfire/supersu/AppsFragment$5$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic 鷭:Leu/chainfire/supersu/AppsFragment$5;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/AppsFragment$5;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/AppsFragment$5$1;->鷭:Leu/chainfire/supersu/AppsFragment$5;

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$5$1;->鷭:Leu/chainfire/supersu/AppsFragment$5;

    invoke-static {v0}, Leu/chainfire/supersu/AppsFragment$5;->鷭(Leu/chainfire/supersu/AppsFragment$5;)Leu/chainfire/supersu/Logs;

    move-result-object v0

    sput-object v0, Leu/chainfire/supersu/Logs;->鷭:Leu/chainfire/supersu/Logs;

    .line 362
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$5$1;->鷭:Leu/chainfire/supersu/AppsFragment$5;

    invoke-static {v0}, Leu/chainfire/supersu/AppsFragment$5;->櫯(Leu/chainfire/supersu/AppsFragment$5;)Leu/chainfire/supersu/AppsFragment;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/supersu/AppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p3}, Leu/chainfire/supersu/LogDetailActivity;->鷭(Landroid/support/v4/app/FragmentActivity;I)V

    .line 363
    return-void
.end method
