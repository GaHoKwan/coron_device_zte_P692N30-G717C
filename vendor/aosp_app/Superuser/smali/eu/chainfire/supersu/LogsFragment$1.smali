.class Leu/chainfire/supersu/LogsFragment$1;
.super Leu/chainfire/supersu/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leu/chainfire/supersu/AsyncTask<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;>;"
    }
.end annotation


# instance fields
.field private ą:Landroid/widget/ListAdapter;

.field private Ć:I

.field private ć:I

.field final synthetic 鷭:Leu/chainfire/supersu/LogsFragment;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/LogsFragment;)V
    .locals 1

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/LogsFragment$1;->鷭:Leu/chainfire/supersu/LogsFragment;

    .line 84
    invoke-direct {p0}, Leu/chainfire/supersu/AsyncTask;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/LogsFragment$1;->ą:Landroid/widget/ListAdapter;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/supersu/LogsFragment$1;->Ć:I

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/supersu/LogsFragment$1;->ć:I

    return-void
.end method

.method private varargs 鷭([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3

    .line 0
    :try_start_0
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 97
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/LogsFragment$1;->Ć:I

    .line 98
    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/LogsFragment$1;->ć:I

    .line 101
    :cond_0
    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment$1;->鷭:Leu/chainfire/supersu/LogsFragment;

    new-instance v1, Leu/chainfire/supersu/Logs;

    iget-object v2, p0, Leu/chainfire/supersu/LogsFragment$1;->鷭:Leu/chainfire/supersu/LogsFragment;

    invoke-virtual {v2}, Leu/chainfire/supersu/LogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Leu/chainfire/supersu/Logs;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Leu/chainfire/supersu/LogsFragment;->鷭(Leu/chainfire/supersu/LogsFragment;Leu/chainfire/supersu/Logs;)V

    .line 102
    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment$1;->鷭:Leu/chainfire/supersu/LogsFragment;

    iget-object v1, p0, Leu/chainfire/supersu/LogsFragment$1;->鷭:Leu/chainfire/supersu/LogsFragment;

    invoke-static {v1}, Leu/chainfire/supersu/LogsFragment;->鷭(Leu/chainfire/supersu/LogsFragment;)Leu/chainfire/supersu/Logs;

    move-result-object v1

    iget-object v1, v1, Leu/chainfire/supersu/Logs;->櫯:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Leu/chainfire/supersu/LogsFragment;->鷭(Leu/chainfire/supersu/LogsFragment;Ljava/util/ArrayList;)Leu/chainfire/supersu/Logs$LogArrayAdapter;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/LogsFragment$1;->ą:Landroid/widget/ListAdapter;

    .line 104
    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment$1;->鷭:Leu/chainfire/supersu/LogsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/LogsFragment;->櫯(Leu/chainfire/supersu/LogsFragment;)Leu/chainfire/supersu/Logs$Log;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment$1;->鷭:Leu/chainfire/supersu/LogsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/LogsFragment;->鷭(Leu/chainfire/supersu/LogsFragment;)Leu/chainfire/supersu/Logs;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment$1;->鷭:Leu/chainfire/supersu/LogsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/LogsFragment;->鷭(Leu/chainfire/supersu/LogsFragment;)Leu/chainfire/supersu/Logs;

    move-result-object v0

    iget-object v0, v0, Leu/chainfire/supersu/Logs;->櫯:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 105
    const/4 p1, 0x0

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment$1;->鷭:Leu/chainfire/supersu/LogsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/LogsFragment;->櫯(Leu/chainfire/supersu/LogsFragment;)Leu/chainfire/supersu/Logs$Log;

    move-result-object v0

    iget-object v0, v0, Leu/chainfire/supersu/Logs$Log;->櫯:Ljava/lang/String;

    iget-object v1, p0, Leu/chainfire/supersu/LogsFragment$1;->鷭:Leu/chainfire/supersu/LogsFragment;

    invoke-static {v1}, Leu/chainfire/supersu/LogsFragment;->鷭(Leu/chainfire/supersu/LogsFragment;)Leu/chainfire/supersu/Logs;

    move-result-object v1

    iget-object v1, v1, Leu/chainfire/supersu/Logs;->櫯:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu/chainfire/supersu/Logs$Log;

    iget-object v1, v1, Leu/chainfire/supersu/Logs$Log;->櫯:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 105
    :cond_2
    :try_start_1
    add-int/lit8 p1, p1, 0x1

    :goto_0
    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment$1;->鷭:Leu/chainfire/supersu/LogsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/LogsFragment;->鷭(Leu/chainfire/supersu/LogsFragment;)Leu/chainfire/supersu/Logs;

    move-result-object v0

    iget-object v0, v0, Leu/chainfire/supersu/Logs;->櫯:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 112
    :cond_3
    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment$1;->鷭:Leu/chainfire/supersu/LogsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/LogsFragment;->鷭(Leu/chainfire/supersu/LogsFragment;)Leu/chainfire/supersu/Logs;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment$1;->鷭:Leu/chainfire/supersu/LogsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/LogsFragment;->鷭(Leu/chainfire/supersu/LogsFragment;)Leu/chainfire/supersu/Logs;

    move-result-object v0

    iget-object v0, v0, Leu/chainfire/supersu/Logs;->櫯:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment$1;->鷭:Leu/chainfire/supersu/LogsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/LogsFragment;->鷭(Leu/chainfire/supersu/LogsFragment;)Leu/chainfire/supersu/Logs;

    move-result-object v0

    iget-object v0, v0, Leu/chainfire/supersu/Logs;->櫯:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 113
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 115
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    :cond_4
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final bridge varargs synthetic 鷭([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Integer;

    invoke-direct {p0, v0}, Leu/chainfire/supersu/LogsFragment$1;->鷭([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final 鷭()V
    .locals 0

    .line 0
    return-void
.end method

.method protected final synthetic 鷭(Ljava/lang/Object;)V
    .locals 4

    .line 0
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    move-object p1, p0

    :try_start_0
    iget-object v0, p1, Leu/chainfire/supersu/LogsFragment$1;->鷭:Leu/chainfire/supersu/LogsFragment;

    iget-object v1, p1, Leu/chainfire/supersu/LogsFragment$1;->ą:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/LogsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p1, Leu/chainfire/supersu/LogsFragment$1;->鷭:Leu/chainfire/supersu/LogsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/LogsFragment;->setListShown(Z)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p1, Leu/chainfire/supersu/LogsFragment$1;->鷭:Leu/chainfire/supersu/LogsFragment;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/LogsFragment;->鷭(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p1, Leu/chainfire/supersu/LogsFragment$1;->鷭:Leu/chainfire/supersu/LogsFragment;

    invoke-virtual {v0}, Leu/chainfire/supersu/LogsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p1, Leu/chainfire/supersu/LogsFragment$1;->Ć:I

    iget v2, p1, Leu/chainfire/supersu/LogsFragment$1;->ć:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Leu/chainfire/supersu/LogsFragment$1;->鷭:Leu/chainfire/supersu/LogsFragment;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/LogsFragment;->鷭(I)V

    :cond_1
    :goto_0
    iget-object v0, p1, Leu/chainfire/supersu/LogsFragment$1;->鷭:Leu/chainfire/supersu/LogsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/LogsFragment;->ˮ͈(Leu/chainfire/supersu/LogsFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
