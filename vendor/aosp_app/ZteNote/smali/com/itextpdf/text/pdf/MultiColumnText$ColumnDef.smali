.class Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;
.super Ljava/lang/Object;
.source "MultiColumnText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/MultiColumnText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColumnDef"
.end annotation


# instance fields
.field private left:[F

.field private right:[F

.field final synthetic this$0:Lcom/itextpdf/text/pdf/MultiColumnText;


# direct methods
.method constructor <init>(Lcom/itextpdf/text/pdf/MultiColumnText;FF)V
    .locals 8
    .parameter
    .parameter "leftPosition"
    .parameter "rightPosition"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/high16 v3, -0x4080

    .line 542
    iput-object p1, p0, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->this$0:Lcom/itextpdf/text/pdf/MultiColumnText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->left:[F

    .line 544
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->left:[F

    aput p2, v0, v5

    .line 545
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->left:[F

    #getter for: Lcom/itextpdf/text/pdf/MultiColumnText;->top:F
    invoke-static {p1}, Lcom/itextpdf/text/pdf/MultiColumnText;->access$100(Lcom/itextpdf/text/pdf/MultiColumnText;)F

    move-result v1

    aput v1, v0, v6

    .line 546
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->left:[F

    aput p2, v0, v7

    .line 547
    #getter for: Lcom/itextpdf/text/pdf/MultiColumnText;->desiredHeight:F
    invoke-static {p1}, Lcom/itextpdf/text/pdf/MultiColumnText;->access$200(Lcom/itextpdf/text/pdf/MultiColumnText;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    #getter for: Lcom/itextpdf/text/pdf/MultiColumnText;->top:F
    invoke-static {p1}, Lcom/itextpdf/text/pdf/MultiColumnText;->access$100(Lcom/itextpdf/text/pdf/MultiColumnText;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->left:[F

    aput v3, v0, v4

    .line 553
    :goto_0
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->right:[F

    .line 554
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->right:[F

    aput p3, v0, v5

    .line 555
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->right:[F

    #getter for: Lcom/itextpdf/text/pdf/MultiColumnText;->top:F
    invoke-static {p1}, Lcom/itextpdf/text/pdf/MultiColumnText;->access$100(Lcom/itextpdf/text/pdf/MultiColumnText;)F

    move-result v1

    aput v1, v0, v6

    .line 556
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->right:[F

    aput p3, v0, v7

    .line 557
    #getter for: Lcom/itextpdf/text/pdf/MultiColumnText;->desiredHeight:F
    invoke-static {p1}, Lcom/itextpdf/text/pdf/MultiColumnText;->access$200(Lcom/itextpdf/text/pdf/MultiColumnText;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    #getter for: Lcom/itextpdf/text/pdf/MultiColumnText;->top:F
    invoke-static {p1}, Lcom/itextpdf/text/pdf/MultiColumnText;->access$100(Lcom/itextpdf/text/pdf/MultiColumnText;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->right:[F

    aput v3, v0, v4

    .line 562
    :goto_1
    return-void

    .line 550
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->left:[F

    #getter for: Lcom/itextpdf/text/pdf/MultiColumnText;->top:F
    invoke-static {p1}, Lcom/itextpdf/text/pdf/MultiColumnText;->access$100(Lcom/itextpdf/text/pdf/MultiColumnText;)F

    move-result v1

    #getter for: Lcom/itextpdf/text/pdf/MultiColumnText;->desiredHeight:F
    invoke-static {p1}, Lcom/itextpdf/text/pdf/MultiColumnText;->access$200(Lcom/itextpdf/text/pdf/MultiColumnText;)F

    move-result v2

    sub-float/2addr v1, v2

    aput v1, v0, v4

    goto :goto_0

    .line 560
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->right:[F

    #getter for: Lcom/itextpdf/text/pdf/MultiColumnText;->top:F
    invoke-static {p1}, Lcom/itextpdf/text/pdf/MultiColumnText;->access$100(Lcom/itextpdf/text/pdf/MultiColumnText;)F

    move-result v1

    #getter for: Lcom/itextpdf/text/pdf/MultiColumnText;->desiredHeight:F
    invoke-static {p1}, Lcom/itextpdf/text/pdf/MultiColumnText;->access$200(Lcom/itextpdf/text/pdf/MultiColumnText;)F

    move-result v2

    sub-float/2addr v1, v2

    aput v1, v0, v4

    goto :goto_1
.end method

.method constructor <init>(Lcom/itextpdf/text/pdf/MultiColumnText;[F[F)V
    .locals 0
    .parameter
    .parameter "newLeft"
    .parameter "newRight"

    .prologue
    .line 537
    iput-object p1, p0, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->this$0:Lcom/itextpdf/text/pdf/MultiColumnText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    iput-object p2, p0, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->left:[F

    .line 539
    iput-object p3, p0, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->right:[F

    .line 540
    return-void
.end method

.method static synthetic access$000(Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 533
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->isSimple()Z

    move-result v0

    return v0
.end method

.method private isSimple()Z
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v0, 0x0

    .line 600
    iget-object v1, p0, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->left:[F

    array-length v1, v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->right:[F

    array-length v1, v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->left:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->left:[F

    aget v2, v2, v3

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->right:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->right:[F

    aget v2, v2, v3

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private resolvePositions([F)[F
    .locals 3
    .parameter "positions"

    .prologue
    const/4 v2, 0x1

    .line 581
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->isSimple()Z

    move-result v0

    if-nez v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->this$0:Lcom/itextpdf/text/pdf/MultiColumnText;

    #getter for: Lcom/itextpdf/text/pdf/MultiColumnText;->top:F
    invoke-static {v0}, Lcom/itextpdf/text/pdf/MultiColumnText;->access$100(Lcom/itextpdf/text/pdf/MultiColumnText;)F

    move-result v0

    aput v0, p1, v2

    .line 592
    :goto_0
    return-object p1

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->this$0:Lcom/itextpdf/text/pdf/MultiColumnText;

    #getter for: Lcom/itextpdf/text/pdf/MultiColumnText;->top:F
    invoke-static {v0}, Lcom/itextpdf/text/pdf/MultiColumnText;->access$100(Lcom/itextpdf/text/pdf/MultiColumnText;)F

    move-result v0

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 587
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "resolvePositions called with top=AUTOMATIC (-1).  Top position must be set befure lines can be resolved"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->this$0:Lcom/itextpdf/text/pdf/MultiColumnText;

    #getter for: Lcom/itextpdf/text/pdf/MultiColumnText;->top:F
    invoke-static {v0}, Lcom/itextpdf/text/pdf/MultiColumnText;->access$100(Lcom/itextpdf/text/pdf/MultiColumnText;)F

    move-result v0

    aput v0, p1, v2

    .line 591
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->this$0:Lcom/itextpdf/text/pdf/MultiColumnText;

    #calls: Lcom/itextpdf/text/pdf/MultiColumnText;->getColumnBottom()F
    invoke-static {v1}, Lcom/itextpdf/text/pdf/MultiColumnText;->access$300(Lcom/itextpdf/text/pdf/MultiColumnText;)F

    move-result v1

    aput v1, p1, v0

    goto :goto_0
.end method


# virtual methods
.method resolvePositions(I)[F
    .locals 1
    .parameter "side"

    .prologue
    .line 573
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->left:[F

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->resolvePositions([F)[F

    move-result-object v0

    .line 576
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->right:[F

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/MultiColumnText$ColumnDef;->resolvePositions([F)[F

    move-result-object v0

    goto :goto_0
.end method
