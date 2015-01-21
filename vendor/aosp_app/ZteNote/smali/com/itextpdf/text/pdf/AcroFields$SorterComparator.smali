.class Lcom/itextpdf/text/pdf/AcroFields$SorterComparator;
.super Ljava/lang/Object;
.source "AcroFields.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/AcroFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SorterComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/text/pdf/AcroFields$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2560
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/AcroFields$SorterComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2560
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    check-cast p2, [Ljava/lang/Object;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/text/pdf/AcroFields$SorterComparator;->compare([Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public compare([Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 5
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2562
    aget-object v2, p1, v4

    check-cast v2, [I

    check-cast v2, [I

    aget v0, v2, v3

    .line 2563
    .local v0, n1:I
    aget-object v2, p2, v4

    check-cast v2, [I

    check-cast v2, [I

    aget v1, v2, v3

    .line 2564
    .local v1, n2:I
    sub-int v2, v0, v1

    return v2
.end method
