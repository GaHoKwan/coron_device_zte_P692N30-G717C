.class public Lcom/tutego/jrtf/Rtf;
.super Ljava/lang/Object;
.source "Rtf.java"


# static fields
.field static final CHARSET1252:Ljava/lang/String;


# instance fields
.field private docfmt:Ljava/lang/StringBuilder;

.field private headerColors:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/tutego/jrtf/RtfHeaderColor;",
            ">;"
        }
    .end annotation
.end field

.field private headerFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tutego/jrtf/RtfHeaderFont;",
            ">;"
        }
    .end annotation
.end field

.field private info:Ljava/lang/StringBuilder;

.field private secfmtHdrftrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private sectionParagraphs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Lcom/tutego/jrtf/RtfPara;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "Windows-1252"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tutego/jrtf/Rtf;->CHARSET1252:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/tutego/jrtf/Rtf;->headerColors:Ljava/util/SortedMap;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tutego/jrtf/Rtf;->headerFonts:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/tutego/jrtf/Rtf;->info:Ljava/lang/StringBuilder;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/tutego/jrtf/Rtf;->docfmt:Ljava/lang/StringBuilder;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tutego/jrtf/Rtf;->secfmtHdrftrs:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tutego/jrtf/Rtf;->sectionParagraphs:Ljava/util/List;

    .line 74
    return-void
.end method

.method static asRtf(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "rawText"

    .prologue
    .line 123
    if-nez p0, :cond_0

    .line 124
    const/4 v2, 0x0

    .line 138
    :goto_0
    return-object v2

    .line 128
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 131
    .local v1, result:Ljava/lang/StringBuilder;
    :try_start_0
    invoke-static {v1, p0}, Lcom/tutego/jrtf/Rtf;->asRtf(Ljava/lang/Appendable;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lcom/tutego/jrtf/RtfException;

    invoke-direct {v2, v0}, Lcom/tutego/jrtf/RtfException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static asRtf(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 4
    .parameter "out"
    .parameter "rawText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 114
    return-void

    .line 97
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 99
    .local v0, c:C
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 100
    const-string v2, "\\par\n"

    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 95
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_1
    const/16 v2, 0x9

    if-ne v0, v2, :cond_2

    .line 102
    const-string v2, "\\tab\n"

    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 103
    :cond_2
    const/16 v2, 0x5c

    if-ne v0, v2, :cond_3

    .line 104
    const-string v2, "\\\\"

    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 105
    :cond_3
    const/16 v2, 0x7b

    if-ne v0, v2, :cond_4

    .line 106
    const-string v2, "\\{"

    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 107
    :cond_4
    const/16 v2, 0x7d

    if-ne v0, v2, :cond_5

    .line 108
    const-string v2, "\\}"

    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 109
    :cond_5
    const/16 v2, 0x7f

    if-ge v0, v2, :cond_6

    .line 110
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    .line 112
    :cond_6
    const-string v2, "\\u"

    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v2

    const/16 v3, 0x3f

    invoke-interface {v2, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1
.end method

.method static frameRtfParagraphWithEndingPar(Ljava/lang/String;Lcom/tutego/jrtf/RtfPara;)Ljava/lang/StringBuilder;
    .locals 3
    .parameter "rtfControlWord"
    .parameter "para"

    .prologue
    .line 456
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 457
    .local v1, out:Ljava/lang/StringBuilder;
    const-string v2, "{\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/tutego/jrtf/RtfPara;->rtf(Ljava/lang/Appendable;Z)V

    .line 460
    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    return-object v1

    .line 463
    .end local v1           #out:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 465
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lcom/tutego/jrtf/RtfException;

    invoke-direct {v2, v0}, Lcom/tutego/jrtf/RtfException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static rtf()Lcom/tutego/jrtf/Rtf;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/tutego/jrtf/Rtf;

    invoke-direct {v0}, Lcom/tutego/jrtf/Rtf;-><init>()V

    return-object v0
.end method

.method public static template(Ljava/io/InputStream;)Lcom/tutego/jrtf/RtfTemplate;
    .locals 1
    .parameter "inputStream"

    .prologue
    .line 299
    new-instance v0, Lcom/tutego/jrtf/RtfTemplate;

    invoke-direct {v0, p0}, Lcom/tutego/jrtf/RtfTemplate;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private writeRtfDocument(Ljava/lang/Appendable;)V
    .locals 11
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x7d

    .line 331
    const-string v8, "{"

    invoke-interface {p1, v8}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 336
    const-string v8, "\\rtf1\\ansi\\deff0"

    invoke-interface {p1, v8}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 341
    const-string v8, "\n{\\fonttbl"

    invoke-interface {p1, v8}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 343
    iget-object v8, p0, Lcom/tutego/jrtf/Rtf;->headerFonts:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 344
    const-string v8, "{\\f0 Times New Roman;}"

    invoke-interface {p1, v8}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 351
    :cond_0
    invoke-interface {p1, v10}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 356
    iget-object v8, p0, Lcom/tutego/jrtf/Rtf;->headerColors:Ljava/util/SortedMap;

    invoke-interface {v8}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 358
    const-string v8, "\n{\\colortbl"

    invoke-interface {p1, v8}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 360
    iget-object v8, p0, Lcom/tutego/jrtf/Rtf;->headerColors:Ljava/util/SortedMap;

    invoke-interface {v8}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 362
    .local v3, maxColorIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-le v2, v3, :cond_5

    .line 371
    invoke-interface {p1, v10}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 387
    .end local v2           #i:I
    .end local v3           #maxColorIndex:I
    :cond_1
    const/16 v8, 0xa

    invoke-interface {p1, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 391
    iget-object v8, p0, Lcom/tutego/jrtf/Rtf;->info:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 393
    const-string v8, "{\\info"

    invoke-interface {p1, v8}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 394
    iget-object v8, p0, Lcom/tutego/jrtf/Rtf;->info:Ljava/lang/StringBuilder;

    invoke-interface {p1, v8}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 395
    const-string v8, "}\n"

    invoke-interface {p1, v8}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 400
    :cond_2
    iget-object v8, p0, Lcom/tutego/jrtf/Rtf;->docfmt:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 401
    iget-object v8, p0, Lcom/tutego/jrtf/Rtf;->docfmt:Ljava/lang/StringBuilder;

    invoke-interface {p1, v8}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 408
    :cond_3
    const/4 v7, 0x0

    .local v7, sectionCnt:I
    :goto_1
    iget-object v8, p0, Lcom/tutego/jrtf/Rtf;->sectionParagraphs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v7, v8, :cond_7

    .line 443
    const-string v8, "}"

    invoke-interface {p1, v8}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 444
    return-void

    .line 347
    .end local v7           #sectionCnt:I
    :cond_4
    iget-object v8, p0, Lcom/tutego/jrtf/Rtf;->headerFonts:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tutego/jrtf/RtfHeaderFont;

    .line 348
    .local v1, font:Lcom/tutego/jrtf/RtfHeaderFont;
    invoke-virtual {v1, p1}, Lcom/tutego/jrtf/RtfHeaderFont;->writeFontInfo(Ljava/lang/Appendable;)V

    goto :goto_2

    .line 364
    .end local v1           #font:Lcom/tutego/jrtf/RtfHeaderFont;
    .restart local v2       #i:I
    .restart local v3       #maxColorIndex:I
    :cond_5
    iget-object v8, p0, Lcom/tutego/jrtf/Rtf;->headerColors:Ljava/util/SortedMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tutego/jrtf/RtfHeaderColor;

    .line 365
    .local v0, color:Lcom/tutego/jrtf/RtfHeaderColor;
    if-nez v0, :cond_6

    .line 366
    const/16 v8, 0x3b

    invoke-interface {p1, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 362
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 368
    :cond_6
    invoke-virtual {v0, p1}, Lcom/tutego/jrtf/RtfHeaderColor;->writeColordef(Ljava/lang/Appendable;)V

    goto :goto_3

    .line 410
    .end local v0           #color:Lcom/tutego/jrtf/RtfHeaderColor;
    .end local v2           #i:I
    .end local v3           #maxColorIndex:I
    .restart local v7       #sectionCnt:I
    :cond_7
    iget-object v8, p0, Lcom/tutego/jrtf/Rtf;->sectionParagraphs:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/tutego/jrtf/RtfPara;

    .line 411
    .local v4, paragraphs:[Lcom/tutego/jrtf/RtfPara;
    iget-object v8, p0, Lcom/tutego/jrtf/Rtf;->secfmtHdrftrs:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 415
    .local v6, secfmtHdrftr:Ljava/lang/CharSequence;
    if-eqz v6, :cond_8

    .line 416
    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 420
    :cond_8
    array-length v9, v4

    const/4 v8, 0x0

    :goto_4
    if-lt v8, v9, :cond_a

    .line 425
    iget-object v8, p0, Lcom/tutego/jrtf/Rtf;->sectionParagraphs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v7, v8, :cond_9

    .line 426
    const-string v8, "\\sect\n"

    invoke-interface {p1, v8}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 408
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 420
    :cond_a
    aget-object v5, v4, v8

    .line 421
    .local v5, rtfPara:Lcom/tutego/jrtf/RtfPara;
    const/4 v10, 0x1

    invoke-virtual {v5, p1, v10}, Lcom/tutego/jrtf/RtfPara;->rtf(Ljava/lang/Appendable;Z)V

    .line 420
    add-int/lit8 v8, v8, 0x1

    goto :goto_4
.end method


# virtual methods
.method public varargs documentFormatting([Lcom/tutego/jrtf/RtfDocfmt;)Lcom/tutego/jrtf/Rtf;
    .locals 5
    .parameter "documentFormattings"

    .prologue
    .line 184
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 187
    return-object p0

    .line 184
    :cond_0
    aget-object v0, p1, v1

    .line 185
    .local v0, rtfDocfmt:Lcom/tutego/jrtf/RtfDocfmt;
    iget-object v3, p0, Lcom/tutego/jrtf/Rtf;->docfmt:Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/tutego/jrtf/RtfDocfmt;->rtf:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public varargs header([Lcom/tutego/jrtf/RtfHeader;)Lcom/tutego/jrtf/Rtf;
    .locals 5
    .parameter "headers"

    .prologue
    .line 148
    array-length v3, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 158
    return-object p0

    .line 148
    :cond_0
    aget-object v0, p1, v2

    .line 150
    .local v0, rtfHeader:Lcom/tutego/jrtf/RtfHeader;
    instance-of v1, v0, Lcom/tutego/jrtf/RtfHeaderColor;

    if-eqz v1, :cond_2

    .line 151
    iget-object v4, p0, Lcom/tutego/jrtf/Rtf;->headerColors:Ljava/util/SortedMap;

    move-object v1, v0

    check-cast v1, Lcom/tutego/jrtf/RtfHeaderColor;

    iget v1, v1, Lcom/tutego/jrtf/RtfHeaderColor;->colorindex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Lcom/tutego/jrtf/RtfHeaderColor;

    .end local v0           #rtfHeader:Lcom/tutego/jrtf/RtfHeader;
    invoke-interface {v4, v1, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_1
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 152
    .restart local v0       #rtfHeader:Lcom/tutego/jrtf/RtfHeader;
    :cond_2
    instance-of v1, v0, Lcom/tutego/jrtf/RtfHeaderFont;

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/tutego/jrtf/Rtf;->headerFonts:Ljava/util/List;

    check-cast v0, Lcom/tutego/jrtf/RtfHeaderFont;

    .end local v0           #rtfHeader:Lcom/tutego/jrtf/RtfHeader;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public varargs info([Lcom/tutego/jrtf/RtfInfo;)Lcom/tutego/jrtf/Rtf;
    .locals 5
    .parameter "infos"

    .prologue
    .line 170
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 173
    return-object p0

    .line 170
    :cond_0
    aget-object v0, p1, v1

    .line 171
    .local v0, rtfInfo:Lcom/tutego/jrtf/RtfInfo;
    iget-object v3, p0, Lcom/tutego/jrtf/Rtf;->info:Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/tutego/jrtf/RtfInfo;->rtf:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public out()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 278
    .local v0, result:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/tutego/jrtf/Rtf;->out(Ljava/lang/Appendable;)V

    .line 279
    return-object v0
.end method

.method public out(Ljava/lang/Appendable;)V
    .locals 3
    .parameter "out"

    .prologue
    .line 253
    if-nez p1, :cond_0

    .line 254
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Appendable is not allowed to be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tutego/jrtf/Rtf;->writeRtfDocument(Ljava/lang/Appendable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    instance-of v1, p1, Ljava/io/Closeable;

    if-eqz v1, :cond_1

    .line 267
    :try_start_1
    check-cast p1, Ljava/io/Closeable;

    .end local p1
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 269
    :cond_1
    return-void

    .line 260
    .restart local p1
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    new-instance v1, Lcom/tutego/jrtf/RtfException;

    invoke-direct {v1, v0}, Lcom/tutego/jrtf/RtfException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 266
    instance-of v2, p1, Ljava/io/Closeable;

    if-eqz v2, :cond_2

    .line 267
    :try_start_3
    check-cast p1, Ljava/io/Closeable;

    .end local p1
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 268
    :cond_2
    throw v1

    .line 267
    :catch_1
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    new-instance v1, Lcom/tutego/jrtf/RtfException;

    invoke-direct {v1, v0}, Lcom/tutego/jrtf/RtfException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    new-instance v1, Lcom/tutego/jrtf/RtfException;

    invoke-direct {v1, v0}, Lcom/tutego/jrtf/RtfException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public varargs p([Ljava/lang/Object;)V
    .locals 3
    .parameter "texts"

    .prologue
    .line 242
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/tutego/jrtf/RtfPara;

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/tutego/jrtf/RtfPara;->p([Ljava/lang/Object;)Lcom/tutego/jrtf/RtfTextPara;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/tutego/jrtf/Rtf;->section([Lcom/tutego/jrtf/RtfPara;)Lcom/tutego/jrtf/Rtf;

    .line 243
    return-void
.end method

.method public varargs section(Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;[Lcom/tutego/jrtf/RtfPara;)Lcom/tutego/jrtf/Rtf;
    .locals 2
    .parameter "secfmtHdrftr"
    .parameter "paragraphs"

    .prologue
    .line 218
    if-nez p2, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There has to be atleast one paragraph in a section"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    if-eqz p1, :cond_1

    .line 224
    iget-object v0, p0, Lcom/tutego/jrtf/Rtf;->secfmtHdrftrs:Ljava/util/List;

    iget-object v1, p1, Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;->rtf:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    :goto_0
    iget-object v0, p0, Lcom/tutego/jrtf/Rtf;->sectionParagraphs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    return-object p0

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/tutego/jrtf/Rtf;->secfmtHdrftrs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public section(Ljava/util/Collection;)Lcom/tutego/jrtf/Rtf;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/tutego/jrtf/RtfPara;",
            ">;)",
            "Lcom/tutego/jrtf/Rtf;"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, paragraphs:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/tutego/jrtf/RtfPara;>;"
    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/tutego/jrtf/RtfPara;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tutego/jrtf/RtfPara;

    invoke-virtual {p0, v1, v0}, Lcom/tutego/jrtf/Rtf;->section(Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;[Lcom/tutego/jrtf/RtfPara;)Lcom/tutego/jrtf/Rtf;

    move-result-object v0

    return-object v0
.end method

.method public varargs section([Lcom/tutego/jrtf/RtfPara;)Lcom/tutego/jrtf/Rtf;
    .locals 1
    .parameter "paragraphs"

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/tutego/jrtf/Rtf;->section(Lcom/tutego/jrtf/RtfSectionFormatAndHeaderFooter;[Lcom/tutego/jrtf/RtfPara;)Lcom/tutego/jrtf/Rtf;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/tutego/jrtf/Rtf;->out()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
