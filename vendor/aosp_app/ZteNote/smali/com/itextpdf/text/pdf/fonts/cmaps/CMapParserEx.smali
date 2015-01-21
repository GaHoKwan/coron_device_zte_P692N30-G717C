.class public Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParserEx;
.super Ljava/lang/Object;
.source "CMapParserEx.java"


# static fields
.field private static final CMAPNAME:Lcom/itextpdf/text/pdf/PdfName; = null

.field private static final DEF:Ljava/lang/String; = "def"

.field private static final ENDBFCHAR:Ljava/lang/String; = "endbfchar"

.field private static final ENDBFRANGE:Ljava/lang/String; = "endbfrange"

.field private static final ENDCIDCHAR:Ljava/lang/String; = "endcidchar"

.field private static final ENDCIDRANGE:Ljava/lang/String; = "endcidrange"

.field private static final MAXLEVEL:I = 0xa

.field private static final USECMAP:Ljava/lang/String; = "usecmap"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    const-string v1, "CMapName"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParserEx;->CMAPNAME:Lcom/itextpdf/text/pdf/PdfName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encodeSequence(I[BCLjava/util/ArrayList;)V
    .locals 8
    .parameter "size"
    .parameter "seqs"
    .parameter "cid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BC",
            "Ljava/util/ArrayList",
            "<[C>;)V"
        }
    .end annotation

    .prologue
    .local p3, planes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[C>;"
    const/4 v7, 0x0

    const v6, 0x8000

    .line 141
    add-int/lit8 p0, p0, -0x1

    .line 142
    const/4 v2, 0x0

    .line 143
    .local v2, nextPlane:I
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_0
    if-ge v1, p0, :cond_2

    .line 144
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [C

    .line 145
    .local v4, plane:[C
    aget-byte v5, p1, v1

    and-int/lit16 v3, v5, 0xff

    .line 146
    .local v3, one:I
    aget-char v0, v4, v3

    .line 147
    .local v0, c:C
    if-eqz v0, :cond_0

    and-int v5, v0, v6

    if-nez v5, :cond_0

    .line 148
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "inconsistent.mapping"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 149
    :cond_0
    if-nez v0, :cond_1

    .line 150
    const/16 v5, 0x100

    new-array v5, v5, [C

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    or-int/2addr v5, v6

    int-to-char v0, v5

    .line 152
    aput-char v0, v4, v3

    .line 154
    :cond_1
    and-int/lit16 v2, v0, 0x7fff

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v0           #c:C
    .end local v3           #one:I
    .end local v4           #plane:[C
    :cond_2
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [C

    .line 157
    .restart local v4       #plane:[C
    aget-byte v5, p1, p0

    and-int/lit16 v3, v5, 0xff

    .line 158
    .restart local v3       #one:I
    aget-char v0, v4, v3

    .line 159
    .restart local v0       #c:C
    and-int v5, v0, v6

    if-eqz v5, :cond_3

    .line 160
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "inconsistent.mapping"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 161
    :cond_3
    aput-char p2, v4, v3

    .line 162
    return-void
.end method

.method public static parseCid(Ljava/lang/String;Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;Lcom/itextpdf/text/pdf/fonts/cmaps/CidLocation;)V
    .locals 1
    .parameter "cmapName"
    .parameter "cmap"
    .parameter "location"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParserEx;->parseCid(Ljava/lang/String;Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;Lcom/itextpdf/text/pdf/fonts/cmaps/CidLocation;I)V

    .line 77
    return-void
.end method

.method private static parseCid(Ljava/lang/String;Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;Lcom/itextpdf/text/pdf/fonts/cmaps/CidLocation;I)V
    .locals 12
    .parameter "cmapName"
    .parameter "cmap"
    .parameter "location"
    .parameter "level"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    const/16 v9, 0xa

    if-lt p3, v9, :cond_0

    .line 138
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-interface {p2, p0}, Lcom/itextpdf/text/pdf/fonts/cmaps/CidLocation;->getLocation(Ljava/lang/String;)Lcom/itextpdf/text/pdf/PRTokeniser;

    move-result-object v2

    .line 84
    .local v2, inp:Lcom/itextpdf/text/pdf/PRTokeniser;
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    new-instance v0, Lcom/itextpdf/text/pdf/PdfContentParser;

    invoke-direct {v0, v2}, Lcom/itextpdf/text/pdf/PdfContentParser;-><init>(Lcom/itextpdf/text/pdf/PRTokeniser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .local v0, cp:Lcom/itextpdf/text/pdf/PdfContentParser;
    const/16 v8, 0x32

    .line 89
    .local v8, maxExc:I
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfContentParser;->parse(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    :try_start_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    if-eqz v9, :cond_2

    .line 136
    :goto_2
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->close()V

    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, ex:Ljava/lang/Exception;
    add-int/lit8 v8, v8, -0x1

    if-gez v8, :cond_1

    goto :goto_2

    .line 98
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_2
    :try_start_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, last:Ljava/lang/String;
    if-nez p3, :cond_6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_6

    const-string v9, "def"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 100
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfObject;

    .line 101
    .local v4, key:Lcom/itextpdf/text/pdf/PdfObject;
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->REGISTRY:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v9, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 102
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;->setRegistry(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 136
    .end local v0           #cp:Lcom/itextpdf/text/pdf/PdfContentParser;
    .end local v4           #key:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v5           #last:Ljava/lang/String;
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    .end local v8           #maxExc:I
    :catchall_0
    move-exception v9

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->close()V

    throw v9

    .line 103
    .restart local v0       #cp:Lcom/itextpdf/text/pdf/PdfContentParser;
    .restart local v4       #key:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v5       #last:Ljava/lang/String;
    .restart local v6       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    .restart local v8       #maxExc:I
    :cond_3
    :try_start_4
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->ORDERING:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v9, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 104
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;->setOrdering(Ljava/lang/String;)V

    goto :goto_1

    .line 105
    :cond_4
    sget-object v9, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParserEx;->CMAPNAME:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v9, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 106
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;->setName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 107
    :cond_5
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->SUPPLEMENT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v9, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v9

    if-eqz v9, :cond_1

    .line 109
    const/4 v9, 0x1

    :try_start_5
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v9

    invoke-virtual {p1, v9}, Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;->setSupplement(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 111
    :catch_1
    move-exception v9

    goto/16 :goto_1

    .line 114
    .end local v4           #key:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_6
    :try_start_6
    const-string v9, "endcidchar"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "endbfchar"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x3

    if-lt v9, v10, :cond_9

    .line 115
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x2

    .line 116
    .local v7, lmax:I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_3
    if-ge v3, v7, :cond_1

    .line 117
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/itextpdf/text/pdf/PdfString;

    if-eqz v9, :cond_8

    .line 118
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PdfString;

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-virtual {p1, v9, v10}, Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;->addChar(Lcom/itextpdf/text/pdf/PdfString;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 116
    :cond_8
    add-int/lit8 v3, v3, 0x2

    goto :goto_3

    .line 122
    .end local v3           #k:I
    .end local v7           #lmax:I
    :cond_9
    const-string v9, "endcidrange"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string v9, "endbfrange"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    :cond_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x4

    if-lt v9, v10, :cond_c

    .line 123
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x3

    .line 124
    .restart local v7       #lmax:I
    const/4 v3, 0x0

    .restart local v3       #k:I
    :goto_4
    if-ge v3, v7, :cond_1

    .line 125
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/itextpdf/text/pdf/PdfString;

    if-eqz v9, :cond_b

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/itextpdf/text/pdf/PdfString;

    if-eqz v9, :cond_b

    .line 126
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PdfString;

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/text/pdf/PdfString;

    add-int/lit8 v11, v3, 0x2

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-virtual {p1, v9, v10, v11}, Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;->addRange(Lcom/itextpdf/text/pdf/PdfString;Lcom/itextpdf/text/pdf/PdfString;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 124
    :cond_b
    add-int/lit8 v3, v3, 0x3

    goto :goto_4

    .line 130
    .end local v3           #k:I
    .end local v7           #lmax:I
    :cond_c
    const-string v9, "usecmap"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/itextpdf/text/pdf/PdfName;

    if-eqz v9, :cond_1

    .line 131
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/itextpdf/text/pdf/PdfName;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, p3, 0x1

    invoke-static {v9, p1, p2, v10}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParserEx;->parseCid(Ljava/lang/String;Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;Lcom/itextpdf/text/pdf/fonts/cmaps/CidLocation;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1
.end method
