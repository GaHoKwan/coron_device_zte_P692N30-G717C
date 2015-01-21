.class Lcom/itextpdf/text/pdf/CJKFont;
.super Lcom/itextpdf/text/pdf/BaseFont;
.source "CJKFont.java"


# static fields
.field private static final BRACKET:I = 0x1

.field static final CJK_ENCODING:Ljava/lang/String; = "UnicodeBigUnmarked"

.field private static final FIRST:I = 0x0

.field public static final RESOURCE_PATH_CMAP:Ljava/lang/String; = "com/itextpdf/text/pdf/fonts/cmaps/"

.field private static final SERIAL:I = 0x2

.field private static final V1Y:I = 0x370

.field private static final allFonts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field static cjkEncodings:Ljava/util/Properties;

.field static cjkFonts:Ljava/util/Properties;

.field private static propertiesLoaded:Z

.field private static final registryNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private CMap:Ljava/lang/String;

.field private cidByte:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidByte;

.field private cidDirect:Z

.field private cidUni:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidUni;

.field private fontDesc:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private fontName:Ljava/lang/String;

.field private hMetrics:Lcom/itextpdf/text/pdf/IntHashtable;

.field private style:Ljava/lang/String;

.field private uniCid:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapUniCid;

.field private uniMap:Ljava/lang/String;

.field private vMetrics:Lcom/itextpdf/text/pdf/IntHashtable;

.field private vertical:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/CJKFont;->cjkFonts:Ljava/util/Properties;

    .line 82
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/CJKFont;->cjkEncodings:Ljava/util/Properties;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/CJKFont;->allFonts:Ljava/util/HashMap;

    .line 84
    const/4 v0, 0x0

    sput-boolean v0, Lcom/itextpdf/text/pdf/CJKFont;->propertiesLoaded:Z

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/CJKFont;->registryNames:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter "fontName"
    .parameter "enc"
    .parameter "emb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 150
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/BaseFont;-><init>()V

    .line 97
    const-string v1, ""

    iput-object v1, p0, Lcom/itextpdf/text/pdf/CJKFont;->style:Ljava/lang/String;

    .line 101
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->cidDirect:Z

    .line 107
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->vertical:Z

    .line 151
    invoke-static {}, Lcom/itextpdf/text/pdf/CJKFont;->loadProperties()V

    .line 152
    iput v3, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontType:I

    .line 153
    invoke-static {p1}, Lcom/itextpdf/text/pdf/CJKFont;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, nameBase:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/itextpdf/text/pdf/CJKFont;->isCJKFont(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    new-instance v1, Lcom/itextpdf/text/DocumentException;

    const-string v2, "font.1.with.2.encoding.is.not.a.cjk.font"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object p2, v3, v5

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 157
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/CJKFont;->style:Ljava/lang/String;

    .line 158
    move-object p1, v0

    .line 160
    :cond_1
    iput-object p1, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontName:Ljava/lang/String;

    .line 161
    const-string v1, "UnicodeBigUnmarked"

    iput-object v1, p0, Lcom/itextpdf/text/pdf/CJKFont;->encoding:Ljava/lang/String;

    .line 162
    const-string v1, "V"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/CJKFont;->vertical:Z

    .line 163
    iput-object p2, p0, Lcom/itextpdf/text/pdf/CJKFont;->CMap:Ljava/lang/String;

    .line 164
    const-string v1, "Identity-H"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Identity-V"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 165
    :cond_2
    iput-boolean v5, p0, Lcom/itextpdf/text/pdf/CJKFont;->cidDirect:Z

    .line 166
    :cond_3
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/CJKFont;->loadCMaps()V

    .line 167
    return-void
.end method

.method public static GetCompatibleFont(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "enc"

    .prologue
    const/4 v5, 0x0

    .line 206
    invoke-static {}, Lcom/itextpdf/text/pdf/CJKFont;->loadProperties()V

    .line 207
    const/4 v3, 0x0

    .line 208
    .local v3, registry:Ljava/lang/String;
    sget-object v4, Lcom/itextpdf/text/pdf/CJKFont;->registryNames:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 209
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 210
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #registry:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 214
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v3       #registry:Ljava/lang/String;
    :cond_1
    if-nez v3, :cond_2

    move-object v4, v5

    .line 220
    :goto_0
    return-object v4

    .line 216
    :cond_2
    sget-object v4, Lcom/itextpdf/text/pdf/CJKFont;->allFonts:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 217
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v6, "Registry"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 218
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_4
    move-object v4, v5

    .line 220
    goto :goto_0
.end method

.method static convertToHCIDMetrics([ILcom/itextpdf/text/pdf/IntHashtable;)Ljava/lang/String;
    .locals 13
    .parameter "keys"
    .parameter "h"

    .prologue
    const/4 v8, 0x0

    const/16 v12, 0x5d

    const/16 v11, 0x5b

    const/16 v10, 0x20

    .line 507
    array-length v9, p0

    if-nez v9, :cond_1

    .line 584
    :cond_0
    :goto_0
    return-object v8

    .line 509
    :cond_1
    const/4 v3, 0x0

    .line 510
    .local v3, lastCid:I
    const/4 v4, 0x0

    .line 512
    .local v4, lastValue:I
    const/4 v5, 0x0

    .local v5, start:I
    :goto_1
    array-length v9, p0

    if-ge v5, v9, :cond_2

    .line 513
    aget v3, p0, v5

    .line 514
    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v4

    .line 515
    if-eqz v4, :cond_3

    .line 516
    add-int/lit8 v5, v5, 0x1

    .line 520
    :cond_2
    if-eqz v4, :cond_0

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 523
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 525
    const/4 v6, 0x0

    .line 526
    .local v6, state:I
    move v2, v5

    .local v2, k:I
    :goto_2
    array-length v8, p0

    if-ge v2, v8, :cond_b

    .line 527
    aget v1, p0, v2

    .line 528
    .local v1, cid:I
    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v7

    .line 529
    .local v7, value:I
    if-nez v7, :cond_4

    .line 526
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 512
    .end local v0           #buf:Ljava/lang/StringBuilder;
    .end local v1           #cid:I
    .end local v2           #k:I
    .end local v6           #state:I
    .end local v7           #value:I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 531
    .restart local v0       #buf:Ljava/lang/StringBuilder;
    .restart local v1       #cid:I
    .restart local v2       #k:I
    .restart local v6       #state:I
    .restart local v7       #value:I
    :cond_4
    packed-switch v6, :pswitch_data_0

    .line 567
    :cond_5
    :goto_4
    move v4, v7

    .line 568
    move v3, v1

    goto :goto_3

    .line 533
    :pswitch_0
    add-int/lit8 v8, v3, 0x1

    if-ne v1, v8, :cond_6

    if-ne v7, v4, :cond_6

    .line 534
    const/4 v6, 0x2

    goto :goto_4

    .line 536
    :cond_6
    add-int/lit8 v8, v3, 0x1

    if-ne v1, v8, :cond_7

    .line 537
    const/4 v6, 0x1

    .line 538
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 541
    :cond_7
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 546
    :pswitch_1
    add-int/lit8 v8, v3, 0x1

    if-ne v1, v8, :cond_8

    if-ne v7, v4, :cond_8

    .line 547
    const/4 v6, 0x2

    .line 548
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 550
    :cond_8
    add-int/lit8 v8, v3, 0x1

    if-ne v1, v8, :cond_9

    .line 551
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 554
    :cond_9
    const/4 v6, 0x0

    .line 555
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 560
    :pswitch_2
    add-int/lit8 v8, v3, 0x1

    if-ne v1, v8, :cond_a

    if-eq v7, v4, :cond_5

    .line 561
    :cond_a
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 562
    const/4 v6, 0x0

    goto :goto_4

    .line 570
    .end local v1           #cid:I
    .end local v7           #value:I
    :cond_b
    packed-switch v6, :pswitch_data_1

    .line 584
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 572
    :pswitch_3
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 576
    :pswitch_4
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 580
    :pswitch_5
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 531
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 570
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static convertToVCIDMetrics([ILcom/itextpdf/text/pdf/IntHashtable;Lcom/itextpdf/text/pdf/IntHashtable;)Ljava/lang/String;
    .locals 12
    .parameter "keys"
    .parameter "v"
    .parameter "h"

    .prologue
    .line 588
    array-length v10, p0

    if-nez v10, :cond_0

    .line 589
    const/4 v10, 0x0

    .line 643
    :goto_0
    return-object v10

    .line 590
    :cond_0
    const/4 v4, 0x0

    .line 591
    .local v4, lastCid:I
    const/4 v6, 0x0

    .line 592
    .local v6, lastValue:I
    const/4 v5, 0x0

    .line 594
    .local v5, lastHValue:I
    const/4 v7, 0x0

    .local v7, start:I
    :goto_1
    array-length v10, p0

    if-ge v7, v10, :cond_1

    .line 595
    aget v4, p0, v7

    .line 596
    invoke-virtual {p1, v4}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v6

    .line 597
    if-eqz v6, :cond_2

    .line 598
    add-int/lit8 v7, v7, 0x1

    .line 604
    :cond_1
    if-nez v6, :cond_3

    .line 605
    const/4 v10, 0x0

    goto :goto_0

    .line 602
    :cond_2
    invoke-virtual {p2, v4}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v5

    .line 594
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 606
    :cond_3
    if-nez v5, :cond_4

    .line 607
    const/16 v5, 0x3e8

    .line 608
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 609
    .local v0, buf:Ljava/lang/StringBuilder;
    const/16 v10, 0x5b

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 611
    const/4 v8, 0x0

    .line 612
    .local v8, state:I
    move v3, v7

    .local v3, k:I
    :goto_2
    array-length v10, p0

    if-ge v3, v10, :cond_a

    .line 613
    aget v1, p0, v3

    .line 614
    .local v1, cid:I
    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v9

    .line 615
    .local v9, value:I
    if-nez v9, :cond_5

    .line 612
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 617
    :cond_5
    invoke-virtual {p2, v4}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v2

    .line 618
    .local v2, hValue:I
    if-nez v2, :cond_6

    .line 619
    const/16 v2, 0x3e8

    .line 620
    :cond_6
    packed-switch v8, :pswitch_data_0

    .line 638
    :cond_7
    :goto_4
    :pswitch_0
    move v6, v9

    .line 639
    move v4, v1

    .line 640
    move v5, v2

    goto :goto_3

    .line 622
    :pswitch_1
    add-int/lit8 v10, v4, 0x1

    if-ne v1, v10, :cond_8

    if-ne v9, v6, :cond_8

    if-ne v2, v5, :cond_8

    .line 623
    const/4 v8, 0x2

    goto :goto_4

    .line 626
    :cond_8
    const/16 v10, 0x20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    neg-int v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    div-int/lit8 v11, v5, 0x2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x370

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 631
    :pswitch_2
    add-int/lit8 v10, v4, 0x1

    if-ne v1, v10, :cond_9

    if-ne v9, v6, :cond_9

    if-eq v2, v5, :cond_7

    .line 632
    :cond_9
    const/16 v10, 0x20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    neg-int v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    div-int/lit8 v11, v5, 0x2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x370

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 633
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 642
    .end local v1           #cid:I
    .end local v2           #hValue:I
    .end local v9           #value:I
    :cond_a
    const/16 v10, 0x20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    neg-int v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    div-int/lit8 v11, v5, 0x2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x370

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 620
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static createMetric(Ljava/lang/String;)Lcom/itextpdf/text/pdf/IntHashtable;
    .locals 4
    .parameter "s"

    .prologue
    .line 497
    new-instance v0, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    .line 498
    .local v0, h:Lcom/itextpdf/text/pdf/IntHashtable;
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 499
    .local v2, tk:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 500
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 501
    .local v1, n1:I
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    goto :goto_0

    .line 503
    .end local v1           #n1:I
    :cond_0
    return-object v0
.end method

.method private getBBox(I)F
    .locals 6
    .parameter "idx"

    .prologue
    .line 392
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontDesc:Ljava/util/HashMap;

    const-string v5, "FontBBox"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 393
    .local v2, s:Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, " []\r\n\t\u000c"

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .local v3, tk:Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, ret:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 396
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 395
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    return v4
.end method

.method private getCIDFont(Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/IntHashtable;)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 9
    .parameter "fontDescriptor"
    .parameter "cjkTag"

    .prologue
    const/4 v8, 0x0

    .line 313
    new-instance v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v1, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 314
    .local v1, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->CIDFONTTYPE0:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 315
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->BASEFONT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfName;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/itextpdf/text/pdf/CJKFont;->style:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 316
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->FONTDESCRIPTOR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v4, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 317
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/IntHashtable;->toOrderedKeys()[I

    move-result-object v2

    .line 318
    .local v2, keys:[I
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->hMetrics:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-static {v2, v4}, Lcom/itextpdf/text/pdf/CJKFont;->convertToHCIDMetrics([ILcom/itextpdf/text/pdf/IntHashtable;)Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, w:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 320
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->W:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfLiteral;

    invoke-direct {v5, v3}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 321
    :cond_0
    iget-boolean v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->vertical:Z

    if-eqz v4, :cond_2

    .line 322
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->vMetrics:Lcom/itextpdf/text/pdf/IntHashtable;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/CJKFont;->hMetrics:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-static {v2, v4, v5}, Lcom/itextpdf/text/pdf/CJKFont;->convertToVCIDMetrics([ILcom/itextpdf/text/pdf/IntHashtable;Lcom/itextpdf/text/pdf/IntHashtable;)Ljava/lang/String;

    move-result-object v3

    .line 323
    if-eqz v3, :cond_1

    .line 324
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->W2:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfLiteral;

    invoke-direct {v5, v3}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 328
    :cond_1
    :goto_0
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 329
    .local v0, cdic:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-boolean v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->cidDirect:Z

    if-eqz v4, :cond_3

    .line 330
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->REGISTRY:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfString;

    iget-object v6, p0, Lcom/itextpdf/text/pdf/CJKFont;->cidUni:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidUni;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidUni;->getRegistry()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v8}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 331
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->ORDERING:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfString;

    iget-object v6, p0, Lcom/itextpdf/text/pdf/CJKFont;->cidUni:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidUni;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidUni;->getOrdering()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v8}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 332
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->SUPPLEMENT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfNumber;

    iget-object v6, p0, Lcom/itextpdf/text/pdf/CJKFont;->cidUni:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidUni;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidUni;->getSupplement()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 339
    :goto_1
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->CIDSYSTEMINFO:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v4, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 340
    return-object v1

    .line 327
    .end local v0           #cdic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_2
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->DW:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfNumber;

    const/16 v6, 0x3e8

    invoke-direct {v5, v6}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 335
    .restart local v0       #cdic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_3
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->REGISTRY:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfString;

    iget-object v6, p0, Lcom/itextpdf/text/pdf/CJKFont;->cidByte:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidByte;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidByte;->getRegistry()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v8}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 336
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->ORDERING:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfString;

    iget-object v6, p0, Lcom/itextpdf/text/pdf/CJKFont;->cidByte:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidByte;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidByte;->getOrdering()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v8}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 337
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->SUPPLEMENT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfNumber;

    iget-object v6, p0, Lcom/itextpdf/text/pdf/CJKFont;->cidByte:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidByte;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidByte;->getSupplement()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_1
.end method

.method private getDescNumber(Ljava/lang/String;)F
    .locals 1
    .parameter "name"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontDesc:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private getFontBaseType(Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 5
    .parameter "CIDFont"

    .prologue
    .line 344
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 345
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->TYPE0:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 346
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontName:Ljava/lang/String;

    .line 347
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/CJKFont;->style:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/text/pdf/CJKFont;->style:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 349
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/text/pdf/CJKFont;->CMap:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->BASEFONT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v3, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 351
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ENCODING:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfName;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->CMap:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 352
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DESCENDANTFONTS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v3, p1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>(Lcom/itextpdf/text/pdf/PdfObject;)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 353
    return-object v0
.end method

.method private getFontDescriptor()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 6

    .prologue
    .line 297
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FONTDESCRIPTOR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 298
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->ASCENT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfLiteral;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontDesc:Ljava/util/HashMap;

    const-string v5, "Ascent"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 299
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->CAPHEIGHT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfLiteral;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontDesc:Ljava/util/HashMap;

    const-string v5, "CapHeight"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 300
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->DESCENT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfLiteral;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontDesc:Ljava/util/HashMap;

    const-string v5, "Descent"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 301
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->FLAGS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfLiteral;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontDesc:Ljava/util/HashMap;

    const-string v5, "Flags"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 302
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->FONTBBOX:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfLiteral;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontDesc:Ljava/util/HashMap;

    const-string v5, "FontBBox"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 303
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FONTNAME:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/itextpdf/text/pdf/CJKFont;->style:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 304
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->ITALICANGLE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfLiteral;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontDesc:Ljava/util/HashMap;

    const-string v5, "ItalicAngle"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 305
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->STEMV:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfLiteral;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontDesc:Ljava/util/HashMap;

    const-string v5, "StemV"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 306
    new-instance v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 307
    .local v1, pdic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->PANOSE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfString;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontDesc:Ljava/util/HashMap;

    const-string v5, "Panose"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 308
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->STYLE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 309
    return-object v0
.end method

.method public static isCJKFont(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "fontName"
    .parameter "enc"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 229
    invoke-static {}, Lcom/itextpdf/text/pdf/CJKFont;->loadProperties()V

    .line 230
    sget-object v2, Lcom/itextpdf/text/pdf/CJKFont;->registryNames:Ljava/util/HashMap;

    const-string v5, "fonts"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v4

    .line 232
    :cond_1
    sget-object v2, Lcom/itextpdf/text/pdf/CJKFont;->registryNames:Ljava/util/HashMap;

    const-string v5, "fonts"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    const-string v2, "Identity-H"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Identity-V"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v4, v3

    .line 235
    goto :goto_0

    .line 236
    :cond_3
    sget-object v2, Lcom/itextpdf/text/pdf/CJKFont;->allFonts:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v5, "Registry"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 237
    .local v1, registry:Ljava/lang/String;
    sget-object v2, Lcom/itextpdf/text/pdf/CJKFont;->registryNames:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 238
    .local v0, encodings:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_1
    move v4, v2

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_1
.end method

.method private loadCMaps()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 175
    :try_start_0
    sget-object v4, Lcom/itextpdf/text/pdf/CJKFont;->allFonts:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    iput-object v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontDesc:Ljava/util/HashMap;

    .line 176
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontDesc:Ljava/util/HashMap;

    const-string v5, "W"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/IntHashtable;

    iput-object v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->hMetrics:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 177
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontDesc:Ljava/util/HashMap;

    const-string v5, "W2"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/IntHashtable;

    iput-object v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->vMetrics:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 178
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontDesc:Ljava/util/HashMap;

    const-string v5, "Registry"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 179
    .local v3, registry:Ljava/lang/String;
    const-string v4, ""

    iput-object v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->uniMap:Ljava/lang/String;

    .line 180
    sget-object v4, Lcom/itextpdf/text/pdf/CJKFont;->registryNames:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_Uni"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 181
    .local v2, name:Ljava/lang/String;
    iput-object v2, p0, Lcom/itextpdf/text/pdf/CJKFont;->uniMap:Ljava/lang/String;

    .line 182
    const-string v4, "V"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->vertical:Z

    if-eqz v4, :cond_2

    .line 187
    .end local v2           #name:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->cidDirect:Z

    if-eqz v4, :cond_3

    .line 188
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->uniMap:Ljava/lang/String;

    invoke-static {v4}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCache;->getCachedCMapCidUni(Ljava/lang/String;)Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidUni;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->cidUni:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidUni;

    .line 198
    :goto_1
    return-void

    .line 184
    .restart local v2       #name:Ljava/lang/String;
    :cond_2
    const-string v4, "V"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->vertical:Z

    if-nez v4, :cond_0

    goto :goto_0

    .line 191
    .end local v2           #name:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->uniMap:Ljava/lang/String;

    invoke-static {v4}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCache;->getCachedCMapUniCid(Ljava/lang/String;)Lcom/itextpdf/text/pdf/fonts/cmaps/CMapUniCid;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->uniCid:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapUniCid;

    .line 192
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->CMap:Ljava/lang/String;

    invoke-static {v4}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCache;->getCachedCMapCidByte(Ljava/lang/String;)Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidByte;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->cidByte:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidByte;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 195
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #registry:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 196
    .local v0, ex:Ljava/lang/Exception;
    new-instance v4, Lcom/itextpdf/text/DocumentException;

    invoke-direct {v4, v0}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method private static loadProperties()V
    .locals 5

    .prologue
    .line 110
    sget-boolean v2, Lcom/itextpdf/text/pdf/CJKFont;->propertiesLoaded:Z

    if-eqz v2, :cond_0

    .line 125
    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    return-void

    .line 112
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    sget-object v3, Lcom/itextpdf/text/pdf/CJKFont;->allFonts:Ljava/util/HashMap;

    monitor-enter v3

    .line 113
    :try_start_0
    sget-boolean v2, Lcom/itextpdf/text/pdf/CJKFont;->propertiesLoaded:Z

    if-eqz v2, :cond_1

    .line 114
    monitor-exit v3

    goto :goto_0

    .line 124
    .restart local v1       #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 116
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/itextpdf/text/pdf/CJKFont;->loadRegistry()V

    .line 117
    sget-object v2, Lcom/itextpdf/text/pdf/CJKFont;->registryNames:Ljava/util/HashMap;

    const-string v4, "fonts"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 118
    .local v0, font:Ljava/lang/String;
    sget-object v2, Lcom/itextpdf/text/pdf/CJKFont;->allFonts:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/itextpdf/text/pdf/CJKFont;->readFontProperties(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 121
    .end local v0           #font:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 123
    :cond_2
    const/4 v2, 0x1

    :try_start_2
    sput-boolean v2, Lcom/itextpdf/text/pdf/CJKFont;->propertiesLoaded:Z

    .line 124
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static loadRegistry()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    const-string v11, "com/itextpdf/text/pdf/fonts/cmaps/cjk_registry.properties"

    invoke-static {v11}, Lcom/itextpdf/text/pdf/CJKFont;->getResourceStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 129
    .local v4, is:Ljava/io/InputStream;
    new-instance v7, Ljava/util/Properties;

    invoke-direct {v7}, Ljava/util/Properties;-><init>()V

    .line 130
    .local v7, p:Ljava/util/Properties;
    invoke-virtual {v7, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 131
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 132
    invoke-virtual {v7}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, key:Ljava/lang/Object;
    move-object v11, v5

    .line 133
    check-cast v11, Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 134
    .local v10, value:Ljava/lang/String;
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 135
    .local v9, sp:[Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 136
    .local v1, hs:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v6, :cond_1

    aget-object v8, v0, v3

    .line 137
    .local v8, s:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 138
    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 140
    .end local v8           #s:Ljava/lang/String;
    :cond_1
    sget-object v11, Lcom/itextpdf/text/pdf/CJKFont;->registryNames:Ljava/util/HashMap;

    check-cast v5, Ljava/lang/String;

    .end local v5           #key:Ljava/lang/Object;
    invoke-virtual {v11, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 143
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #hs:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v9           #sp:[Ljava/lang/String;
    .end local v10           #value:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static readFontProperties(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 9
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 647
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".properties"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 648
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com/itextpdf/text/pdf/fonts/cmaps/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/itextpdf/text/pdf/CJKFont;->getResourceStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 649
    .local v3, is:Ljava/io/InputStream;
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 650
    .local v6, p:Ljava/util/Properties;
    invoke-virtual {v6, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 651
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 652
    const-string v7, "W"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/itextpdf/text/pdf/CJKFont;->createMetric(Ljava/lang/String;)Lcom/itextpdf/text/pdf/IntHashtable;

    move-result-object v0

    .line 653
    .local v0, W:Lcom/itextpdf/text/pdf/IntHashtable;
    const-string v7, "W"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    const-string v7, "W2"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/itextpdf/text/pdf/CJKFont;->createMetric(Ljava/lang/String;)Lcom/itextpdf/text/pdf/IntHashtable;

    move-result-object v1

    .line 655
    .local v1, W2:Lcom/itextpdf/text/pdf/IntHashtable;
    const-string v7, "W2"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 657
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v6}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 658
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    .local v5, obj:Ljava/lang/Object;
    move-object v7, v5

    .line 659
    check-cast v7, Ljava/lang/String;

    check-cast v5, Ljava/lang/String;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {v6, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 661
    :cond_0
    const-string v7, "W"

    invoke-virtual {v4, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    const-string v7, "W2"

    invoke-virtual {v4, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    return-object v4
.end method


# virtual methods
.method public charExists(I)Z
    .locals 3
    .parameter "c"

    .prologue
    const/4 v0, 0x1

    .line 699
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/CJKFont;->cidDirect:Z

    if-eqz v1, :cond_1

    .line 701
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CJKFont;->cidByte:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidByte;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/CJKFont;->uniCid:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapUniCid;

    invoke-virtual {v2, p1}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapUniCid;->lookup(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidByte;->lookup(I)[B

    move-result-object v1

    array-length v1, v1

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method convertToBytes(I)[B
    .locals 2
    .parameter "char1"

    .prologue
    .line 781
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/CJKFont;->cidDirect:Z

    if-eqz v0, :cond_0

    .line 782
    invoke-super {p0, p1}, Lcom/itextpdf/text/pdf/BaseFont;->convertToBytes(I)[B

    move-result-object v0

    .line 783
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CJKFont;->cidByte:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidByte;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/CJKFont;->uniCid:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapUniCid;

    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapUniCid;->lookup(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidByte;->lookup(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method convertToBytes(Ljava/lang/String;)[B
    .locals 6
    .parameter "text"

    .prologue
    .line 749
    iget-boolean v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->cidDirect:Z

    if-eqz v4, :cond_0

    .line 750
    invoke-super {p0, p1}, Lcom/itextpdf/text/pdf/BaseFont;->convertToBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 766
    :goto_0
    return-object v4

    .line 752
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 753
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/CJKFont;->convertToBytes(I)[B

    move-result-object v4

    goto :goto_0

    .line 754
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 755
    .local v0, bout:Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .local v2, k:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 757
    invoke-static {p1, v2}, Lcom/itextpdf/text/Utilities;->isSurrogatePair(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 758
    invoke-static {p1, v2}, Lcom/itextpdf/text/Utilities;->convertToUtf32(Ljava/lang/String;I)I

    move-result v3

    .line 759
    .local v3, val:I
    add-int/lit8 v2, v2, 0x1

    .line 764
    :goto_2
    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/CJKFont;->convertToBytes(I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 755
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 762
    .end local v3           #val:I
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .restart local v3       #val:I
    goto :goto_2

    .line 766
    .end local v3           #val:I
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 768
    .end local v0           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v2           #k:I
    :catch_0
    move-exception v1

    .line 769
    .local v1, ex:Ljava/lang/Exception;
    new-instance v4, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v4, v1}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method public getAllNameEntries()[[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 464
    new-array v0, v3, [[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "4"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontName:Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    return-object v0
.end method

.method public getCharBBox(I)[I
    .locals 1
    .parameter "c"

    .prologue
    .line 733
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCidCode(I)I
    .locals 1
    .parameter "c"

    .prologue
    .line 678
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/CJKFont;->cidDirect:Z

    if-eqz v0, :cond_0

    .line 680
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CJKFont;->uniCid:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapUniCid;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapUniCid;->lookup(I)I

    move-result p1

    goto :goto_0
.end method

.method public getFamilyFontName()[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CJKFont;->getFullFontName()[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontDescriptor(IF)F
    .locals 4
    .parameter "key"
    .parameter "fontSize"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/high16 v2, 0x447a

    .line 409
    packed-switch p1, :pswitch_data_0

    .line 433
    :goto_0
    :pswitch_0
    return v0

    .line 412
    :pswitch_1
    const-string v0, "Ascent"

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/CJKFont;->getDescNumber(Ljava/lang/String;)F

    move-result v0

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 414
    :pswitch_2
    const-string v0, "CapHeight"

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/CJKFont;->getDescNumber(Ljava/lang/String;)F

    move-result v0

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 417
    :pswitch_3
    const-string v0, "Descent"

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/CJKFont;->getDescNumber(Ljava/lang/String;)F

    move-result v0

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 419
    :pswitch_4
    const-string v0, "ItalicAngle"

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/CJKFont;->getDescNumber(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    .line 421
    :pswitch_5
    invoke-direct {p0, v1}, Lcom/itextpdf/text/pdf/CJKFont;->getBBox(I)F

    move-result v0

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 423
    :pswitch_6
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/CJKFont;->getBBox(I)F

    move-result v0

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 425
    :pswitch_7
    invoke-direct {p0, v3}, Lcom/itextpdf/text/pdf/CJKFont;->getBBox(I)F

    move-result v0

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 427
    :pswitch_8
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/CJKFont;->getBBox(I)F

    move-result v0

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 431
    :pswitch_9
    invoke-direct {p0, v3}, Lcom/itextpdf/text/pdf/CJKFont;->getBBox(I)F

    move-result v0

    invoke-direct {p0, v1}, Lcom/itextpdf/text/pdf/CJKFont;->getBBox(I)F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 409
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public getFullFontName()[[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 451
    new-array v0, v3, [[Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontName:Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    return-object v0
.end method

.method public getFullFontStream()Lcom/itextpdf/text/pdf/PdfStream;
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKerning(II)I
    .locals 1
    .parameter "char1"
    .parameter "char2"

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public getPostscriptFontName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontName:Ljava/lang/String;

    return-object v0
.end method

.method protected getRawCharBBox(ILjava/lang/String;)[I
    .locals 1
    .parameter "c"
    .parameter "name"

    .prologue
    .line 738
    const/4 v0, 0x0

    return-object v0
.end method

.method getRawWidth(ILjava/lang/String;)I
    .locals 1
    .parameter "c"
    .parameter "name"

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method getUniMap()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CJKFont;->uniMap:Ljava/lang/String;

    return-object v0
.end method

.method public getUnicodeEquivalent(I)I
    .locals 1
    .parameter "c"

    .prologue
    .line 668
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/CJKFont;->cidDirect:Z

    if-eqz v0, :cond_0

    .line 669
    const/16 v0, 0x7fff

    if-ne p1, v0, :cond_1

    .line 670
    const/16 p1, 0xa

    .line 673
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 671
    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CJKFont;->cidUni:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidUni;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidUni;->lookup(I)I

    move-result p1

    goto :goto_0
.end method

.method public getWidth(I)I
    .locals 3
    .parameter "char1"

    .prologue
    .line 248
    move v0, p1

    .line 249
    .local v0, c:I
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/CJKFont;->cidDirect:Z

    if-nez v2, :cond_0

    .line 250
    iget-object v2, p0, Lcom/itextpdf/text/pdf/CJKFont;->uniCid:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapUniCid;

    invoke-virtual {v2, p1}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapUniCid;->lookup(I)I

    move-result v0

    .line 252
    :cond_0
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/CJKFont;->vertical:Z

    if-eqz v2, :cond_1

    .line 253
    iget-object v2, p0, Lcom/itextpdf/text/pdf/CJKFont;->vMetrics:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v1

    .line 256
    .local v1, v:I
    :goto_0
    if-lez v1, :cond_2

    .line 259
    .end local v1           #v:I
    :goto_1
    return v1

    .line 255
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/text/pdf/CJKFont;->hMetrics:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v1

    .restart local v1       #v:I
    goto :goto_0

    .line 259
    :cond_2
    const/16 v1, 0x3e8

    goto :goto_1
.end method

.method public getWidth(Ljava/lang/String;)I
    .locals 4
    .parameter "text"

    .prologue
    .line 264
    const/4 v1, 0x0

    .line 265
    .local v1, total:I
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/CJKFont;->cidDirect:Z

    if-eqz v3, :cond_0

    .line 266
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 267
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/CJKFont;->getWidth(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    .end local v0           #k:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #k:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 273
    invoke-static {p1, v0}, Lcom/itextpdf/text/Utilities;->isSurrogatePair(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 274
    invoke-static {p1, v0}, Lcom/itextpdf/text/Utilities;->convertToUtf32(Ljava/lang/String;I)I

    move-result v2

    .line 275
    .local v2, val:I
    add-int/lit8 v0, v0, 0x1

    .line 280
    :goto_2
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/CJKFont;->getWidth(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 278
    .end local v2           #val:I
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .restart local v2       #val:I
    goto :goto_2

    .line 283
    .end local v2           #val:I
    :cond_2
    return v1
.end method

.method public hasKernPairs()Z
    .locals 1

    .prologue
    .line 688
    const/4 v0, 0x0

    return v0
.end method

.method public isIdentity()Z
    .locals 1

    .prologue
    .line 787
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/CJKFont;->cidDirect:Z

    return v0
.end method

.method public setCharAdvance(II)Z
    .locals 1
    .parameter "c"
    .parameter "advance"

    .prologue
    .line 713
    const/4 v0, 0x0

    return v0
.end method

.method public setKerning(III)Z
    .locals 1
    .parameter "char1"
    .parameter "char2"
    .parameter "kern"

    .prologue
    .line 728
    const/4 v0, 0x0

    return v0
.end method

.method public setPostscriptFontName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 723
    iput-object p1, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontName:Ljava/lang/String;

    .line 724
    return-void
.end method

.method writeFont(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/pdf/PdfIndirectReference;[Ljava/lang/Object;)V
    .locals 5
    .parameter "writer"
    .parameter "ref"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    const/4 v4, 0x0

    aget-object v0, p3, v4

    check-cast v0, Lcom/itextpdf/text/pdf/IntHashtable;

    .line 359
    .local v0, cjkTag:Lcom/itextpdf/text/pdf/IntHashtable;
    const/4 v1, 0x0

    .line 360
    .local v1, ind_font:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    const/4 v3, 0x0

    .line 361
    .local v3, pobj:Lcom/itextpdf/text/pdf/PdfObject;
    const/4 v2, 0x0

    .line 362
    .local v2, obj:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/CJKFont;->getFontDescriptor()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    .line 363
    if-eqz v3, :cond_0

    .line 364
    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v2

    .line 365
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v1

    .line 367
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/itextpdf/text/pdf/CJKFont;->getCIDFont(Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/IntHashtable;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    .line 368
    if-eqz v3, :cond_1

    .line 369
    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v2

    .line 370
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v1

    .line 372
    :cond_1
    invoke-direct {p0, v1}, Lcom/itextpdf/text/pdf/CJKFont;->getFontBaseType(Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    .line 373
    invoke-virtual {p1, v3, p2}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 374
    return-void
.end method
