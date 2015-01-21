.class Leu/chainfire/supersu/AppsFragment$5;
.super Leu/chainfire/supersu/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leu/chainfire/supersu/AsyncTask<Landroid/view/View;Ljava/lang/Void;Landroid/widget/ListAdapter;>;"
    }
.end annotation


# instance fields
.field private ą:Landroid/widget/ListView;

.field private Ć:Landroid/view/View;

.field private ć:Leu/chainfire/supersu/Logs;

.field final synthetic 鷭:Leu/chainfire/supersu/AppsFragment;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/AppsFragment;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/AppsFragment$5;->鷭:Leu/chainfire/supersu/AppsFragment;

    .line 333
    invoke-direct {p0}, Leu/chainfire/supersu/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic 櫯(Leu/chainfire/supersu/AppsFragment$5;)Leu/chainfire/supersu/AppsFragment;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$5;->鷭:Leu/chainfire/supersu/AppsFragment;

    return-object v0
.end method

.method private varargs 鷭([Landroid/view/View;)Leu/chainfire/supersu/Logs$LogArrayAdapter;
    .locals 3

    .line 0
    :try_start_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment$5;->ą:Landroid/widget/ListView;

    .line 342
    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment$5;->Ć:Landroid/view/View;

    .line 344
    new-instance v0, Leu/chainfire/supersu/Logs;

    iget-object v1, p0, Leu/chainfire/supersu/AppsFragment$5;->鷭:Leu/chainfire/supersu/AppsFragment;

    invoke-virtual {v1}, Leu/chainfire/supersu/AppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Leu/chainfire/supersu/AppsFragment$5;->鷭:Leu/chainfire/supersu/AppsFragment;

    invoke-static {v2}, Leu/chainfire/supersu/AppsFragment;->櫯(Leu/chainfire/supersu/AppsFragment;)Leu/chainfire/supersu/Settings$App;

    move-result-object v2

    iget-object v2, v2, Leu/chainfire/supersu/Settings$App;->ˮ͈:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Leu/chainfire/supersu/Logs;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment$5;->ć:Leu/chainfire/supersu/Logs;

    .line 345
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$5;->鷭:Leu/chainfire/supersu/AppsFragment;

    invoke-virtual {v0}, Leu/chainfire/supersu/AppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/supersu/AppsFragment$5;->ć:Leu/chainfire/supersu/Logs;

    iget-object v1, v1, Leu/chainfire/supersu/Logs;->櫯:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Leu/chainfire/supersu/Logs;->鷭(Landroid/support/v4/app/FragmentActivity;Ljava/util/ArrayList;)Leu/chainfire/supersu/Logs$LogArrayAdapter;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 346
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 348
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/AppsFragment$5;)Leu/chainfire/supersu/Logs;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$5;->ć:Leu/chainfire/supersu/Logs;

    return-object v0
.end method


# virtual methods
.method protected final bridge varargs synthetic 鷭([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    move-object v0, p1

    check-cast v0, [Landroid/view/View;

    invoke-direct {p0, v0}, Leu/chainfire/supersu/AppsFragment$5;->鷭([Landroid/view/View;)Leu/chainfire/supersu/Logs$LogArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic 鷭(Ljava/lang/Object;)V
    .locals 4

    .line 0
    move-object v0, p1

    check-cast v0, Landroid/widget/ListAdapter;

    move-object v3, v0

    move-object p1, p0

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v0, p1, Leu/chainfire/supersu/AppsFragment$5;->ą:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p1, Leu/chainfire/supersu/AppsFragment$5;->ą:Landroid/widget/ListView;

    new-instance v1, Leu/chainfire/supersu/AppsFragment$5$1;

    invoke-direct {v1, p1}, Leu/chainfire/supersu/AppsFragment$5$1;-><init>(Leu/chainfire/supersu/AppsFragment$5;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p1, Leu/chainfire/supersu/AppsFragment$5;->Ć:Landroid/view/View;

    iget-object v1, p1, Leu/chainfire/supersu/AppsFragment$5;->鷭:Leu/chainfire/supersu/AppsFragment;

    invoke-virtual {v1}, Leu/chainfire/supersu/AppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p1, Leu/chainfire/supersu/AppsFragment$5;->ą:Landroid/widget/ListView;

    iget-object v1, p1, Leu/chainfire/supersu/AppsFragment$5;->鷭:Leu/chainfire/supersu/AppsFragment;

    invoke-virtual {v1}, Leu/chainfire/supersu/AppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    nop

    :catch_0
    iget-object v0, p1, Leu/chainfire/supersu/AppsFragment$5;->Ć:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Leu/chainfire/supersu/AppsFragment$5;->ą:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method
