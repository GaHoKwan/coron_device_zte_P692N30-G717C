.class Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;
.super Ljava/lang/Object;
.source "BarcodeDatamatrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/BarcodeDatamatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Placement"
.end annotation


# static fields
.field private static final cache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "[S>;"
        }
    .end annotation
.end field


# instance fields
.field private array:[S

.field private ncol:I

.field private nrow:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 943
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->cache:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 946
    return-void
.end method

.method private corner1(I)V
    .locals 6
    .parameter "chr"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 981
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->nrow:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v2, p1, v2}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 982
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->nrow:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v3, p1, v3}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 983
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->nrow:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v4, p1, v4}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 984
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    add-int/lit8 v0, v0, -0x2

    invoke-direct {p0, v2, v0, p1, v5}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 985
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 986
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x5

    invoke-direct {p0, v3, v0, p1, v1}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 987
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x6

    invoke-direct {p0, v4, v0, p1, v1}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 988
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x7

    invoke-direct {p0, v5, v0, p1, v1}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 989
    return-void
.end method

.method private corner2(I)V
    .locals 4
    .parameter "chr"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 991
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->nrow:I

    add-int/lit8 v0, v0, -0x3

    invoke-direct {p0, v0, v2, p1, v2}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 992
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->nrow:I

    add-int/lit8 v0, v0, -0x2

    invoke-direct {p0, v0, v2, p1, v3}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 993
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->nrow:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 994
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    add-int/lit8 v0, v0, -0x4

    const/4 v1, 0x3

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 995
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    add-int/lit8 v0, v0, -0x3

    const/4 v1, 0x4

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 996
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x5

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 997
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x6

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 998
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x7

    invoke-direct {p0, v3, v0, p1, v1}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 999
    return-void
.end method

.method private corner3(I)V
    .locals 6
    .parameter "chr"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1001
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->nrow:I

    add-int/lit8 v0, v0, -0x3

    invoke-direct {p0, v0, v2, p1, v2}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 1002
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->nrow:I

    add-int/lit8 v0, v0, -0x2

    invoke-direct {p0, v0, v2, p1, v3}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 1003
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->nrow:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v2, p1, v4}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 1004
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    add-int/lit8 v0, v0, -0x2

    invoke-direct {p0, v2, v0, p1, v5}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 1005
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 1006
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x5

    invoke-direct {p0, v3, v0, p1, v1}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 1007
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x6

    invoke-direct {p0, v4, v0, p1, v1}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 1008
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x7

    invoke-direct {p0, v5, v0, p1, v1}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 1009
    return-void
.end method

.method private corner4(I)V
    .locals 4
    .parameter "chr"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1011
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->nrow:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v2, p1, v2}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 1012
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->nrow:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1, p1, v3}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 1013
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    add-int/lit8 v0, v0, -0x3

    const/4 v1, 0x2

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 1014
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x3

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 1015
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 1016
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    add-int/lit8 v0, v0, -0x3

    const/4 v1, 0x5

    invoke-direct {p0, v3, v0, p1, v1}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 1017
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x6

    invoke-direct {p0, v3, v0, p1, v1}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 1018
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x7

    invoke-direct {p0, v3, v0, p1, v1}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 1019
    return-void
.end method

.method static doPlacement(II)[S
    .locals 5
    .parameter "nrow"
    .parameter "ncol"

    .prologue
    .line 949
    mul-int/lit16 v3, p0, 0x3e8

    add-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 950
    .local v0, key:Ljava/lang/Integer;
    sget-object v3, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->cache:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [S

    .line 951
    .local v2, pc:[S
    if-eqz v2, :cond_0

    .line 959
    .end local v2           #pc:[S
    :goto_0
    return-object v2

    .line 953
    .restart local v2       #pc:[S
    :cond_0
    new-instance v1, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;-><init>()V

    .line 954
    .local v1, p:Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;
    iput p0, v1, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->nrow:I

    .line 955
    iput p1, v1, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    .line 956
    mul-int v3, p0, p1

    new-array v3, v3, [S

    iput-object v3, v1, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->array:[S

    .line 957
    invoke-direct {v1}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ecc200()V

    .line 958
    sget-object v3, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->cache:Ljava/util/Hashtable;

    iget-object v4, v1, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->array:[S

    invoke-virtual {v3, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    iget-object v2, v1, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->array:[S

    goto :goto_0
.end method

.method private ecc200()V
    .locals 9

    .prologue
    .line 1024
    iget-object v4, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->array:[S

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([SS)V

    .line 1026
    const/4 v0, 0x1

    .local v0, chr:I
    const/4 v3, 0x4

    .local v3, row:I
    const/4 v2, 0x0

    .line 1029
    .local v2, col:I
    :cond_0
    iget v4, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->nrow:I

    if-ne v3, v4, :cond_1

    if-nez v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    .end local v0           #chr:I
    .local v1, chr:I
    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->corner1(I)V

    move v0, v1

    .line 1030
    .end local v1           #chr:I
    .restart local v0       #chr:I
    :cond_1
    iget v4, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->nrow:I

    add-int/lit8 v4, v4, -0x2

    if-ne v3, v4, :cond_2

    if-nez v2, :cond_2

    iget v4, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    rem-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #chr:I
    .restart local v1       #chr:I
    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->corner2(I)V

    move v0, v1

    .line 1031
    .end local v1           #chr:I
    .restart local v0       #chr:I
    :cond_2
    iget v4, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->nrow:I

    add-int/lit8 v4, v4, -0x2

    if-ne v3, v4, :cond_3

    if-nez v2, :cond_3

    iget v4, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    rem-int/lit8 v4, v4, 0x8

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    add-int/lit8 v1, v0, 0x1

    .end local v0           #chr:I
    .restart local v1       #chr:I
    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->corner3(I)V

    move v0, v1

    .line 1032
    .end local v1           #chr:I
    .restart local v0       #chr:I
    :cond_3
    iget v4, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->nrow:I

    add-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_4

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    iget v4, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    rem-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_4

    add-int/lit8 v1, v0, 0x1

    .end local v0           #chr:I
    .restart local v1       #chr:I
    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->corner4(I)V

    move v0, v1

    .line 1035
    .end local v1           #chr:I
    .restart local v0       #chr:I
    :cond_4
    iget v4, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->nrow:I

    if-ge v3, v4, :cond_5

    if-ltz v2, :cond_5

    iget-object v4, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->array:[S

    iget v5, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v2

    aget-short v4, v4, v5

    if-nez v4, :cond_5

    .line 1036
    add-int/lit8 v1, v0, 0x1

    .end local v0           #chr:I
    .restart local v1       #chr:I
    invoke-direct {p0, v3, v2, v0}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->utah(III)V

    move v0, v1

    .line 1037
    .end local v1           #chr:I
    .restart local v0       #chr:I
    :cond_5
    add-int/lit8 v3, v3, -0x2

    add-int/lit8 v2, v2, 0x2

    .line 1038
    if-ltz v3, :cond_6

    iget v4, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    if-lt v2, v4, :cond_4

    .line 1039
    :cond_6
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x3

    move v1, v0

    .line 1043
    .end local v0           #chr:I
    .restart local v1       #chr:I
    :goto_0
    if-ltz v3, :cond_a

    iget v4, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    if-ge v2, v4, :cond_a

    iget-object v4, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->array:[S

    iget v5, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v2

    aget-short v4, v4, v5

    if-nez v4, :cond_a

    .line 1044
    add-int/lit8 v0, v1, 0x1

    .end local v1           #chr:I
    .restart local v0       #chr:I
    invoke-direct {p0, v3, v2, v1}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->utah(III)V

    .line 1045
    :goto_1
    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v2, -0x2

    .line 1046
    iget v4, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->nrow:I

    if-ge v3, v4, :cond_7

    if-gez v2, :cond_9

    .line 1047
    :cond_7
    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v2, v2, 0x1

    .line 1049
    iget v4, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->nrow:I

    if-lt v3, v4, :cond_0

    iget v4, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    if-lt v2, v4, :cond_0

    .line 1051
    iget-object v4, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->array:[S

    iget v5, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->nrow:I

    iget v6, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    mul-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    aget-short v4, v4, v5

    if-nez v4, :cond_8

    .line 1052
    iget-object v4, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->array:[S

    iget v5, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->nrow:I

    iget v6, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    mul-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->array:[S

    iget v7, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->nrow:I

    iget v8, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    mul-int/2addr v7, v8

    iget v8, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x2

    const/4 v8, 0x1

    aput-short v8, v6, v7

    aput-short v8, v4, v5

    .line 1054
    :cond_8
    return-void

    :cond_9
    move v1, v0

    .end local v0           #chr:I
    .restart local v1       #chr:I
    goto :goto_0

    :cond_a
    move v0, v1

    .end local v1           #chr:I
    .restart local v0       #chr:I
    goto :goto_1
.end method

.method private module(IIII)V
    .locals 3
    .parameter "row"
    .parameter "col"
    .parameter "chr"
    .parameter "bit"

    .prologue
    .line 964
    if-gez p1, :cond_0

    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->nrow:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->nrow:I

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr p2, v0

    .line 965
    :cond_0
    if-gez p2, :cond_1

    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr p1, v0

    .line 966
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->array:[S

    iget v1, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->ncol:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    mul-int/lit8 v2, p3, 0x8

    add-int/2addr v2, p4

    int-to-short v2, v2

    aput-short v2, v0, v1

    .line 967
    return-void
.end method

.method private utah(III)V
    .locals 3
    .parameter "row"
    .parameter "col"
    .parameter "chr"

    .prologue
    .line 970
    add-int/lit8 v0, p1, -0x2

    add-int/lit8 v1, p2, -0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 971
    add-int/lit8 v0, p1, -0x2

    add-int/lit8 v1, p2, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 972
    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v1, p2, -0x2

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 973
    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v1, p2, -0x1

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 974
    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x4

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 975
    add-int/lit8 v0, p2, -0x2

    const/4 v1, 0x5

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 976
    add-int/lit8 v0, p2, -0x1

    const/4 v1, 0x6

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 977
    const/4 v0, 0x7

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->module(IIII)V

    .line 978
    return-void
.end method
