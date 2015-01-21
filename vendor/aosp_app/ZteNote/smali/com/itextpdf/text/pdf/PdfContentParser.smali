.class public Lcom/itextpdf/text/pdf/PdfContentParser;
.super Ljava/lang/Object;
.source "PdfContentParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/PdfContentParser$1;
    }
.end annotation


# static fields
.field public static final COMMAND_TYPE:I = 0xc8


# instance fields
.field private tokeniser:Lcom/itextpdf/text/pdf/PRTokeniser;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PRTokeniser;)V
    .locals 0
    .parameter "tokeniser"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfContentParser;->tokeniser:Lcom/itextpdf/text/pdf/PRTokeniser;

    .line 72
    return-void
.end method


# virtual methods
.method public getTokeniser()Lcom/itextpdf/text/pdf/PRTokeniser;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentParser;->tokeniser:Lcom/itextpdf/text/pdf/PRTokeniser;

    return-object v0
.end method

.method public nextValidToken()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentParser;->tokeniser:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentParser;->tokeniser:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->COMMENT:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v0, v1, :cond_0

    .line 199
    const/4 v0, 0x1

    .line 201
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    .local p1, ls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    if-nez p1, :cond_2

    .line 85
    new-instance p1, Ljava/util/ArrayList;

    .end local p1           #ls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .restart local p1       #ls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    :goto_0
    const/4 v0, 0x0

    .line 89
    .local v0, ob:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentParser;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 94
    :cond_1
    return-object p1

    .line 87
    .end local v0           #ob:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public readArray()Lcom/itextpdf/text/pdf/PdfArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 149
    .local v0, array:Lcom/itextpdf/text/pdf/PdfArray;
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentParser;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 150
    .local v1, obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v2

    .line 151
    .local v2, type:I
    neg-int v3, v2

    sget-object v4, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->END_ARRAY:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 157
    return-object v0

    .line 153
    :cond_0
    neg-int v3, v2

    sget-object v4, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->END_DIC:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 154
    new-instance v3, Ljava/io/IOException;

    const-string v4, "unexpected.gt.gt"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 155
    :cond_1
    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_0
.end method

.method public readDictionary()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 119
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 121
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentParser;->nextValidToken()Z

    move-result v4

    if-nez v4, :cond_1

    .line 122
    new-instance v4, Ljava/io/IOException;

    const-string v5, "unexpected.end.of.file"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 123
    :cond_1
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentParser;->tokeniser:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->END_DIC:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-ne v4, v5, :cond_2

    .line 138
    return-object v0

    .line 125
    :cond_2
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentParser;->tokeniser:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->OTHER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-ne v4, v5, :cond_3

    const-string v4, "def"

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfContentParser;->tokeniser:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 127
    :cond_3
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentParser;->tokeniser:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NAME:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v4, v5, :cond_4

    .line 128
    new-instance v4, Ljava/io/IOException;

    const-string v5, "dictionary.key.is.not.a.name"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 129
    :cond_4
    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentParser;->tokeniser:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v6}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;Z)V

    .line 130
    .local v1, name:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentParser;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .line 131
    .local v2, obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v3

    .line 132
    .local v3, type:I
    neg-int v4, v3

    sget-object v5, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->END_DIC:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 133
    new-instance v4, Ljava/io/IOException;

    const-string v5, "unexpected.gt.gt"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 134
    :cond_5
    neg-int v4, v3

    sget-object v5, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->END_ARRAY:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_6

    .line 135
    new-instance v4, Ljava/io/IOException;

    const-string v5, "unexpected.close.bracket"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 136
    :cond_6
    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_0
.end method

.method public readPRObject()Lcom/itextpdf/text/pdf/PdfObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentParser;->nextValidToken()Z

    move-result v3

    if-nez v3, :cond_0

    .line 186
    :goto_0
    return-object v0

    .line 168
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfContentParser;->tokeniser:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v2

    .line 169
    .local v2, type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfContentParser$1;->$SwitchMap$com$itextpdf$text$pdf$PRTokeniser$TokenType:[I

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 186
    new-instance v0, Lcom/itextpdf/text/pdf/PdfLiteral;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->ordinal()I

    move-result v3

    neg-int v3, v3

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentParser;->tokeniser:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 171
    :pswitch_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentParser;->readDictionary()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 172
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    goto :goto_0

    .line 175
    .end local v0           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :pswitch_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentParser;->readArray()Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v0

    goto :goto_0

    .line 177
    :pswitch_2
    new-instance v3, Lcom/itextpdf/text/pdf/PdfString;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentParser;->tokeniser:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentParser;->tokeniser:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRTokeniser;->isHexString()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfString;->setHexWriting(Z)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v1

    .local v1, str:Lcom/itextpdf/text/pdf/PdfString;
    move-object v0, v1

    .line 178
    goto :goto_0

    .line 180
    .end local v1           #str:Lcom/itextpdf/text/pdf/PdfString;
    :pswitch_3
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfContentParser;->tokeniser:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    .line 182
    :pswitch_4
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfContentParser;->tokeniser:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :pswitch_5
    new-instance v0, Lcom/itextpdf/text/pdf/PdfLiteral;

    const/16 v3, 0xc8

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentParser;->tokeniser:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setTokeniser(Lcom/itextpdf/text/pdf/PRTokeniser;)V
    .locals 0
    .parameter "tokeniser"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfContentParser;->tokeniser:Lcom/itextpdf/text/pdf/PRTokeniser;

    .line 111
    return-void
.end method
