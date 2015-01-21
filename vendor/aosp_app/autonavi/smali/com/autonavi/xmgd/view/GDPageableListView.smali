.class public Lcom/autonavi/xmgd/view/GDPageableListView;
.super Landroid/widget/ExpandableListView;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/autonavi/xmgd/c/h;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ExpandableListView;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Lcom/autonavi/xmgd/c/h",
        "<TT;>;",
        "Landroid/view/View$OnClickListener;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static mErrorCode:Ljava/lang/String; = null

.field private static mPreFootview:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final STATE_LOADFAILURE:I

.field private final STATE_LOADING:I

.field private final STATE_LOADMOREDATA:I

.field private final STATE_NULL:I

.field private isNeedLoading:Z

.field private isShowIndicatorBounds:Z

.field private mContext:Landroid/content/Context;

.field private mDataLoaderHandler:Lcom/autonavi/xmgd/c/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/autonavi/xmgd/c/g",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mLoadfailureView:Landroid/view/View;

.field private mLoadingView:Landroid/view/View;

.field private mLoadmoredataView:Landroid/view/View;

.field private mPreListItemPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    sput v0, Lcom/autonavi/xmgd/view/GDPageableListView;->mPreFootview:I

    const-string v0, "[-1]"

    sput-object v0, Lcom/autonavi/xmgd/view/GDPageableListView;->mErrorCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->STATE_LOADING:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->STATE_LOADFAILURE:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->STATE_NULL:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->STATE_LOADMOREDATA:I

    iput-object v1, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mLoadingView:Landroid/view/View;

    iput-object v1, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mLoadfailureView:Landroid/view/View;

    iput-object v1, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mLoadmoredataView:Landroid/view/View;

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mPreListItemPos:I

    iput-object v1, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mDataLoaderHandler:Lcom/autonavi/xmgd/c/g;

    iput-boolean v2, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->isNeedLoading:Z

    iput-boolean v2, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->isShowIndicatorBounds:Z

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/view/GDPageableListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v2, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->STATE_LOADING:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->STATE_LOADFAILURE:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->STATE_NULL:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->STATE_LOADMOREDATA:I

    iput-object v1, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mLoadingView:Landroid/view/View;

    iput-object v1, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mLoadfailureView:Landroid/view/View;

    iput-object v1, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mLoadmoredataView:Landroid/view/View;

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mPreListItemPos:I

    iput-object v1, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mDataLoaderHandler:Lcom/autonavi/xmgd/c/g;

    iput-boolean v2, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->isNeedLoading:Z

    iput-boolean v2, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->isShowIndicatorBounds:Z

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/view/GDPageableListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->STATE_LOADING:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->STATE_LOADFAILURE:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->STATE_NULL:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->STATE_LOADMOREDATA:I

    iput-object v1, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mLoadingView:Landroid/view/View;

    iput-object v1, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mLoadfailureView:Landroid/view/View;

    iput-object v1, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mLoadmoredataView:Landroid/view/View;

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mPreListItemPos:I

    iput-object v1, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mDataLoaderHandler:Lcom/autonavi/xmgd/c/g;

    iput-boolean v2, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->isNeedLoading:Z

    iput-boolean v2, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->isShowIndicatorBounds:Z

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/view/GDPageableListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static InitParam()V
    .locals 1

    const/4 v0, 0x3

    sput v0, Lcom/autonavi/xmgd/view/GDPageableListView;->mPreFootview:I

    const-string v0, "[-1]"

    sput-object v0, Lcom/autonavi/xmgd/view/GDPageableListView;->mErrorCode:Ljava/lang/String;

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    const v4, 0x7f0c00f8

    const v3, 0x7f03003f

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mLoadingView:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070079

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mLoadmoredataView:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mLoadmoredataView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07007a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003e

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mLoadfailureView:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mLoadfailureView:Landroid/view/View;

    const v1, 0x7f0c00f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mLoadingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDPageableListView;->addFooterView(Landroid/view/View;)V

    invoke-virtual {p0, p0}, Lcom/autonavi/xmgd/view/GDPageableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private showLoadFailure()V
    .locals 4

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/GDPageableListView;->removeFooterView()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070078

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xmgd/view/GDPageableListView;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03003e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mLoadfailureView:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mLoadfailureView:Landroid/view/View;

    const v2, 0x7f0c00f6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mLoadfailureView:Landroid/view/View;

    const v2, 0x7f0c00f7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mLoadfailureView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDPageableListView;->addFooterView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/GDPageableListView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDPageableListView;->setSelection(I)V

    const/4 v0, 0x2

    sput v0, Lcom/autonavi/xmgd/view/GDPageableListView;->mPreFootview:I

    return-void
.end method

.method private showLoading()V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/GDPageableListView;->removeFooterView()V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mLoadingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDPageableListView;->addFooterView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/GDPageableListView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDPageableListView;->setSelection(I)V

    const/4 v0, 0x1

    sput v0, Lcom/autonavi/xmgd/view/GDPageableListView;->mPreFootview:I

    return-void
.end method

.method private showLoadmoredata()V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/GDPageableListView;->removeFooterView()V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mLoadmoredataView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDPageableListView;->addFooterView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/GDPageableListView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDPageableListView;->setSelection(I)V

    const/4 v0, 0x4

    sput v0, Lcom/autonavi/xmgd/view/GDPageableListView;->mPreFootview:I

    return-void
.end method


# virtual methods
.method public citySearchResult(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/c/n;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/GDPageableListView;->removeFooterView()V

    return-void
.end method

.method public dataLoaded(Ljava/util/ArrayList;ZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sput-object p3, Lcom/autonavi/xmgd/view/GDPageableListView;->mErrorCode:Ljava/lang/String;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/GDPageableListView;->removeFooterView()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/view/GDPageableListView;->showLoadFailure()V

    goto :goto_0
.end method

.method public getIsNeedLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->isNeedLoading:Z

    return v0
.end method

.method public getIsShowIndicatorBounds()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->isShowIndicatorBounds:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/GDPageableListView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/autonavi/xmgd/view/GDPageableListView;->showLoading()V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mDataLoaderHandler:Lcom/autonavi/xmgd/c/g;

    invoke-interface {v0}, Lcom/autonavi/xmgd/c/g;->c()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/view/GDPageableListView;->showLoadmoredata()V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mDataLoaderHandler:Lcom/autonavi/xmgd/c/g;

    invoke-interface {v0}, Lcom/autonavi/xmgd/c/g;->d()V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 7

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GDPageableListView] scrollState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/GDPageableListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/GDPageableListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mPreListItemPos:I

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mPreListItemPos:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/ab;->a(I)V

    iget-boolean v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->isNeedLoading:Z

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mDataLoaderHandler:Lcom/autonavi/xmgd/c/g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mDataLoaderHandler:Lcom/autonavi/xmgd/c/g;

    invoke-interface {v0}, Lcom/autonavi/xmgd/c/g;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/GDPageableListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/GDPageableListView;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/GDPageableListView;->getCount()I

    move-result v3

    sget-boolean v4, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v4, :cond_4

    const-string v4, "autonavi60"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[GDPageableListView] first"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "count"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "total"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/2addr v1, v2

    if-lt v1, v3, :cond_2

    iget-object v1, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mDataLoaderHandler:Lcom/autonavi/xmgd/c/g;

    invoke-interface {v1}, Lcom/autonavi/xmgd/c/g;->e()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mDataLoaderHandler:Lcom/autonavi/xmgd/c/g;

    invoke-interface {v1}, Lcom/autonavi/xmgd/c/g;->b()I

    move-result v1

    if-ge v1, v0, :cond_2

    invoke-direct {p0}, Lcom/autonavi/xmgd/view/GDPageableListView;->showLoadmoredata()V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mDataLoaderHandler:Lcom/autonavi/xmgd/c/g;

    invoke-interface {v0}, Lcom/autonavi/xmgd/c/g;->d()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public removeFooterView()V
    .locals 1

    const/4 v0, 0x3

    sput v0, Lcom/autonavi/xmgd/view/GDPageableListView;->mPreFootview:I

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mLoadfailureView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mLoadfailureView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDPageableListView;->removeFooterView(Landroid/view/View;)Z

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mLoadingView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mLoadingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDPageableListView;->removeFooterView(Landroid/view/View;)Z

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mLoadmoredataView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mLoadmoredataView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDPageableListView;->removeFooterView(Landroid/view/View;)Z

    :cond_2
    return-void
.end method

.method public restorePreState()V
    .locals 2

    sget v0, Lcom/autonavi/xmgd/view/GDPageableListView;->mPreFootview:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/autonavi/xmgd/view/GDPageableListView;->showLoading()V

    :cond_0
    :goto_0
    iget v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mPreListItemPos:I

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDPageableListView;->setSelection(I)V

    return-void

    :cond_1
    sget v0, Lcom/autonavi/xmgd/view/GDPageableListView;->mPreFootview:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/autonavi/xmgd/view/GDPageableListView;->showLoadFailure()V

    goto :goto_0
.end method

.method public setAdapter(Lcom/autonavi/xmgd/controls/h;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mLoadingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDPageableListView;->removeFooterView(Landroid/view/View;)Z

    invoke-virtual {p1, v3}, Lcom/autonavi/xmgd/controls/h;->getChildrenCount(I)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/view/GDPageableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    sget v0, Lcom/autonavi/xmgd/view/GDPageableListView;->mPreFootview:I

    if-ne v0, v4, :cond_3

    invoke-direct {p0}, Lcom/autonavi/xmgd/view/GDPageableListView;->showLoading()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->isShowIndicatorBounds:Z

    if-ne v0, v4, :cond_2

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getScreenSize()[I

    move-result-object v0

    aget v0, v0, v3

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/GDPageableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/Tool;->getScreenSize()[I

    move-result-object v1

    aget v1, v1, v3

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/GDPageableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/xmgd/view/GDPageableListView;->setIndicatorBounds(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/view/GDPageableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    sget v0, Lcom/autonavi/xmgd/view/GDPageableListView;->mPreFootview:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/autonavi/xmgd/view/GDPageableListView;->showLoadmoredata()V

    goto :goto_1

    :cond_4
    sget v0, Lcom/autonavi/xmgd/view/GDPageableListView;->mPreFootview:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/autonavi/xmgd/view/GDPageableListView;->showLoadFailure()V

    goto :goto_1
.end method

.method public setDataLoaderHandler(Lcom/autonavi/xmgd/c/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autonavi/xmgd/c/g",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mDataLoaderHandler:Lcom/autonavi/xmgd/c/g;

    return-void
.end method

.method public setIsNeedLoading(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->isNeedLoading:Z

    return-void
.end method

.method public setIsShowIndicatorBounds(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->isShowIndicatorBounds:Z

    return-void
.end method

.method public setLoadfailureView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mLoadfailureView:Landroid/view/View;

    return-void
.end method

.method public setLoadingView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mLoadingView:Landroid/view/View;

    return-void
.end method

.method public startSearch()V
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->isNeedLoading:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mDataLoaderHandler:Lcom/autonavi/xmgd/c/g;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/autonavi/xmgd/view/GDPageableListView;->showLoading()V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDPageableListView;->mDataLoaderHandler:Lcom/autonavi/xmgd/c/g;

    invoke-interface {v0}, Lcom/autonavi/xmgd/c/g;->c()V

    goto :goto_0
.end method
