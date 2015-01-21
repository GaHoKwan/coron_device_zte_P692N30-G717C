.class public Lcom/itextpdf/text/ZapfDingbatsList;
.super Lcom/itextpdf/text/List;
.source "ZapfDingbatsList.java"


# instance fields
.field protected zn:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .parameter "zn"

    .prologue
    .line 67
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/itextpdf/text/List;-><init>(Z)V

    .line 68
    iput p1, p0, Lcom/itextpdf/text/ZapfDingbatsList;->zn:I

    .line 69
    iget-object v1, p0, Lcom/itextpdf/text/ZapfDingbatsList;->symbol:Lcom/itextpdf/text/Chunk;

    invoke-virtual {v1}, Lcom/itextpdf/text/Chunk;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/text/Font;->getSize()F

    move-result v0

    .line 70
    .local v0, fontsize:F
    iget-object v1, p0, Lcom/itextpdf/text/ZapfDingbatsList;->symbol:Lcom/itextpdf/text/Chunk;

    const-string v2, "ZapfDingbats"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/itextpdf/text/FontFactory;->getFont(Ljava/lang/String;FI)Lcom/itextpdf/text/Font;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/Chunk;->setFont(Lcom/itextpdf/text/Font;)V

    .line 71
    const-string v1, " "

    iput-object v1, p0, Lcom/itextpdf/text/ZapfDingbatsList;->postSymbol:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .parameter "zn"
    .parameter "symbolIndent"

    .prologue
    .line 81
    const/4 v1, 0x1

    int-to-float v2, p2

    invoke-direct {p0, v1, v2}, Lcom/itextpdf/text/List;-><init>(ZF)V

    .line 82
    iput p1, p0, Lcom/itextpdf/text/ZapfDingbatsList;->zn:I

    .line 83
    iget-object v1, p0, Lcom/itextpdf/text/ZapfDingbatsList;->symbol:Lcom/itextpdf/text/Chunk;

    invoke-virtual {v1}, Lcom/itextpdf/text/Chunk;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/text/Font;->getSize()F

    move-result v0

    .line 84
    .local v0, fontsize:F
    iget-object v1, p0, Lcom/itextpdf/text/ZapfDingbatsList;->symbol:Lcom/itextpdf/text/Chunk;

    const-string v2, "ZapfDingbats"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/itextpdf/text/FontFactory;->getFont(Ljava/lang/String;FI)Lcom/itextpdf/text/Font;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/Chunk;->setFont(Lcom/itextpdf/text/Font;)V

    .line 85
    const-string v1, " "

    iput-object v1, p0, Lcom/itextpdf/text/ZapfDingbatsList;->postSymbol:Ljava/lang/String;

    .line 86
    return-void
.end method


# virtual methods
.method public add(Lcom/itextpdf/text/Element;)Z
    .locals 5
    .parameter "o"

    .prologue
    .line 113
    instance-of v3, p1, Lcom/itextpdf/text/ListItem;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 114
    check-cast v1, Lcom/itextpdf/text/ListItem;

    .line 115
    .local v1, item:Lcom/itextpdf/text/ListItem;
    new-instance v0, Lcom/itextpdf/text/Chunk;

    iget-object v3, p0, Lcom/itextpdf/text/ZapfDingbatsList;->preSymbol:Ljava/lang/String;

    iget-object v4, p0, Lcom/itextpdf/text/ZapfDingbatsList;->symbol:Lcom/itextpdf/text/Chunk;

    invoke-virtual {v4}, Lcom/itextpdf/text/Chunk;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 116
    .local v0, chunk:Lcom/itextpdf/text/Chunk;
    iget-object v3, p0, Lcom/itextpdf/text/ZapfDingbatsList;->symbol:Lcom/itextpdf/text/Chunk;

    invoke-virtual {v3}, Lcom/itextpdf/text/Chunk;->getAttributes()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/Chunk;->setAttributes(Ljava/util/HashMap;)V

    .line 117
    iget v3, p0, Lcom/itextpdf/text/ZapfDingbatsList;->zn:I

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/Chunk;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    iget-object v3, p0, Lcom/itextpdf/text/ZapfDingbatsList;->postSymbol:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/Chunk;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    invoke-virtual {v1, v0}, Lcom/itextpdf/text/ListItem;->setListSymbol(Lcom/itextpdf/text/Chunk;)V

    .line 120
    iget v3, p0, Lcom/itextpdf/text/ZapfDingbatsList;->symbolIndent:F

    iget-boolean v4, p0, Lcom/itextpdf/text/ZapfDingbatsList;->autoindent:Z

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/text/ListItem;->setIndentationLeft(FZ)V

    .line 121
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/ListItem;->setIndentationRight(F)V

    .line 122
    iget-object v3, p0, Lcom/itextpdf/text/ZapfDingbatsList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .end local v0           #chunk:Lcom/itextpdf/text/Chunk;
    .end local v1           #item:Lcom/itextpdf/text/ListItem;
    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 123
    :cond_1
    instance-of v3, p1, Lcom/itextpdf/text/List;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 124
    check-cast v2, Lcom/itextpdf/text/List;

    .line 125
    .local v2, nested:Lcom/itextpdf/text/List;
    invoke-virtual {v2}, Lcom/itextpdf/text/List;->getIndentationLeft()F

    move-result v3

    iget v4, p0, Lcom/itextpdf/text/ZapfDingbatsList;->symbolIndent:F

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/List;->setIndentationLeft(F)V

    .line 126
    iget v3, p0, Lcom/itextpdf/text/ZapfDingbatsList;->first:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/itextpdf/text/ZapfDingbatsList;->first:I

    .line 127
    iget-object v3, p0, Lcom/itextpdf/text/ZapfDingbatsList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public getCharNumber()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/itextpdf/text/ZapfDingbatsList;->zn:I

    return v0
.end method

.method public setCharNumber(I)V
    .locals 0
    .parameter "zn"

    .prologue
    .line 93
    iput p1, p0, Lcom/itextpdf/text/ZapfDingbatsList;->zn:I

    .line 94
    return-void
.end method
