.class public final Lo/Ē;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Ljava/util/Comparator<Landroid/support/v4/view/ViewPager$if;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 0
    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/ViewPager$if;

    move-object v1, p2

    check-cast v1, Landroid/support/v4/view/ViewPager$if;

    move-object p2, v1

    iget v0, v0, Landroid/support/v4/view/ViewPager$if;->櫯:I

    iget v1, p2, Landroid/support/v4/view/ViewPager$if;->櫯:I

    sub-int/2addr v0, v1

    return v0
.end method
