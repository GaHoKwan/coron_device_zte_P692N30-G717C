.class public Lcom/itextpdf/text/RomanList;
.super Lcom/itextpdf/text/List;
.source "RomanList.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/itextpdf/text/List;-><init>(Z)V

    .line 64
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
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 2
    .parameter "lowercase"
    .parameter "symbolIndent"

    .prologue
    .line 81
    const/4 v0, 0x1

    int-to-float v1, p2

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/List;-><init>(ZF)V

    .line 82
    iput-boolean p1, p0, Lcom/itextpdf/text/RomanList;->lowercase:Z

    .line 83
    return-void
.end method


# virtual methods
.method public add(Lcom/itextpdf/text/Element;)Z
    .locals 5
    .parameter "o"

    .prologue
    .line 95
    instance-of v3, p1, Lcom/itextpdf/text/ListItem;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 96
    check-cast v1, Lcom/itextpdf/text/ListItem;

    .line 98
    .local v1, item:Lcom/itextpdf/text/ListItem;
    new-instance v0, Lcom/itextpdf/text/Chunk;

    iget-object v3, p0, Lcom/itextpdf/text/RomanList;->preSymbol:Ljava/lang/String;

    iget-object v4, p0, Lcom/itextpdf/text/RomanList;->symbol:Lcom/itextpdf/text/Chunk;

    invoke-virtual {v4}, Lcom/itextpdf/text/Chunk;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 99
    .local v0, chunk:Lcom/itextpdf/text/Chunk;
    iget-object v3, p0, Lcom/itextpdf/text/RomanList;->symbol:Lcom/itextpdf/text/Chunk;

    invoke-virtual {v3}, Lcom/itextpdf/text/Chunk;->getAttributes()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/Chunk;->setAttributes(Ljava/util/HashMap;)V

    .line 100
    iget v3, p0, Lcom/itextpdf/text/RomanList;->first:I

    iget-object v4, p0, Lcom/itextpdf/text/RomanList;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iget-boolean v4, p0, Lcom/itextpdf/text/RomanList;->lowercase:Z

    invoke-static {v3, v4}, Lcom/itextpdf/text/factories/RomanNumberFactory;->getString(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/Chunk;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    iget-object v3, p0, Lcom/itextpdf/text/RomanList;->postSymbol:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/Chunk;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    invoke-virtual {v1, v0}, Lcom/itextpdf/text/ListItem;->setListSymbol(Lcom/itextpdf/text/Chunk;)V

    .line 103
    iget v3, p0, Lcom/itextpdf/text/RomanList;->symbolIndent:F

    iget-boolean v4, p0, Lcom/itextpdf/text/RomanList;->autoindent:Z

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/text/ListItem;->setIndentationLeft(FZ)V

    .line 104
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/ListItem;->setIndentationRight(F)V

    .line 105
    iget-object v3, p0, Lcom/itextpdf/text/RomanList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .end local v0           #chunk:Lcom/itextpdf/text/Chunk;
    .end local v1           #item:Lcom/itextpdf/text/ListItem;
    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 106
    :cond_1
    instance-of v3, p1, Lcom/itextpdf/text/List;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 107
    check-cast v2, Lcom/itextpdf/text/List;

    .line 108
    .local v2, nested:Lcom/itextpdf/text/List;
    invoke-virtual {v2}, Lcom/itextpdf/text/List;->getIndentationLeft()F

    move-result v3

    iget v4, p0, Lcom/itextpdf/text/RomanList;->symbolIndent:F

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/List;->setIndentationLeft(F)V

    .line 109
    iget v3, p0, Lcom/itextpdf/text/RomanList;->first:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/itextpdf/text/RomanList;->first:I

    .line 110
    iget-object v3, p0, Lcom/itextpdf/text/RomanList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method
