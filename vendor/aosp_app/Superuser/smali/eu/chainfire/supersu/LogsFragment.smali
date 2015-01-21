.class public Leu/chainfire/supersu/LogsFragment;
.super Lo/囃;
.source ""


# instance fields
.field private Ą:Z

.field private ą:Leu/chainfire/supersu/Logs$Log;

.field private ȃ:Landroid/view/View;

.field private ˮ͈:Landroid/view/View;

.field private 櫯:Z

.field private 鷭:Leu/chainfire/supersu/Logs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Lo/囃;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/LogsFragment;->鷭:Leu/chainfire/supersu/Logs;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/LogsFragment;->櫯:Z

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/LogsFragment;->Ą:Z

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/LogsFragment;->ą:Leu/chainfire/supersu/Logs$Log;

    .line 17
    return-void
.end method

.method static synthetic ˮ͈(Leu/chainfire/supersu/LogsFragment;)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/supersu/LogsFragment;->櫯:Z

    return-void
.end method

.method static synthetic 櫯(Leu/chainfire/supersu/LogsFragment;)Leu/chainfire/supersu/Logs$Log;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->ą:Leu/chainfire/supersu/Logs$Log;

    return-object v0
.end method

.method private 櫯()V
    .locals 3

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->ȃ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 186
    iget-boolean v0, p0, Leu/chainfire/supersu/LogsFragment;->Ą:Z

    if-eqz v0, :cond_2

    .line 187
    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/MainActivity;

    iget-boolean v0, v0, Leu/chainfire/supersu/MainActivity;->鷭:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->鷭:Leu/chainfire/supersu/Logs;

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->鷭:Leu/chainfire/supersu/Logs;

    iget-object v0, v0, Leu/chainfire/supersu/Logs;->櫯:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->鷭:Leu/chainfire/supersu/Logs;

    iget-object v0, v0, Leu/chainfire/supersu/Logs;->櫯:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 188
    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Logs$LogArrayAdapter;

    iget v0, v0, Leu/chainfire/supersu/Logs$LogArrayAdapter;->鷭:I

    if-ltz v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    .line 189
    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    .line 192
    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    .line 186
    .line 197
    :goto_0
    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->ȃ:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 199
    if-eqz v1, :cond_3

    if-nez v2, :cond_3

    .line 200
    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Logs$LogArrayAdapter;

    iget v0, v0, Leu/chainfire/supersu/Logs$LogArrayAdapter;->鷭:I

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/LogsFragment;->鷭(I)V

    .line 202
    :cond_3
    return-void
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/LogsFragment;Ljava/util/ArrayList;)Leu/chainfire/supersu/Logs$LogArrayAdapter;
    .locals 1

    .line 0
    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Leu/chainfire/supersu/Logs;->鷭(Landroid/support/v4/app/FragmentActivity;Ljava/util/ArrayList;)Leu/chainfire/supersu/Logs$LogArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/LogsFragment;)Leu/chainfire/supersu/Logs;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->鷭:Leu/chainfire/supersu/Logs;

    return-object v0
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/LogsFragment;Leu/chainfire/supersu/Logs;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/LogsFragment;->鷭:Leu/chainfire/supersu/Logs;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 0
    invoke-super {p0, p1}, Lo/囃;->onActivityCreated(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/LogsFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 50
    const/4 v0, 0x0

    new-array v2, v0, [Ljava/lang/Integer;

    move-object p1, p0

    iget-boolean v0, p0, Leu/chainfire/supersu/LogsFragment;->櫯:Z

    if-nez v0, :cond_0

    new-instance v0, Leu/chainfire/supersu/LogsFragment$1;

    invoke-direct {v0, p1}, Leu/chainfire/supersu/LogsFragment$1;-><init>(Leu/chainfire/supersu/LogsFragment;)V

    sget-object v1, Leu/chainfire/supersu/AsyncTask;->ˮ͈:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Leu/chainfire/supersu/LogsFragment$1;->鷭(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;

    .line 51
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 0
    :try_start_0
    invoke-direct {p0}, Leu/chainfire/supersu/LogsFragment;->櫯()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    return-void

    .line 182
    :catch_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 0
    const v0, 0x7f030019

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/LogsFragment;->ˮ͈:Landroid/view/View;

    .line 148
    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->ˮ͈:Landroid/view/View;

    const v1, 0x7f040024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0xff0002

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 149
    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->ˮ͈:Landroid/view/View;

    const v1, 0x7f040025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0xff0003

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 150
    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->ˮ͈:Landroid/view/View;

    const v1, 0x7f040026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0xff0001

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 151
    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->ˮ͈:Landroid/view/View;

    const v1, 0x7f040027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/LogsFragment;->ȃ:Landroid/view/View;

    .line 153
    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->ˮ͈:Landroid/view/View;

    const v1, 0x7f04003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Leu/chainfire/supersu/LogsFragment$2;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/LogsFragment$2;-><init>(Leu/chainfire/supersu/LogsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->ˮ͈:Landroid/view/View;

    const v1, 0x7f04003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Leu/chainfire/supersu/LogsFragment$3;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/LogsFragment$3;-><init>(Leu/chainfire/supersu/LogsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->ˮ͈:Landroid/view/View;

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->鷭:Leu/chainfire/supersu/Logs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->鷭:Leu/chainfire/supersu/Logs;

    iget-object v0, v0, Leu/chainfire/supersu/Logs;->櫯:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 62
    :cond_1
    if-ltz p3, :cond_2

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->鷭:Leu/chainfire/supersu/Logs;

    iget-object v0, v0, Leu/chainfire/supersu/Logs;->櫯:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_2

    .line 63
    invoke-virtual {p0, p3}, Leu/chainfire/supersu/LogsFragment;->鷭(I)V

    .line 65
    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/MainActivity;

    iget-boolean v0, v0, Leu/chainfire/supersu/MainActivity;->鷭:Z

    if-nez v0, :cond_2

    .line 66
    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->鷭:Leu/chainfire/supersu/Logs;

    sput-object v0, Leu/chainfire/supersu/Logs;->鷭:Leu/chainfire/supersu/Logs;

    .line 67
    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p3}, Leu/chainfire/supersu/LogDetailActivity;->鷭(Landroid/support/v4/app/FragmentActivity;I)V

    .line 70
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 0
    invoke-super {p0}, Lo/囃;->onResume()V

    .line 41
    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 42
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-super {p0, p1, p2}, Lo/囃;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 56
    return-void
.end method

.method public setListShown(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Leu/chainfire/supersu/LogsFragment;->Ą:Z

    .line 172
    invoke-super {p0, p1}, Lo/囃;->setListShown(Z)V

    .line 173
    invoke-direct {p0}, Leu/chainfire/supersu/LogsFragment;->櫯()V

    .line 174
    return-void
.end method

.method public final 鷭()V
    .locals 5

    .line 0
    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    .line 74
    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 75
    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    .line 77
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/LogsFragment;->setListShown(Z)V

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    move-object v4, v0

    move-object v3, p0

    new-instance v0, Leu/chainfire/supersu/LogsFragment$1;

    invoke-direct {v0, v3}, Leu/chainfire/supersu/LogsFragment$1;-><init>(Leu/chainfire/supersu/LogsFragment;)V

    sget-object v1, Leu/chainfire/supersu/AsyncTask;->ˮ͈:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v4}, Leu/chainfire/supersu/LogsFragment$1;->鷭(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;

    .line 79
    return-void
.end method

.method public final 鷭(I)V
    .locals 4

    .line 0
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/LogsFragment;->ą:Leu/chainfire/supersu/Logs$Log;

    .line 211
    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Logs$LogArrayAdapter;

    move-object v3, v0

    iput p1, v3, Leu/chainfire/supersu/Logs$LogArrayAdapter;->鷭:I

    invoke-virtual {v3}, Leu/chainfire/supersu/Logs$LogArrayAdapter;->notifyDataSetChanged()V

    .line 212
    invoke-direct {p0}, Leu/chainfire/supersu/LogsFragment;->櫯()V

    .line 213
    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->鷭:Leu/chainfire/supersu/Logs;

    if-eqz v0, :cond_2

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->鷭:Leu/chainfire/supersu/Logs;

    iget-object v0, v0, Leu/chainfire/supersu/Logs;->櫯:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->鷭:Leu/chainfire/supersu/Logs;

    iget-object v0, v0, Leu/chainfire/supersu/Logs;->櫯:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 214
    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ge p1, v0, :cond_0

    .line 215
    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 216
    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 217
    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v3, v0, v1

    .line 218
    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sub-int v1, p1, v3

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 221
    :cond_1
    :goto_0
    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->鷭:Leu/chainfire/supersu/Logs;

    iget-object v0, v0, Leu/chainfire/supersu/Logs;->櫯:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Logs$Log;

    iput-object v0, p0, Leu/chainfire/supersu/LogsFragment;->ą:Leu/chainfire/supersu/Logs$Log;

    .line 222
    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/supersu/LogsFragment;->鷭:Leu/chainfire/supersu/Logs;

    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Leu/chainfire/supersu/Logs;->鷭(Landroid/support/v4/app/FragmentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Leu/chainfire/supersu/LogDetailActivity;->鷭(Landroid/app/Activity;Leu/chainfire/supersu/Logs;ILjava/lang/String;)V

    .line 224
    :cond_2
    return-void
.end method
