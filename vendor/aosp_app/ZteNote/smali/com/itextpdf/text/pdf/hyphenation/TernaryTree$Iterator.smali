.class public Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;
.super Ljava/lang/Object;
.source "TernaryTree.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Iterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field cur:I

.field curkey:Ljava/lang/String;

.field ks:Ljava/lang/StringBuffer;

.field ns:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;)V
    .locals 1
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->this$0:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->cur:I

    .line 506
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->ns:Ljava/util/Stack;

    .line 507
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->ks:Ljava/lang/StringBuffer;

    .line 508
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->rewind()V

    .line 509
    return-void
.end method

.method private run()I
    .locals 10

    .prologue
    const v9, 0xffff

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 594
    iget v6, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->cur:I

    if-ne v6, v4, :cond_0

    .line 632
    :goto_0
    return v4

    .line 598
    :cond_0
    const/4 v1, 0x0

    .line 601
    .local v1, leaf:Z
    :cond_1
    :goto_1
    iget v6, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->cur:I

    if-eqz v6, :cond_2

    .line 602
    iget-object v6, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->this$0:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;

    iget-object v6, v6, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->sc:[C

    iget v7, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->cur:I

    aget-char v6, v6, v7

    if-ne v6, v9, :cond_3

    .line 603
    const/4 v1, 0x1

    .line 613
    :cond_2
    :goto_2
    if-eqz v1, :cond_5

    .line 624
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->ks:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 625
    .local v0, buf:Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->this$0:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;

    iget-object v4, v4, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->sc:[C

    iget v6, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->cur:I

    aget-char v4, v4, v6

    if-ne v4, v9, :cond_6

    .line 626
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->this$0:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;

    iget-object v4, v4, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->lo:[C

    iget v6, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->cur:I

    aget-char v2, v4, v6

    .line 627
    .local v2, p:I
    :goto_3
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->this$0:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;

    iget-object v4, v4, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->kv:Lcom/itextpdf/text/pdf/hyphenation/CharVector;

    invoke-virtual {v4, v2}, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->get(I)C

    move-result v4

    if-eqz v4, :cond_6

    .line 628
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->this$0:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;

    iget-object v4, v4, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->kv:Lcom/itextpdf/text/pdf/hyphenation/CharVector;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #p:I
    .local v3, p:I
    invoke-virtual {v4, v2}, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->get(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v3

    .end local v3           #p:I
    .restart local v2       #p:I
    goto :goto_3

    .line 606
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v2           #p:I
    :cond_3
    iget-object v6, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->ns:Ljava/util/Stack;

    new-instance v7, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;

    iget v8, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->cur:I

    int-to-char v8, v8

    invoke-direct {v7, p0, v8, v5}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;-><init>(Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;CC)V

    invoke-virtual {v6, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    iget-object v6, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->this$0:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;

    iget-object v6, v6, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->sc:[C

    iget v7, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->cur:I

    aget-char v6, v6, v7

    if-nez v6, :cond_4

    .line 608
    const/4 v1, 0x1

    .line 609
    goto :goto_2

    .line 611
    :cond_4
    iget-object v6, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->this$0:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;

    iget-object v6, v6, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->lo:[C

    iget v7, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->cur:I

    aget-char v6, v6, v7

    iput v6, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->cur:I

    goto :goto_1

    .line 617
    :cond_5
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->up()I

    move-result v6

    iput v6, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->cur:I

    .line 618
    iget v6, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->cur:I

    if-ne v6, v4, :cond_1

    goto :goto_0

    .line 631
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->curkey:Ljava/lang/String;

    move v4, v5

    .line 632
    goto :goto_0
.end method

.method private up()I
    .locals 7

    .prologue
    const/4 v3, -0x1

    .line 540
    new-instance v1, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;

    invoke-direct {v1, p0}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;-><init>(Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;)V

    .line 541
    .local v1, i:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;
    const/4 v2, 0x0

    .line 543
    .local v2, res:I
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->ns:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->empty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 587
    :cond_0
    :goto_0
    return v3

    .line 547
    :cond_1
    iget v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->cur:I

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->this$0:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;

    iget-object v4, v4, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->sc:[C

    iget v5, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->cur:I

    aget-char v4, v4, v5

    if-nez v4, :cond_2

    .line 548
    iget-object v3, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->this$0:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;

    iget-object v3, v3, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->lo:[C

    iget v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->cur:I

    aget-char v3, v3, v4

    goto :goto_0

    .line 551
    :cond_2
    const/4 v0, 0x1

    .line 553
    .local v0, climb:Z
    :goto_1
    if-eqz v0, :cond_5

    .line 554
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->ns:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #i:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;
    check-cast v1, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;

    .line 555
    .restart local v1       #i:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;
    iget-char v4, v1, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;->child:C

    add-int/lit8 v4, v4, 0x1

    int-to-char v4, v4

    iput-char v4, v1, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;->child:C

    .line 556
    iget-char v4, v1, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;->child:C

    packed-switch v4, :pswitch_data_0

    .line 580
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->ns:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->empty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 583
    const/4 v0, 0x1

    .line 584
    goto :goto_1

    .line 558
    :pswitch_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->this$0:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;

    iget-object v4, v4, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->sc:[C

    iget-char v5, v1, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;->parent:C

    aget-char v4, v4, v5

    if-eqz v4, :cond_3

    .line 559
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->this$0:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;

    iget-object v4, v4, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->eq:[C

    iget-char v5, v1, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;->parent:C

    aget-char v2, v4, v5

    .line 560
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->ns:Ljava/util/Stack;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;->clone()Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->ks:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->this$0:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;

    iget-object v5, v5, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->sc:[C

    iget-char v6, v1, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;->parent:C

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 567
    :goto_2
    const/4 v0, 0x0

    .line 568
    goto :goto_1

    .line 563
    :cond_3
    iget-char v4, v1, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;->child:C

    add-int/lit8 v4, v4, 0x1

    int-to-char v4, v4

    iput-char v4, v1, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;->child:C

    .line 564
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->ns:Ljava/util/Stack;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;->clone()Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->this$0:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;

    iget-object v4, v4, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->hi:[C

    iget-char v5, v1, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;->parent:C

    aget-char v2, v4, v5

    goto :goto_2

    .line 571
    :pswitch_1
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->this$0:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;

    iget-object v4, v4, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->hi:[C

    iget-char v5, v1, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;->parent:C

    aget-char v2, v4, v5

    .line 572
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->ns:Ljava/util/Stack;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;->clone()Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator$Item;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->ks:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 574
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->ks:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->ks:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 576
    :cond_4
    const/4 v0, 0x0

    .line 577
    goto/16 :goto_1

    :cond_5
    move v3, v2

    .line 587
    goto/16 :goto_0

    .line 556
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getValue()C
    .locals 2

    .prologue
    .line 526
    iget v0, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->cur:I

    if-ltz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->this$0:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;

    iget-object v0, v0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->eq:[C

    iget v1, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->cur:I

    aget-char v0, v0, v1

    .line 529
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMoreElements()Z
    .locals 2

    .prologue
    .line 533
    iget v0, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->cur:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->nextElement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->curkey:Ljava/lang/String;

    .line 520
    .local v0, res:Ljava/lang/String;
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->up()I

    move-result v1

    iput v1, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->cur:I

    .line 521
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->run()I

    .line 522
    return-object v0
.end method

.method public rewind()V
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->ns:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    .line 513
    iget-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->ks:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 514
    iget-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->this$0:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;

    iget-char v0, v0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->root:C

    iput v0, p0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->cur:I

    .line 515
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree$Iterator;->run()I

    .line 516
    return-void
.end method
