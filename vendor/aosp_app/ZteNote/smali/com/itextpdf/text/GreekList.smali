.class public Lcom/itextpdf/text/GreekList;
.super Lcom/itextpdf/text/List;
.source "GreekList.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/itextpdf/text/List;-><init>(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/itextpdf/text/GreekList;->setGreekFont()V

    .line 65
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "symbolIndent"

    .prologue
    .line 72
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/List;-><init>(ZF)V

    .line 73
    invoke-virtual {p0}, Lcom/itextpdf/text/GreekList;->setGreekFont()V

    .line 74
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 2
    .parameter "greeklower"
    .parameter "symbolIndent"

    .prologue
    .line 82
    const/4 v0, 0x1

    int-to-float v1, p2

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/List;-><init>(ZF)V

    .line 83
    iput-boolean p1, p0, Lcom/itextpdf/text/GreekList;->lowercase:Z

    .line 84
    invoke-virtual {p0}, Lcom/itextpdf/text/GreekList;->setGreekFont()V

    .line 85
    return-void
.end method


# virtual methods
.method public add(Lcom/itextpdf/text/Element;)Z
    .locals 5
    .parameter "o"

    .prologue
    .line 107
    instance-of v3, p1, Lcom/itextpdf/text/ListItem;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 108
    check-cast v1, Lcom/itextpdf/text/ListItem;

    .line 109
    .local v1, item:Lcom/itextpdf/text/ListItem;
    new-instance v0, Lcom/itextpdf/text/Chunk;

    iget-object v3, p0, Lcom/itextpdf/text/GreekList;->preSymbol:Ljava/lang/String;

    iget-object v4, p0, Lcom/itextpdf/text/GreekList;->symbol:Lcom/itextpdf/text/Chunk;

    invoke-virtual {v4}, Lcom/itextpdf/text/Chunk;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 110
    .local v0, chunk:Lcom/itextpdf/text/Chunk;
    iget-object v3, p0, Lcom/itextpdf/text/GreekList;->symbol:Lcom/itextpdf/text/Chunk;

    invoke-virtual {v3}, Lcom/itextpdf/text/Chunk;->getAttributes()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/Chunk;->setAttributes(Ljava/util/HashMap;)V

    .line 111
    iget v3, p0, Lcom/itextpdf/text/GreekList;->first:I

    iget-object v4, p0, Lcom/itextpdf/text/GreekList;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iget-boolean v4, p0, Lcom/itextpdf/text/GreekList;->lowercase:Z

    invoke-static {v3, v4}, Lcom/itextpdf/text/factories/GreekAlphabetFactory;->getString(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/Chunk;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    iget-object v3, p0, Lcom/itextpdf/text/GreekList;->postSymbol:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/Chunk;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    invoke-virtual {v1, v0}, Lcom/itextpdf/text/ListItem;->setListSymbol(Lcom/itextpdf/text/Chunk;)V

    .line 114
    iget v3, p0, Lcom/itextpdf/text/GreekList;->symbolIndent:F

    iget-boolean v4, p0, Lcom/itextpdf/text/GreekList;->autoindent:Z

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/text/ListItem;->setIndentationLeft(FZ)V

    .line 115
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/ListItem;->setIndentationRight(F)V

    .line 116
    iget-object v3, p0, Lcom/itextpdf/text/GreekList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v0           #chunk:Lcom/itextpdf/text/Chunk;
    .end local v1           #item:Lcom/itextpdf/text/ListItem;
    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 117
    :cond_1
    instance-of v3, p1, Lcom/itextpdf/text/List;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 118
    check-cast v2, Lcom/itextpdf/text/List;

    .line 119
    .local v2, nested:Lcom/itextpdf/text/List;
    invoke-virtual {v2}, Lcom/itextpdf/text/List;->getIndentationLeft()F

    move-result v3

    iget v4, p0, Lcom/itextpdf/text/GreekList;->symbolIndent:F

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/List;->setIndentationLeft(F)V

    .line 120
    iget v3, p0, Lcom/itextpdf/text/GreekList;->first:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/itextpdf/text/GreekList;->first:I

    .line 121
    iget-object v3, p0, Lcom/itextpdf/text/GreekList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method protected setGreekFont()V
    .locals 4

    .prologue
    .line 93
    iget-object v1, p0, Lcom/itextpdf/text/GreekList;->symbol:Lcom/itextpdf/text/Chunk;

    invoke-virtual {v1}, Lcom/itextpdf/text/Chunk;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/text/Font;->getSize()F

    move-result v0

    .line 94
    .local v0, fontsize:F
    iget-object v1, p0, Lcom/itextpdf/text/GreekList;->symbol:Lcom/itextpdf/text/Chunk;

    const-string v2, "Symbol"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/itextpdf/text/FontFactory;->getFont(Ljava/lang/String;FI)Lcom/itextpdf/text/Font;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/Chunk;->setFont(Lcom/itextpdf/text/Font;)V

    .line 95
    return-void
.end method
