.class Leu/chainfire/supersu/AppsFragment$1;
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

.field final synthetic 鷭:Leu/chainfire/supersu/AppsFragment;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/AppsFragment;)V
    .locals 1

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/AppsFragment$1;->鷭:Leu/chainfire/supersu/AppsFragment;

    .line 157
    invoke-direct {p0}, Leu/chainfire/supersu/AsyncTask;-><init>()V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment$1;->ą:Landroid/widget/ListAdapter;

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/supersu/AppsFragment$1;->Ć:I

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/supersu/AppsFragment$1;->ć:I

    return-void
.end method

.method private varargs 鷭([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3

    .line 0
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 169
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/AppsFragment$1;->Ć:I

    .line 170
    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/AppsFragment$1;->ć:I

    .line 174
    :cond_0
    :try_start_0
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$1;->鷭:Leu/chainfire/supersu/AppsFragment;

    new-instance v1, Leu/chainfire/supersu/Settings;

    iget-object v2, p0, Leu/chainfire/supersu/AppsFragment$1;->鷭:Leu/chainfire/supersu/AppsFragment;

    invoke-virtual {v2}, Leu/chainfire/supersu/AppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Leu/chainfire/supersu/Settings;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Leu/chainfire/supersu/AppsFragment;->鷭(Leu/chainfire/supersu/AppsFragment;Leu/chainfire/supersu/Settings;)V

    .line 175
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$1;->鷭:Leu/chainfire/supersu/AppsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/AppsFragment;->鷭(Leu/chainfire/supersu/AppsFragment;)Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment$1;->ą:Landroid/widget/ListAdapter;

    .line 177
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$1;->鷭:Leu/chainfire/supersu/AppsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/AppsFragment;->櫯(Leu/chainfire/supersu/AppsFragment;)Leu/chainfire/supersu/Settings$App;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$1;->鷭:Leu/chainfire/supersu/AppsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/AppsFragment;->櫯(Leu/chainfire/supersu/AppsFragment;)Leu/chainfire/supersu/Settings$App;

    move-result-object v0

    iget-boolean v0, v0, Leu/chainfire/supersu/Settings$App;->鷭:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$1;->鷭:Leu/chainfire/supersu/AppsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/AppsFragment;->ˮ͈(Leu/chainfire/supersu/AppsFragment;)[Leu/chainfire/supersu/Settings$App;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 178
    const/4 p1, 0x0

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$1;->鷭:Leu/chainfire/supersu/AppsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/AppsFragment;->櫯(Leu/chainfire/supersu/AppsFragment;)Leu/chainfire/supersu/Settings$App;

    move-result-object v0

    iget-object v0, v0, Leu/chainfire/supersu/Settings$App;->ˮ͈:Ljava/lang/String;

    iget-object v1, p0, Leu/chainfire/supersu/AppsFragment$1;->鷭:Leu/chainfire/supersu/AppsFragment;

    invoke-static {v1}, Leu/chainfire/supersu/AppsFragment;->ˮ͈(Leu/chainfire/supersu/AppsFragment;)[Leu/chainfire/supersu/Settings$App;

    move-result-object v1

    aget-object v1, v1, p1

    iget-object v1, v1, Leu/chainfire/supersu/Settings$App;->ˮ͈:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 178
    :cond_2
    :try_start_1
    add-int/lit8 p1, p1, 0x1

    :goto_0
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$1;->鷭:Leu/chainfire/supersu/AppsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/AppsFragment;->ˮ͈(Leu/chainfire/supersu/AppsFragment;)[Leu/chainfire/supersu/Settings$App;

    move-result-object v0

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 185
    :cond_3
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$1;->鷭:Leu/chainfire/supersu/AppsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/AppsFragment;->ˮ͈(Leu/chainfire/supersu/AppsFragment;)[Leu/chainfire/supersu/Settings$App;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_4

    .line 186
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 188
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
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

    invoke-direct {p0, v0}, Leu/chainfire/supersu/AppsFragment$1;->鷭([Ljava/lang/Integer;)Ljava/lang/Integer;

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
    iget-object v0, p1, Leu/chainfire/supersu/AppsFragment$1;->鷭:Leu/chainfire/supersu/AppsFragment;

    iget-object v1, p1, Leu/chainfire/supersu/AppsFragment$1;->ą:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/AppsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p1, Leu/chainfire/supersu/AppsFragment$1;->鷭:Leu/chainfire/supersu/AppsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/AppsFragment;->setListShown(Z)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p1, Leu/chainfire/supersu/AppsFragment$1;->鷭:Leu/chainfire/supersu/AppsFragment;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/AppsFragment;->鷭(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p1, Leu/chainfire/supersu/AppsFragment$1;->鷭:Leu/chainfire/supersu/AppsFragment;

    invoke-virtual {v0}, Leu/chainfire/supersu/AppsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p1, Leu/chainfire/supersu/AppsFragment$1;->Ć:I

    iget v2, p1, Leu/chainfire/supersu/AppsFragment$1;->ć:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Leu/chainfire/supersu/AppsFragment$1;->鷭:Leu/chainfire/supersu/AppsFragment;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/AppsFragment;->鷭(I)V

    :cond_1
    :goto_0
    iget-object v0, p1, Leu/chainfire/supersu/AppsFragment$1;->鷭:Leu/chainfire/supersu/AppsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/AppsFragment;->ȃ(Leu/chainfire/supersu/AppsFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
