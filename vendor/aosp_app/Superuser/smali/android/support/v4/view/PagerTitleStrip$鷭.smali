.class final Landroid/support/v4/view/PagerTitleStrip$鷭;
.super Landroid/database/DataSetObserver;
.source ""

# interfaces
.implements Landroid/support/v4/view/ViewPager$ˮ͈;
.implements Landroid/support/v4/view/ViewPager$櫯;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/PagerTitleStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u9ded"
.end annotation


# instance fields
.field private 櫯:I

.field final synthetic 鷭:Landroid/support/v4/view/PagerTitleStrip;


# direct methods
.method private constructor <init>(Landroid/support/v4/view/PagerTitleStrip;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroid/support/v4/view/PagerTitleStrip$鷭;->鷭:Landroid/support/v4/view/PagerTitleStrip;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/PagerTitleStrip;Landroid/support/v4/view/PagerTitleStrip$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/support/v4/view/PagerTitleStrip$鷭;-><init>(Landroid/support/v4/view/PagerTitleStrip;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 3

    .line 0
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip$鷭;->鷭:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip$鷭;->鷭:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, v1, Landroid/support/v4/view/PagerTitleStrip;->鷭:Landroid/support/v4/view/ViewPager;

    iget v1, v1, Landroid/support/v4/view/ViewPager;->櫯:I

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip$鷭;->鷭:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, v2, Landroid/support/v4/view/PagerTitleStrip;->鷭:Landroid/support/v4/view/ViewPager;

    iget-object v2, v2, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerTitleStrip;->鷭(ILo/ċ;)V

    .line 324
    return-void
.end method

.method public final 櫯(I)V
    .locals 0

    .line 0
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip$鷭;->櫯:I

    .line 314
    return-void
.end method

.method public final 鷭(I)V
    .locals 3

    .line 0
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip$鷭;->櫯:I

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip$鷭;->鷭:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip$鷭;->鷭:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, v1, Landroid/support/v4/view/PagerTitleStrip;->鷭:Landroid/support/v4/view/ViewPager;

    iget v1, v1, Landroid/support/v4/view/ViewPager;->櫯:I

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip$鷭;->鷭:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, v2, Landroid/support/v4/view/PagerTitleStrip;->鷭:Landroid/support/v4/view/ViewPager;

    iget-object v2, v2, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerTitleStrip;->鷭(ILo/ċ;)V

    .line 309
    :cond_0
    return-void
.end method

.method public final 鷭(IF)V
    .locals 1

    .line 0
    const/high16 v0, 0x3f00

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 298
    add-int/lit8 p1, p1, 0x1

    .line 300
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip$鷭;->鷭:Landroid/support/v4/view/PagerTitleStrip;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/PagerTitleStrip;->鷭(IF)V

    .line 301
    return-void
.end method

.method public final 鷭(Lo/ċ;Lo/ċ;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip$鷭;->鷭:Landroid/support/v4/view/PagerTitleStrip;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/PagerTitleStrip;->鷭(Lo/ċ;Lo/ċ;)V

    .line 319
    return-void
.end method
