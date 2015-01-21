.class public final Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;
.super Ljava/lang/Object;
.source "SimpleXMLParser.java"


# static fields
.field private static final ATTRIBUTE_EQUAL:I = 0xd

.field private static final ATTRIBUTE_KEY:I = 0xc

.field private static final ATTRIBUTE_VALUE:I = 0xe

.field private static final CDATA:I = 0x7

.field private static final COMMENT:I = 0x8

.field private static final ENTITY:I = 0xa

.field private static final EXAMIN_TAG:I = 0x3

.field private static final IN_CLOSETAG:I = 0x5

.field private static final PI:I = 0x9

.field private static final QUOTE:I = 0xb

.field private static final SINGLE_TAG:I = 0x6

.field private static final TAG_ENCOUNTERED:I = 0x2

.field private static final TAG_EXAMINED:I = 0x4

.field private static final TEXT:I = 0x1

.field private static final UNKNOWN:I


# instance fields
.field private attributekey:Ljava/lang/String;

.field private attributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private attributevalue:Ljava/lang/String;

.field private character:I

.field private columns:I

.field private final comment:Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandlerComment;

.field private final doc:Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;

.field private final entity:Ljava/lang/StringBuffer;

.field private eol:Z

.field private final html:Z

.field private lines:I

.field private nested:I

.field private newLineHandler:Lcom/itextpdf/text/xml/simpleparser/NewLineHandler;

.field private nowhite:Z

.field private previousCharacter:I

.field private quoteCharacter:I

.field private final stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private state:I

.field private tag:Ljava/lang/String;

.field private final text:Ljava/lang/StringBuffer;


# direct methods
.method private constructor <init>(Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandlerComment;Z)V
    .locals 4
    .parameter "doc"
    .parameter "comment"
    .parameter "html"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput v1, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    .line 129
    const/4 v2, -0x1

    iput v2, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->previousCharacter:I

    .line 131
    iput v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->lines:I

    .line 133
    iput v1, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->columns:I

    .line 135
    iput-boolean v1, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->eol:Z

    .line 142
    iput-boolean v1, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->nowhite:Z

    .line 148
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    .line 150
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->entity:Ljava/lang/StringBuffer;

    .line 152
    iput-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->tag:Ljava/lang/String;

    .line 154
    iput-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->attributes:Ljava/util/HashMap;

    .line 160
    iput v1, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->nested:I

    .line 162
    const/16 v2, 0x22

    iput v2, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->quoteCharacter:I

    .line 164
    iput-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->attributekey:Ljava/lang/String;

    .line 166
    iput-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->attributevalue:Ljava/lang/String;

    .line 173
    iput-object p1, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->doc:Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;

    .line 174
    iput-object p2, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->comment:Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandlerComment;

    .line 175
    iput-boolean p3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    .line 176
    if-eqz p3, :cond_0

    .line 177
    new-instance v2, Lcom/itextpdf/text/xml/simpleparser/handler/HTMLNewLineHandler;

    invoke-direct {v2}, Lcom/itextpdf/text/xml/simpleparser/handler/HTMLNewLineHandler;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->newLineHandler:Lcom/itextpdf/text/xml/simpleparser/NewLineHandler;

    .line 181
    :goto_0
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->stack:Ljava/util/Stack;

    .line 182
    if-eqz p3, :cond_1

    :goto_1
    iput v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    .line 183
    return-void

    .line 179
    :cond_0
    new-instance v2, Lcom/itextpdf/text/xml/simpleparser/handler/NeverNewLineHandler;

    invoke-direct {v2}, Lcom/itextpdf/text/xml/simpleparser/handler/NeverNewLineHandler;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->newLineHandler:Lcom/itextpdf/text/xml/simpleparser/NewLineHandler;

    goto :goto_0

    :cond_1
    move v0, v1

    .line 182
    goto :goto_1
.end method

.method private doTag()V
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->tag:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->tag:Ljava/lang/String;

    .line 570
    :cond_0
    iget-boolean v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->tag:Ljava/lang/String;

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 573
    return-void
.end method

.method public static escapeXML(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "s"
    .parameter "onlyASCII"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 699
    invoke-static {p0, p1}, Lcom/itextpdf/text/xml/XMLUtil;->escapeXML(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private flush()V
    .locals 3

    .prologue
    .line 532
    iget v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    packed-switch v0, :pswitch_data_0

    .line 557
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 558
    return-void

    .line 535
    :pswitch_1
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->doc:Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;

    iget-object v1, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;->text(Ljava/lang/String;)V

    goto :goto_0

    .line 540
    :pswitch_2
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->comment:Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandlerComment;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->comment:Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandlerComment;

    iget-object v1, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandlerComment;->comment(Ljava/lang/String;)V

    goto :goto_0

    .line 545
    :pswitch_3
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->attributekey:Ljava/lang/String;

    .line 546
    iget-boolean v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->attributekey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->attributekey:Ljava/lang/String;

    goto :goto_0

    .line 551
    :pswitch_4
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->attributevalue:Ljava/lang/String;

    .line 552
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->attributes:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->attributekey:Ljava/lang/String;

    iget-object v2, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->attributevalue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 532
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static getDeclaredEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "decl"

    .prologue
    const/16 v7, 0x27

    const/16 v6, 0x22

    const/4 v4, 0x0

    .line 652
    if-nez p0, :cond_1

    .line 673
    :cond_0
    :goto_0
    return-object v4

    .line 654
    :cond_1
    const-string v5, "encoding"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 655
    .local v0, idx:I
    if-ltz v0, :cond_0

    .line 657
    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 658
    .local v1, idx1:I
    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 659
    .local v2, idx2:I
    if-eq v1, v2, :cond_0

    .line 661
    if-gez v1, :cond_2

    if-gtz v2, :cond_3

    :cond_2
    if-lez v2, :cond_4

    if-ge v2, v1, :cond_4

    .line 662
    :cond_3
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 663
    .local v3, idx3:I
    if-ltz v3, :cond_0

    .line 665
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 667
    .end local v3           #idx3:I
    :cond_4
    if-gez v2, :cond_5

    if-gtz v1, :cond_6

    :cond_5
    if-lez v1, :cond_0

    if-ge v1, v2, :cond_0

    .line 668
    :cond_6
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 669
    .restart local v3       #idx3:I
    if-ltz v3, :cond_0

    .line 671
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private go(Ljava/io/Reader;)V
    .locals 11
    .parameter "r"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0xa

    const/16 v9, 0x20

    const/16 v8, 0x3e

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 191
    instance-of v3, p1, Ljava/io/BufferedReader;

    if-eqz v3, :cond_3

    move-object v2, p1

    .line 192
    check-cast v2, Ljava/io/BufferedReader;

    .line 195
    .local v2, reader:Ljava/io/BufferedReader;
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->doc:Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;

    invoke-interface {v3}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;->startDocument()V

    .line 198
    :cond_0
    :goto_1
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->previousCharacter:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 199
    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    .line 208
    :goto_2
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    .line 209
    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    if-eqz v3, :cond_5

    .line 210
    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    if-ne v3, v7, :cond_1

    .line 211
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->flush()V

    .line 212
    :cond_1
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->doc:Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;

    invoke-interface {v3}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;->endDocument()V

    .line 360
    :cond_2
    :goto_3
    return-void

    .line 194
    .end local v2           #reader:Ljava/io/BufferedReader;
    :cond_3
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_0

    .line 203
    :cond_4
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->previousCharacter:I

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    .line 204
    const/4 v3, -0x1

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->previousCharacter:I

    goto :goto_2

    .line 214
    :cond_5
    const-string v3, "missing.end.tag"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->throwException(Ljava/lang/String;)V

    goto :goto_3

    .line 220
    :cond_6
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    if-ne v3, v10, :cond_7

    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->eol:Z

    if-eqz v3, :cond_7

    .line 221
    iput-boolean v6, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->eol:Z

    goto :goto_1

    .line 223
    :cond_7
    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->eol:Z

    if-eqz v3, :cond_8

    .line 224
    iput-boolean v6, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->eol:Z

    .line 237
    :goto_4
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 240
    :pswitch_0
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x3c

    if-ne v3, v4, :cond_0

    .line 241
    invoke-direct {p0, v7}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->saveState(I)V

    .line 242
    const/4 v3, 0x2

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto :goto_1

    .line 225
    :cond_8
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    if-ne v3, v10, :cond_9

    .line 226
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->lines:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->lines:I

    .line 227
    iput v6, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->columns:I

    goto :goto_4

    .line 228
    :cond_9
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0xd

    if-ne v3, v4, :cond_a

    .line 229
    iput-boolean v7, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->eol:Z

    .line 230
    iput v10, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    .line 231
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->lines:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->lines:I

    .line 232
    iput v6, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->columns:I

    goto :goto_4

    .line 234
    :cond_a
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->columns:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->columns:I

    goto :goto_4

    .line 247
    :pswitch_1
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x3c

    if-ne v3, v4, :cond_b

    .line 248
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->flush()V

    .line 249
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    invoke-direct {p0, v3}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->saveState(I)V

    .line 250
    const/4 v3, 0x2

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 251
    :cond_b
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x26

    if-ne v3, v4, :cond_c

    .line 252
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    invoke-direct {p0, v3}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->saveState(I)V

    .line 253
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->entity:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 254
    iput v10, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    .line 255
    iput-boolean v7, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->nowhite:Z

    goto/16 :goto_1

    .line 256
    :cond_c
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    if-ne v3, v9, :cond_f

    .line 257
    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    if-eqz v3, :cond_d

    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->nowhite:Z

    if-eqz v3, :cond_d

    .line 258
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 259
    iput-boolean v6, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->nowhite:Z

    goto/16 :goto_1

    .line 261
    :cond_d
    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->nowhite:Z

    if-eqz v3, :cond_e

    .line 262
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 264
    :cond_e
    iput-boolean v6, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->nowhite:Z

    goto/16 :goto_1

    .line 266
    :cond_f
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 267
    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    if-nez v3, :cond_0

    .line 270
    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->nowhite:Z

    if-eqz v3, :cond_10

    .line 271
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 273
    :cond_10
    iput-boolean v6, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->nowhite:Z

    goto/16 :goto_1

    .line 276
    :cond_11
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 277
    iput-boolean v7, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->nowhite:Z

    goto/16 :goto_1

    .line 283
    :pswitch_2
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->initTag()V

    .line 284
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_12

    .line 285
    const/4 v3, 0x5

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 286
    :cond_12
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_13

    .line 287
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->restoreState()I

    .line 288
    const/16 v3, 0x9

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 290
    :cond_13
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 291
    const/4 v3, 0x3

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 297
    :pswitch_3
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    if-ne v3, v8, :cond_14

    .line 298
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->doTag()V

    .line 299
    invoke-direct {p0, v7}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->processTag(Z)V

    .line 300
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->initTag()V

    .line 301
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->restoreState()I

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 302
    :cond_14
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_15

    .line 303
    const/4 v3, 0x6

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 304
    :cond_15
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_16

    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "!-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 305
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->flush()V

    .line 306
    const/16 v3, 0x8

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 307
    :cond_16
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_17

    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "![CDATA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 308
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->flush()V

    .line 309
    const/4 v3, 0x7

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 310
    :cond_17
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x45

    if-ne v3, v4, :cond_18

    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "!DOCTYP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 311
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->flush()V

    .line 312
    const/16 v3, 0x9

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 313
    :cond_18
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 314
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->doTag()V

    .line 315
    const/4 v3, 0x4

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 317
    :cond_19
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 322
    :pswitch_4
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    if-ne v3, v8, :cond_1a

    .line 323
    invoke-direct {p0, v7}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->processTag(Z)V

    .line 324
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->initTag()V

    .line 325
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->restoreState()I

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 326
    :cond_1a
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_1b

    .line 327
    const/4 v3, 0x6

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 328
    :cond_1b
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 331
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 332
    const/16 v3, 0xc

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 338
    :pswitch_5
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    if-ne v3, v8, :cond_1d

    .line 339
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->doTag()V

    .line 340
    invoke-direct {p0, v6}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->processTag(Z)V

    .line 341
    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    if-nez v3, :cond_1c

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->nested:I

    if-eqz v3, :cond_2

    .line 342
    :cond_1c
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->restoreState()I

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 344
    :cond_1d
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 345
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 352
    :pswitch_6
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    if-eq v3, v8, :cond_1e

    .line 353
    const-string v3, "expected.gt.for.tag.lt.1.gt"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->tag:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->throwException(Ljava/lang/String;)V

    .line 354
    :cond_1e
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->doTag()V

    .line 355
    invoke-direct {p0, v7}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->processTag(Z)V

    .line 356
    invoke-direct {p0, v6}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->processTag(Z)V

    .line 357
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->initTag()V

    .line 358
    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    if-nez v3, :cond_1f

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->nested:I

    if-nez v3, :cond_1f

    .line 359
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->doc:Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;

    invoke-interface {v3}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;->endDocument()V

    goto/16 :goto_3

    .line 362
    :cond_1f
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->restoreState()I

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 367
    :pswitch_7
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    if-ne v3, v8, :cond_20

    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "]]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 369
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 370
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->flush()V

    .line 371
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->restoreState()I

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 373
    :cond_20
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 379
    :pswitch_8
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    if-ne v3, v8, :cond_21

    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 381
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 382
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->flush()V

    .line 383
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->restoreState()I

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 385
    :cond_21
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 390
    :pswitch_9
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    if-ne v3, v8, :cond_0

    .line 391
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->restoreState()I

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    .line 392
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    if-ne v3, v7, :cond_0

    iput v6, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 398
    :pswitch_a
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_23

    .line 399
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->restoreState()I

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    .line 400
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->entity:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, cent:Ljava/lang/String;
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->entity:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 402
    invoke-static {v1}, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->decodeEntity(Ljava/lang/String;)C

    move-result v0

    .line 403
    .local v0, ce:C
    if-nez v0, :cond_22

    .line 404
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    const/16 v4, 0x26

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 406
    :cond_22
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 407
    .end local v0           #ce:C
    .end local v1           #cent:Ljava/lang/String;
    :cond_23
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x23

    if-eq v3, v4, :cond_26

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x30

    if-lt v3, v4, :cond_24

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x39

    if-le v3, v4, :cond_26

    :cond_24
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x61

    if-lt v3, v4, :cond_25

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x7a

    if-le v3, v4, :cond_26

    :cond_25
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x41

    if-lt v3, v4, :cond_27

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_27

    :cond_26
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->entity:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/4 v4, 0x7

    if-lt v3, v4, :cond_28

    .line 409
    :cond_27
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->restoreState()I

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    .line 410
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->previousCharacter:I

    .line 411
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    const/16 v4, 0x26

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->entity:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->entity:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_1

    .line 415
    :cond_28
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->entity:Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 420
    :pswitch_b
    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    if-eqz v3, :cond_29

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->quoteCharacter:I

    if-ne v3, v9, :cond_29

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    if-ne v3, v8, :cond_29

    .line 421
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->flush()V

    .line 422
    invoke-direct {p0, v7}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->processTag(Z)V

    .line 423
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->initTag()V

    .line 424
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->restoreState()I

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 426
    :cond_29
    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    if-eqz v3, :cond_2a

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->quoteCharacter:I

    if-ne v3, v9, :cond_2a

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 427
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->flush()V

    .line 428
    const/4 v3, 0x4

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 430
    :cond_2a
    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    if-eqz v3, :cond_2b

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->quoteCharacter:I

    if-ne v3, v9, :cond_2b

    .line 431
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 433
    :cond_2b
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->quoteCharacter:I

    if-ne v3, v4, :cond_2c

    .line 434
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->flush()V

    .line 435
    const/4 v3, 0x4

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 436
    :cond_2c
    const-string v3, " \r\n\t"

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_2d

    .line 437
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 438
    :cond_2d
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x26

    if-ne v3, v4, :cond_2e

    .line 439
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    invoke-direct {p0, v3}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->saveState(I)V

    .line 440
    iput v10, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    .line 441
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->entity:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_1

    .line 443
    :cond_2e
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 448
    :pswitch_c
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 449
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->flush()V

    .line 450
    const/16 v3, 0xd

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 451
    :cond_2f
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_30

    .line 452
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->flush()V

    .line 453
    const/16 v3, 0xe

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 454
    :cond_30
    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    if-eqz v3, :cond_31

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    if-ne v3, v8, :cond_31

    .line 455
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 456
    invoke-direct {p0, v7}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->processTag(Z)V

    .line 457
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->initTag()V

    .line 458
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->restoreState()I

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 460
    :cond_31
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 465
    :pswitch_d
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_32

    .line 466
    const/16 v3, 0xe

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 467
    :cond_32
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 469
    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    if-eqz v3, :cond_33

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    if-ne v3, v8, :cond_33

    .line 470
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 471
    invoke-direct {p0, v7}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->processTag(Z)V

    .line 472
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->initTag()V

    .line 473
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->restoreState()I

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 474
    :cond_33
    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    if-eqz v3, :cond_34

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_34

    .line 475
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->flush()V

    .line 476
    const/4 v3, 0x6

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 477
    :cond_34
    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    if-eqz v3, :cond_35

    .line 478
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->flush()V

    .line 479
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 480
    const/16 v3, 0xc

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 482
    :cond_35
    const-string v3, "error.in.attribute.processing"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->throwException(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 487
    :pswitch_e
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x22

    if-eq v3, v4, :cond_36

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x27

    if-ne v3, v4, :cond_37

    .line 488
    :cond_36
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->quoteCharacter:I

    .line 489
    const/16 v3, 0xb

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 490
    :cond_37
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 492
    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    if-eqz v3, :cond_38

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    if-ne v3, v8, :cond_38

    .line 493
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->flush()V

    .line 494
    invoke-direct {p0, v7}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->processTag(Z)V

    .line 495
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->initTag()V

    .line 496
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->restoreState()I

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 497
    :cond_38
    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    if-eqz v3, :cond_39

    .line 498
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 499
    iput v9, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->quoteCharacter:I

    .line 500
    const/16 v3, 0xb

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 502
    :cond_39
    const-string v3, "error.in.attribute.processing"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->throwException(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private initTag()V
    .locals 1

    .prologue
    .line 563
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->tag:Ljava/lang/String;

    .line 564
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->attributes:Ljava/util/HashMap;

    .line 565
    return-void
.end method

.method public static parse(Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandlerComment;Ljava/io/Reader;Z)V
    .locals 1
    .parameter "doc"
    .parameter "comment"
    .parameter "r"
    .parameter "html"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 606
    new-instance v0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;

    invoke-direct {v0, p0, p1, p3}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;-><init>(Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandlerComment;Z)V

    .line 607
    .local v0, parser:Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;
    invoke-direct {v0, p2}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->go(Ljava/io/Reader;)V

    .line 608
    return-void
.end method

.method public static parse(Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;Ljava/io/InputStream;)V
    .locals 10
    .parameter "doc"
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v8, -0x1

    .line 617
    new-array v0, v7, [B

    .line 618
    .local v0, b4:[B
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 619
    .local v3, count:I
    if-eq v3, v7, :cond_0

    .line 620
    new-instance v7, Ljava/io/IOException;

    const-string v8, "insufficient.length"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 621
    :cond_0
    invoke-static {v0}, Lcom/itextpdf/text/xml/XMLUtil;->getEncodingName([B)Ljava/lang/String;

    move-result-object v5

    .line 622
    .local v5, encoding:Ljava/lang/String;
    const/4 v4, 0x0

    .line 623
    .local v4, decl:Ljava/lang/String;
    const-string v7, "UTF-8"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 624
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 626
    .local v6, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    .local v2, c:I
    if-eq v2, v8, :cond_1

    .line 627
    const/16 v7, 0x3e

    if-ne v2, v7, :cond_4

    .line 631
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 643
    .end local v2           #c:I
    .end local v6           #sb:Ljava/lang/StringBuffer;
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 644
    invoke-static {v4}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->getDeclaredEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 645
    if-eqz v4, :cond_3

    .line 646
    move-object v5, v4

    .line 648
    :cond_3
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-static {v5}, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->getJavaEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {p0, v7}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->parse(Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;Ljava/io/Reader;)V

    .line 649
    return-void

    .line 629
    .restart local v2       #c:I
    .restart local v6       #sb:Ljava/lang/StringBuffer;
    :cond_4
    int-to-char v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 633
    .end local v2           #c:I
    .end local v6           #sb:Ljava/lang/StringBuffer;
    :cond_5
    const-string v7, "CP037"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 634
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 636
    .local v1, bi:Ljava/io/ByteArrayOutputStream;
    :goto_2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    .restart local v2       #c:I
    if-eq v2, v8, :cond_6

    .line 637
    const/16 v7, 0x6e

    if-ne v2, v7, :cond_7

    .line 641
    :cond_6
    new-instance v4, Ljava/lang/String;

    .end local v4           #decl:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const-string v8, "CP037"

    invoke-direct {v4, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .restart local v4       #decl:Ljava/lang/String;
    goto :goto_1

    .line 639
    :cond_7
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2
.end method

.method public static parse(Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;Ljava/io/Reader;)V
    .locals 2
    .parameter "doc"
    .parameter "r"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 682
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->parse(Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandlerComment;Ljava/io/Reader;Z)V

    .line 683
    return-void
.end method

.method private processTag(Z)V
    .locals 3
    .parameter "start"

    .prologue
    .line 579
    if-eqz p1, :cond_0

    .line 580
    iget v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->nested:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->nested:I

    .line 581
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->doc:Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;

    iget-object v1, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->attributes:Ljava/util/HashMap;

    invoke-interface {v0, v1, v2}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;->startElement(Ljava/lang/String;Ljava/util/Map;)V

    .line 591
    :goto_0
    return-void

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->newLineHandler:Lcom/itextpdf/text/xml/simpleparser/NewLineHandler;

    iget-object v1, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->tag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/itextpdf/text/xml/simpleparser/NewLineHandler;->isNewLineTag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 586
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->nowhite:Z

    .line 588
    :cond_1
    iget v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->nested:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->nested:I

    .line 589
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->doc:Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;

    iget-object v1, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->tag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;->endElement(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private restoreState()I
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 517
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveState(I)V
    .locals 2
    .parameter "s"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->stack:Ljava/util/Stack;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    return-void
.end method

.method private throwException(Ljava/lang/String;)V
    .locals 5
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 594
    new-instance v0, Ljava/io/IOException;

    const-string v1, "1.near.line.2.column.3"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->lines:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->columns:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
