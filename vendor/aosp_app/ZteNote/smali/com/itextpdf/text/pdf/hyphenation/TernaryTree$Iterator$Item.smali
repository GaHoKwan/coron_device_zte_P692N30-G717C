.class Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;
.super Ljava/lang/Object;
.source "TernaryTree.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation


# instance fields
.field child:C

.field parent:C

.field final synthetic this$1:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 477
    iput-object p1, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;->this$1:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput-char v0, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;->parent:C

    .line 479
    iput-char v0, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;->child:C

    .line 480
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;CC)V
    .locals 0
    .parameter
    .parameter "p"
    .parameter "c"

    .prologue
    .line 482
    iput-object p1, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;->this$1:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    iput-char p2, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;->parent:C

    .line 484
    iput-char p3, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;->child:C

    .line 485
    return-void
.end method


# virtual methods
.method public clone()Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;
    .locals 4

    .prologue
    .line 489
    new-instance v0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;->this$1:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;

    iget-char v2, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;->parent:C

    iget-char v3, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;->child:C

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;-><init>(Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;CC)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;->clone()Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;

    move-result-object v0

    return-object v0
.end method
