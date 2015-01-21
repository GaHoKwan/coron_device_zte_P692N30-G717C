.class public Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;
.super Ljava/lang/Object;
.source "SimplePatternParser.java"

# interfaces
.implements Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;
.implements Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;


# static fields
.field static final ELEM_CLASSES:I = 0x1

.field static final ELEM_EXCEPTIONS:I = 0x2

.field static final ELEM_HYPHEN:I = 0x4

.field static final ELEM_PATTERNS:I = 0x3


# instance fields
.field consumer:Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;

.field currElement:I

.field exception:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field hyphenChar:C

.field parser:Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;

.field token:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->token:Ljava/lang/StringBuffer;

    .line 85
    const/16 v0, 0x2d

    iput-char v0, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->hyphenChar:C

    .line 86
    return-void
.end method

.method protected static getInterletterValues(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "pat"

    .prologue
    .line 160
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 161
    .local v2, il:Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, word:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 163
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 164
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 165
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 166
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 167
    add-int/lit8 v1, v1, 0x1

    .line 163
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_0
    const/16 v5, 0x30

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 172
    .end local v0           #c:C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method protected static getPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "word"

    .prologue
    .line 103
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 104
    .local v2, pat:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 105
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 106
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 107
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 105
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public addClass(Ljava/lang/String;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 265
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public addException(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "w"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p2, e:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public addPattern(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "p"
    .parameter "v"

    .prologue
    .line 273
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pattern: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public endDocument()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 6
    .parameter "tag"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 180
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->token:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->token:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, word:Ljava/lang/String;
    iget v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->currElement:I

    packed-switch v1, :pswitch_data_0

    .line 200
    :goto_0
    iget v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->currElement:I

    if-eq v1, v5, :cond_0

    .line 201
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->token:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 204
    .end local v0           #word:Ljava/lang/String;
    :cond_0
    iget v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->currElement:I

    if-ne v1, v5, :cond_1

    .line 205
    const/4 v1, 0x2

    iput v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->currElement:I

    .line 209
    :goto_1
    return-void

    .line 184
    .restart local v0       #word:Ljava/lang/String;
    :pswitch_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->consumer:Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;

    invoke-interface {v1, v0}, Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;->addClass(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :pswitch_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->exception:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->exception:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->normalizeException(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->exception:Ljava/util/ArrayList;

    .line 189
    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->consumer:Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->exception:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->getExceptionWord(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->exception:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-interface {v2, v3, v1}, Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;->addException(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 193
    :pswitch_2
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->consumer:Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;

    invoke-static {v0}, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->getInterletterValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;->addPattern(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    .end local v0           #word:Ljava/lang/String;
    :cond_1
    iput v4, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->currElement:I

    goto :goto_1

    .line 182
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getExceptionWord(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, ex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 146
    .local v2, res:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 147
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 148
    .local v1, item:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 149
    check-cast v1, Ljava/lang/String;

    .end local v1           #item:Ljava/lang/Object;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .restart local v1       #item:Ljava/lang/Object;
    :cond_1
    move-object v3, v1

    .line 151
    check-cast v3, Lcom/itextpdf/text/pdf/hyphenation/Hyphen;

    iget-object v3, v3, Lcom/itextpdf/text/pdf/hyphenation/Hyphen;->noBreak:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 152
    check-cast v1, Lcom/itextpdf/text/pdf/hyphenation/Hyphen;

    .end local v1           #item:Ljava/lang/Object;
    iget-object v3, v1, Lcom/itextpdf/text/pdf/hyphenation/Hyphen;->noBreak:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 156
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected normalizeException(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, ex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 114
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v6, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_4

    .line 116
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 117
    .local v4, item:Ljava/lang/Object;
    instance-of v8, v4, Ljava/lang/String;

    if-eqz v8, :cond_3

    move-object v7, v4

    .line 118
    check-cast v7, Ljava/lang/String;

    .line 119
    .local v7, str:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 120
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_1

    .line 121
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 122
    .local v1, c:C
    iget-char v8, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->hyphenChar:C

    if-eq v1, v8, :cond_0

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 120
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 125
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 127
    const/4 v8, 0x1

    new-array v2, v8, [C

    .line 128
    .local v2, h:[C
    iget-char v8, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->hyphenChar:C

    aput-char v8, v2, v10

    .line 131
    new-instance v8, Lcom/itextpdf/text/pdf/hyphenation/Hyphen;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v2}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v8, v9, v11, v11}, Lcom/itextpdf/text/pdf/hyphenation/Hyphen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 134
    .end local v1           #c:C
    .end local v2           #h:[C
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v5           #j:I
    .end local v7           #str:Ljava/lang/String;
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 138
    :cond_3
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 141
    .end local v4           #item:Ljava/lang/Object;
    :cond_4
    return-object v6
.end method

.method public parse(Ljava/io/InputStream;Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;)V
    .locals 3
    .parameter "stream"
    .parameter "consumer"

    .prologue
    .line 89
    iput-object p2, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->consumer:Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;

    .line 91
    :try_start_0
    invoke-static {p0, p1}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->parse(Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 96
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 98
    :goto_1
    throw v1

    .line 97
    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method public startDocument()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, h:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 215
    const-string v1, "hyphen-char"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    const-string v1, "value"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 217
    .local v0, hh:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 218
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->hyphenChar:C

    .line 235
    .end local v0           #hh:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->token:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 236
    return-void

    .line 220
    :cond_1
    const-string v1, "classes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 221
    iput v2, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->currElement:I

    goto :goto_0

    .line 222
    :cond_2
    const-string v1, "patterns"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 223
    const/4 v1, 0x3

    iput v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->currElement:I

    goto :goto_0

    .line 224
    :cond_3
    const-string v1, "exceptions"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 225
    const/4 v1, 0x2

    iput v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->currElement:I

    .line 226
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->exception:Ljava/util/ArrayList;

    goto :goto_0

    .line 227
    :cond_4
    const-string v1, "hyphen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->token:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 229
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->exception:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->token:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_5
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->exception:Ljava/util/ArrayList;

    new-instance v5, Lcom/itextpdf/text/pdf/hyphenation/Hyphen;

    const-string v1, "pre"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "no"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "post"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v1, v2, v3}, Lcom/itextpdf/text/pdf/hyphenation/Hyphen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    const/4 v1, 0x4

    iput v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->currElement:I

    goto :goto_0
.end method

.method public text(Ljava/lang/String;)V
    .locals 5
    .parameter "str"

    .prologue
    .line 240
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 241
    .local v0, tk:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, word:Ljava/lang/String;
    iget v2, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->currElement:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 246
    :pswitch_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->consumer:Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;

    invoke-interface {v2, v1}, Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;->addClass(Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :pswitch_1
    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->exception:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->exception:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->normalizeException(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->exception:Ljava/util/ArrayList;

    .line 251
    iget-object v3, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->consumer:Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->exception:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->getExceptionWord(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->exception:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v3, v4, v2}, Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;->addException(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 253
    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->exception:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 256
    :pswitch_2
    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->consumer:Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;

    invoke-static {v1}, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->getInterletterValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;->addPattern(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 261
    .end local v1           #word:Ljava/lang/String;
    :cond_0
    return-void

    .line 244
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
