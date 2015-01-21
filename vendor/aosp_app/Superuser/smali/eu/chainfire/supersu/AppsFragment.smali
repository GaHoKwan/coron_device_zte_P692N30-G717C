.class public Leu/chainfire/supersu/AppsFragment;
.super Lo/囃;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;
    }
.end annotation


# instance fields
.field private Ą:Landroid/view/View;

.field private ą:Landroid/view/View;

.field private Ć:Z

.field private ć:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

.field private ȃ:Z

.field private ˮ͈:Leu/chainfire/supersu/Settings$App;

.field private ˮ͍:Leu/chainfire/supersu/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leu/chainfire/supersu/AsyncTask<Landroid/view/View;Ljava/lang/Void;Landroid/widget/ListAdapter;>;"
        }
    .end annotation
.end field

.field private 櫯:[Leu/chainfire/supersu/Settings$App;

.field private 鷭:Leu/chainfire/supersu/Settings;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Lo/囃;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->鷭:Leu/chainfire/supersu/Settings;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->櫯:[Leu/chainfire/supersu/Settings$App;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->ˮ͈:Leu/chainfire/supersu/Settings$App;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/AppsFragment;->ȃ:Z

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/AppsFragment;->Ć:Z

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->ć:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->ˮ͍:Leu/chainfire/supersu/AsyncTask;

    .line 22
    return-void
.end method

.method static synthetic Ą(Leu/chainfire/supersu/AppsFragment;)Leu/chainfire/supersu/AppDetailActivity$UIHandler;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->ć:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    return-object v0
.end method

.method static synthetic ą(Leu/chainfire/supersu/AppsFragment;)Landroid/view/View;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->Ą:Landroid/view/View;

    return-object v0
.end method

.method static synthetic ȃ(Leu/chainfire/supersu/AppsFragment;)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/supersu/AppsFragment;->ȃ:Z

    return-void
.end method

.method static synthetic ˮ͈(Leu/chainfire/supersu/AppsFragment;)[Leu/chainfire/supersu/Settings$App;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->櫯:[Leu/chainfire/supersu/Settings$App;

    return-object v0
.end method

.method static synthetic 櫯(Leu/chainfire/supersu/AppsFragment;)Leu/chainfire/supersu/Settings$App;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->ˮ͈:Leu/chainfire/supersu/Settings$App;

    return-object v0
.end method

.method private 櫯()V
    .locals 3

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->ą:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->ą:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 264
    iget-boolean v0, p0, Leu/chainfire/supersu/AppsFragment;->Ć:Z

    if-eqz v0, :cond_3

    .line 265
    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/MainActivity;

    iget-boolean v0, v0, Leu/chainfire/supersu/MainActivity;->鷭:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->櫯:[Leu/chainfire/supersu/Settings$App;

    if-eqz v0, :cond_2

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->櫯:[Leu/chainfire/supersu/Settings$App;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 266
    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;

    iget v0, v0, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;->鷭:I

    if-ltz v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    .line 267
    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    .line 270
    goto :goto_0

    :cond_3
    const/16 v2, 0x8

    .line 264
    .line 275
    :goto_0
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->ą:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 277
    if-eqz v1, :cond_4

    if-nez v2, :cond_4

    .line 278
    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;

    iget v0, v0, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;->鷭:I

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppsFragment;->鷭(I)V

    .line 280
    :cond_4
    return-void
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/AppsFragment;)Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;
    .locals 7

    .line 0
    iget-object v4, p0, Leu/chainfire/supersu/AppsFragment;->鷭:Leu/chainfire/supersu/Settings;

    iget-object v0, v4, Leu/chainfire/supersu/Settings;->ˮ͈:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    goto :goto_0

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Settings$App;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->鷭()V

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v4, Leu/chainfire/supersu/Settings;->ˮ͈:Ljava/util/ArrayList;

    new-instance v1, Leu/chainfire/supersu/Settings$1;

    invoke-direct {v1, v4}, Leu/chainfire/supersu/Settings$1;-><init>(Leu/chainfire/supersu/Settings;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, v4, Leu/chainfire/supersu/Settings;->ˮ͈:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v5, v0, [Leu/chainfire/supersu/Settings$App;

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, v4, Leu/chainfire/supersu/Settings;->ˮ͈:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Settings$App;

    aput-object v0, v5, v6

    add-int/lit8 v6, v6, 0x1

    :goto_1
    iget-object v0, v4, Leu/chainfire/supersu/Settings;->ˮ͈:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v6, v0, :cond_1

    iput-object v5, p0, Leu/chainfire/supersu/AppsFragment;->櫯:[Leu/chainfire/supersu/Settings$App;

    new-instance v0, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;

    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Leu/chainfire/supersu/AppsFragment;->櫯:[Leu/chainfire/supersu/Settings$App;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;-><init>(Leu/chainfire/supersu/AppsFragment;Landroid/support/v4/app/FragmentActivity;I[Leu/chainfire/supersu/Settings$App;)V

    return-object v0
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/AppsFragment;Leu/chainfire/supersu/Settings;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/AppsFragment;->鷭:Leu/chainfire/supersu/Settings;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 0
    invoke-super {p0, p1}, Lo/囃;->onActivityCreated(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppsFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 106
    const/4 v0, 0x0

    new-array v2, v0, [Ljava/lang/Integer;

    move-object p1, p0

    new-instance v0, Leu/chainfire/supersu/AppsFragment$1;

    invoke-direct {v0, p1}, Leu/chainfire/supersu/AppsFragment$1;-><init>(Leu/chainfire/supersu/AppsFragment;)V

    sget-object v1, Leu/chainfire/supersu/AsyncTask;->ˮ͈:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Leu/chainfire/supersu/AppsFragment$1;->鷭(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;

    .line 107
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Leu/chainfire/supersu/AppsFragment;->櫯()V

    .line 258
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 0
    const v0, 0x7f030011

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->Ą:Landroid/view/View;

    .line 221
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->Ą:Landroid/view/View;

    const v1, 0x7f040024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0xff0002

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 222
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->Ą:Landroid/view/View;

    const v1, 0x7f040025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0xff0003

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 223
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->Ą:Landroid/view/View;

    const v1, 0x7f040026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0xff0001

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 224
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->Ą:Landroid/view/View;

    const v1, 0x7f040027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->ą:Landroid/view/View;

    .line 226
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->Ą:Landroid/view/View;

    const v1, 0x7f040029

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Leu/chainfire/supersu/AppsFragment$2;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/AppsFragment$2;-><init>(Leu/chainfire/supersu/AppsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->Ą:Landroid/view/View;

    const v1, 0x7f040023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Leu/chainfire/supersu/AppsFragment$3;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/AppsFragment$3;-><init>(Leu/chainfire/supersu/AppsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->Ą:Landroid/view/View;

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->鷭:Leu/chainfire/supersu/Settings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->櫯:[Leu/chainfire/supersu/Settings$App;

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 113
    :cond_1
    if-ltz p3, :cond_2

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->櫯:[Leu/chainfire/supersu/Settings$App;

    array-length v0, v0

    if-ge p3, v0, :cond_2

    .line 114
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->櫯:[Leu/chainfire/supersu/Settings$App;

    aget-object v0, v0, p3

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->ˮ͈:Leu/chainfire/supersu/Settings$App;

    .line 115
    invoke-virtual {p0, p3}, Leu/chainfire/supersu/AppsFragment;->鷭(I)V

    .line 116
    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/MainActivity;

    iget-boolean v0, v0, Leu/chainfire/supersu/MainActivity;->鷭:Z

    if-nez v0, :cond_2

    .line 117
    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/supersu/AppsFragment;->櫯:[Leu/chainfire/supersu/Settings$App;

    aget-object v1, v1, p3

    iget-object v1, v1, Leu/chainfire/supersu/Settings$App;->ˮ͈:Ljava/lang/String;

    invoke-static {v0, v1}, Leu/chainfire/supersu/AppDetailActivity;->鷭(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    .line 120
    :cond_2
    return-void
.end method

.method public setListShown(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Leu/chainfire/supersu/AppsFragment;->Ć:Z

    .line 252
    invoke-super {p0, p1}, Lo/囃;->setListShown(Z)V

    .line 253
    invoke-direct {p0}, Leu/chainfire/supersu/AppsFragment;->櫯()V

    .line 254
    return-void
.end method

.method public final 鷭()V
    .locals 5

    .line 0
    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    .line 149
    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 150
    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    .line 152
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppsFragment;->setListShown(Z)V

    .line 153
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

    new-instance v0, Leu/chainfire/supersu/AppsFragment$1;

    invoke-direct {v0, v3}, Leu/chainfire/supersu/AppsFragment$1;-><init>(Leu/chainfire/supersu/AppsFragment;)V

    sget-object v1, Leu/chainfire/supersu/AsyncTask;->ˮ͈:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v4}, Leu/chainfire/supersu/AppsFragment$1;->鷭(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;

    .line 154
    return-void
.end method

.method public final 鷭(I)V
    .locals 4

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->ˮ͍:Leu/chainfire/supersu/AsyncTask;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->ˮ͍:Leu/chainfire/supersu/AsyncTask;

    iget-object v0, v0, Leu/chainfire/supersu/AsyncTask;->Ą:Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->ˮ͍:Leu/chainfire/supersu/AsyncTask;

    .line 291
    :cond_0
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->ć:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->ć:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    invoke-virtual {v0}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ˮ͈()V

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->ć:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    .line 295
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->ˮ͈:Leu/chainfire/supersu/Settings$App;

    .line 297
    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;

    move-object v3, v0

    iput p1, v3, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;->鷭:I

    invoke-virtual {v3}, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;->notifyDataSetChanged()V

    .line 298
    invoke-direct {p0}, Leu/chainfire/supersu/AppsFragment;->櫯()V

    .line 299
    if-ltz p1, :cond_5

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->櫯:[Leu/chainfire/supersu/Settings$App;

    array-length v0, v0

    if-ge p1, v0, :cond_5

    .line 300
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->櫯:[Leu/chainfire/supersu/Settings$App;

    aget-object v0, v0, p1

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->ˮ͈:Leu/chainfire/supersu/Settings$App;

    .line 302
    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ge p1, v0, :cond_2

    .line 303
    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 304
    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_3

    .line 305
    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v3, v0, v1

    .line 306
    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sub-int v1, p1, v3

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 309
    :cond_3
    :goto_0
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->ą:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 310
    new-instance v0, Leu/chainfire/supersu/AppsFragment$4;

    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Leu/chainfire/supersu/AppsFragment;->ˮ͈:Leu/chainfire/supersu/Settings$App;

    iget-object v2, v2, Leu/chainfire/supersu/Settings$App;->ˮ͈:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Leu/chainfire/supersu/AppsFragment$4;-><init>(Leu/chainfire/supersu/AppsFragment;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->ć:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    .line 327
    :cond_4
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->Ą:Landroid/view/View;

    const v1, 0x7f04002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    move-object v3, v0

    .line 328
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 329
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 330
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->Ą:Landroid/view/View;

    const v1, 0x7f04002b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 331
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 333
    new-instance v0, Leu/chainfire/supersu/AppsFragment$5;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/AppsFragment$5;-><init>(Leu/chainfire/supersu/AppsFragment;)V

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->ˮ͍:Leu/chainfire/supersu/AsyncTask;

    .line 379
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->ˮ͍:Leu/chainfire/supersu/AsyncTask;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    move-object p1, v1

    sget-object v1, Leu/chainfire/supersu/AsyncTask;->ȃ:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p1}, Leu/chainfire/supersu/AsyncTask;->鷭(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;

    .line 381
    :cond_5
    return-void
.end method

.method public final 鷭(IILandroid/content/Intent;)V
    .locals 1

    .line 0
    iget-boolean v0, p0, Leu/chainfire/supersu/AppsFragment;->ȃ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->ˮ͈:Leu/chainfire/supersu/Settings$App;

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 125
    :cond_1
    const/16 v0, 0x1100

    if-ne p1, v0, :cond_5

    .line 126
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 128
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->ˮ͈:Leu/chainfire/supersu/Settings$App;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->ȃ()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->ˮ͈:Leu/chainfire/supersu/Settings$App;

    .line 130
    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->鷭()V

    .line 131
    return-void

    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    .line 133
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->ˮ͈:Leu/chainfire/supersu/Settings$App;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->櫯()V

    .line 134
    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/MainActivity;

    iget-boolean v0, v0, Leu/chainfire/supersu/MainActivity;->鷭:Z

    if-nez v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->ˮ͈:Leu/chainfire/supersu/Settings$App;

    .line 135
    :cond_3
    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 136
    return-void

    :cond_4
    if-nez p2, :cond_7

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->ˮ͈:Leu/chainfire/supersu/Settings$App;

    .line 140
    return-void

    :cond_5
    const/16 v0, 0x1101

    if-eq p1, v0, :cond_6

    const/16 v0, 0x1102

    if-ne p1, v0, :cond_7

    .line 141
    :cond_6
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->ć:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    if-eqz v0, :cond_7

    .line 142
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->ć:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    invoke-virtual {v0, p1, p3}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->鷭(ILandroid/content/Intent;)V

    .line 145
    :cond_7
    return-void
.end method
