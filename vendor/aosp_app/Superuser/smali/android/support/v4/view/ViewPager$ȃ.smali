.class final Landroid/support/v4/view/ViewPager$ȃ;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u0203"
.end annotation


# instance fields
.field final synthetic 鷭:Landroid/support/v4/view/ViewPager;


# direct methods
.method private constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroid/support/v4/view/ViewPager$ȃ;->鷭:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/ViewPager;Lo/Ē;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager$ȃ;-><init>(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .line 0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$ȃ;->鷭:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->鷭()V

    .line 2061
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .line 0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$ȃ;->鷭:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->鷭()V

    .line 2065
    return-void
.end method
