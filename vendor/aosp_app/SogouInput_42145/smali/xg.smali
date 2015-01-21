.class public Lxg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# static fields
.field private static a:I


# instance fields
.field private a:Landroid/app/AlertDialog;

.field private a:Landroid/content/Context;

.field private a:Landroid/widget/ExpandableListView;

.field private a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

.field private final a:Ljava/lang/String;

.field private a:Ljava/util/List;

.field private a:Lxj;

.field private a:Lxx;

.field private a:Lyv;

.field private final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, -0x1

    sput v0, Lxg;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/sohu/inputmethod/platform/AppManagerActivity;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "DownloadingTab"

    iput-object v0, p0, Lxg;->a:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lxg;->a:Z

    .line 37
    iput-object v1, p0, Lxg;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    .line 40
    iput-object v1, p0, Lxg;->a:Lxx;

    .line 41
    iput-object v1, p0, Lxg;->a:Lyv;

    .line 42
    iput-object v1, p0, Lxg;->a:Ljava/util/List;

    .line 43
    iput-object v1, p0, Lxg;->a:Landroid/widget/ExpandableListView;

    .line 44
    iput-object v1, p0, Lxg;->a:Lxj;

    .line 45
    iput-object v1, p0, Lxg;->a:Landroid/app/AlertDialog;

    .line 56
    iput-object p1, p0, Lxg;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    .line 57
    iput-object p2, p0, Lxg;->a:Landroid/content/Context;

    .line 58
    return-void
.end method

.method private a(JJ)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 407
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    .line 408
    div-long/2addr v0, p3

    long-to-int v0, v0

    return v0
.end method

.method static synthetic a(Lxg;JJ)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lxg;->a(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lxg;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lxg;->a:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic a(Lxg;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lxg;->a:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lxg;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lxg;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lxg;)Landroid/widget/ExpandableListView;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lxg;->a:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic a(Lxg;)Lcom/sohu/inputmethod/platform/AppManagerActivity;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lxg;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    return-object v0
.end method

.method static synthetic a(Lxg;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lxg;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lxg;)Lxx;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lxg;->a:Lxx;

    return-object v0
.end method

.method static synthetic a(Lxg;)Lyv;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lxg;->a:Lyv;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 404
    return-void
.end method

.method static synthetic a(Lxg;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lxg;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 67
    iget-object v0, p0, Lxg;->a:Lxx;

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lxg;->a:Landroid/content/Context;

    invoke-static {v0}, Lxx;->a(Landroid/content/Context;)Lxx;

    move-result-object v0

    iput-object v0, p0, Lxg;->a:Lxx;

    .line 69
    :cond_0
    iget-object v0, p0, Lxg;->a:Lyv;

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lxg;->a:Landroid/content/Context;

    invoke-static {v0}, Lyv;->a(Landroid/content/Context;)Lyv;

    move-result-object v0

    iput-object v0, p0, Lxg;->a:Lyv;

    .line 72
    :cond_1
    new-instance v0, Lxj;

    invoke-direct {v0, p0}, Lxj;-><init>(Lxg;)V

    iput-object v0, p0, Lxg;->a:Lxj;

    .line 73
    new-instance v0, Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lxg;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lxg;->a:Landroid/widget/ExpandableListView;

    .line 74
    iget-object v0, p0, Lxg;->a:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v0, p0, Lxg;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 76
    iget-object v0, p0, Lxg;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v4}, Landroid/widget/ExpandableListView;->setCacheColorHint(I)V

    .line 77
    iget-object v0, p0, Lxg;->a:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lxg;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object v0, p0, Lxg;->a:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lxg;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v0, p0, Lxg;->a:Landroid/widget/ExpandableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setDividerHeight(I)V

    .line 80
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 81
    iget-object v1, p0, Lxg;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v0, p0, Lxg;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v4}, Landroid/widget/ExpandableListView;->setHeaderDividersEnabled(Z)V

    .line 83
    iget-object v0, p0, Lxg;->a:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lxg;->a:Lxj;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 84
    iget-object v0, p0, Lxg;->a:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method public a()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 369
    const-string v0, "Load APP status is called!!"

    invoke-direct {p0, v0}, Lxg;->a(Ljava/lang/String;)V

    move v1, v2

    .line 370
    :goto_0
    iget-object v0, p0, Lxg;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 371
    iget-object v0, p0, Lxg;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwn;

    iget-object v3, v0, Lwn;->a:Ljava/lang/String;

    .line 372
    iget-object v0, p0, Lxg;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwn;

    iget v4, v0, Lwn;->a:I

    .line 373
    iget-object v0, p0, Lxg;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwn;

    iget-object v0, v0, Lwn;->b:Ljava/lang/String;

    .line 374
    iget-object v5, p0, Lxg;->a:Lyv;

    invoke-virtual {v5, v0, v3, v4}, Lyv;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 375
    packed-switch v3, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v0, v1

    :goto_2
    move v1, v0

    .line 391
    goto :goto_0

    .line 377
    :pswitch_1
    iget-object v0, p0, Lxg;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwn;

    iput v2, v0, Lwn;->b:I

    .line 378
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 379
    goto :goto_2

    .line 381
    :pswitch_2
    iget-object v3, p0, Lxg;->a:Lxx;

    iget-object v4, p0, Lxg;->a:Ljava/util/List;

    invoke-virtual {v3, v4, v1, v0}, Lxx;->a(Ljava/util/List;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 392
    :cond_0
    return-void

    .line 383
    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 384
    goto :goto_2

    .line 389
    :pswitch_3
    iget-object v0, p0, Lxg;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lxg;->a:Ljava/util/List;

    .line 64
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lxg;->a:Lxj;

    invoke-virtual {v0}, Lxj;->notifyDataSetChanged()V

    .line 396
    return-void
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 360
    sget v0, Lxg;->a:I

    if-ne v0, p3, :cond_0

    .line 361
    sget v0, Lxg;->a:I

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    move-result v0

    .line 365
    :goto_0
    return v0

    .line 362
    :cond_0
    sget v0, Lxg;->a:I

    if-ltz v0, :cond_1

    .line 363
    sget v0, Lxg;->a:I

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 364
    :cond_1
    sput p3, Lxg;->a:I

    .line 365
    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    move-result v0

    goto :goto_0
.end method
