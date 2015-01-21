.class Leu/chainfire/supersu/LogsFragment$3;
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
.field final synthetic 鷭:Leu/chainfire/supersu/LogsFragment;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/LogsFragment;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/LogsFragment$3;->鷭:Leu/chainfire/supersu/LogsFragment;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment$3;->鷭:Leu/chainfire/supersu/LogsFragment;

    iget-object v1, p0, Leu/chainfire/supersu/LogsFragment$3;->鷭:Leu/chainfire/supersu/LogsFragment;

    invoke-virtual {v1}, Leu/chainfire/supersu/LogsFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Leu/chainfire/supersu/Logs$LogArrayAdapter;

    iget v1, v1, Leu/chainfire/supersu/Logs$LogArrayAdapter;->鷭:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/LogsFragment;->鷭(I)V

    .line 163
    return-void
.end method
