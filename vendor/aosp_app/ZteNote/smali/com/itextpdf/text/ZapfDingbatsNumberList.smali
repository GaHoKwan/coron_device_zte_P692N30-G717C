.class public Lcom/itextpdf/text/ZapfDingbatsNumberList;
.super Lcom/itextpdf/text/List;
.source "ZapfDingbatsNumberList.java"


# instance fields
.field protected type:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 66
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/itextpdf/text/List;-><init>(Z)V

    .line 67
    iput p1, p0, Lcom/itextpdf/text/ZapfDingbatsNumberList;->type:I

    .line 68
    iget-object v1, p0, Lcom/itextpdf/text/ZapfDingbatsNumberList;->symbol:Lcom/itextpdf/text/Chunk;

    invoke-virtual {v1}, Lcom/itextpdf/text/Chunk;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/text/Font;->getSize()F

    move-result v0

    .line 69
    .local v0, fontsize:F
    iget-object v1, p0, Lcom/itextpdf/text/ZapfDingbatsNumberList;->symbol:Lcom/itextpdf/text/Chunk;

    const-string v2, "ZapfDingbats"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/itextpdf/text/FontFactory;->getFont(Ljava/lang/String;FI)Lcom/itextpdf/text/Font;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/Chunk;->setFont(Lcom/itextpdf/text/Font;)V

    .line 70
    const-string v1, " "

    iput-object v1, p0, Lcom/itextpdf/text/ZapfDingbatsNumberList;->postSymbol:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .parameter "type"
    .parameter "symbolIndent"

    .prologue
    .line 79
    const/4 v1, 0x1

    int-to-float v2, p2

    invoke-direct {p0, v1, v2}, Lcom/itextpdf/text/List;-><init>(ZF)V

    .line 80
    iput p1, p0, Lcom/itextpdf/text/ZapfDingbatsNumberList;->type:I

    .line 81
    iget-object v1, p0, Lcom/itextpdf/text/ZapfDingbatsNumberList;->symbol:Lcom/itextpdf/text/Chunk;

    invoke-virtual {v1}, Lcom/itextpdf/text/Chunk;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/text/Font;->getSize()F

    move-result v0

    .line 82
    .local v0, fontsize:F
    iget-object v1, p0, Lcom/itextpdf/text/ZapfDingbatsNumberList;->symbol:Lcom/itextpdf/text/Chunk;

    const-string v2, "ZapfDingbats"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/itextpdf/text/FontFactory;->getFont(Ljava/lang/String;FI)Lcom/itextpdf/text/Font;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/Chunk;->setFont(Lcom/itextpdf/text/Font;)V

    .line 83
    const-string v1, " "

    iput-object v1, p0, Lcom/itextpdf/text/ZapfDingbatsNumberList;->postSymbol:Ljava/lang/String;

    .line 84
    return-void
.end method


# virtual methods
.method public add(Lcom/itextpdf/text/Element;)Z
    .locals 5
    .parameter "o"

    .prologue
    .line 112
    instance-of v3, p1, Lcom/itextpdf/text/ListItem;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 113
    check-cast v1, Lcom/itextpdf/text/ListItem;

    .line 114
    .local v1, item:Lcom/itextpdf/text/ListItem;
    new-instance v0, Lcom/itextpdf/text/Chunk;

    iget-object v3, p0, Lcom/itextpdf/text/ZapfDingbatsNumberList;->preSymbol:Ljava/lang/String;

    iget-object v4, p0, Lcom/itextpdf/text/ZapfDingbatsNumberList;->symbol:Lcom/itextpdf/text/Chunk;

    invoke-virtual {v4}, Lcom/itextpdf/text/Chunk;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 115
    .local v0, chunk:Lcom/itextpdf/text/Chunk;
    iget-object v3, p0, Lcom/itextpdf/text/ZapfDingbatsNumberList;->symbol:Lcom/itextpdf/text/Chunk;

    invoke-virtual {v3}, Lcom/itextpdf/text/Chunk;->getAttributes()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/Chunk;->setAttributes(Ljava/util/HashMap;)V

    .line 116
    iget v3, p0, Lcom/itextpdf/text/ZapfDingbatsNumberList;->type:I

    packed-switch v3, :pswitch_data_0

    .line 127
    iget v3, p0, Lcom/itextpdf/text/ZapfDingbatsNumberList;->first:I

    iget-object v4, p0, Lcom/itextpdf/text/ZapfDingbatsNumberList;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit16 v3, v3, 0xc9

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/Chunk;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/text/ZapfDingbatsNumberList;->postSymbol:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/Chunk;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {v1, v0}, Lcom/itextpdf/text/ListItem;->setListSymbol(Lcom/itextpdf/text/Chunk;)V

    .line 131
    iget v3, p0, Lcom/itextpdf/text/ZapfDingbatsNumberList;->symbolIndent:F

    iget-boolean v4, p0, Lcom/itextpdf/text/ZapfDingbatsNumberList;->autoindent:Z

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/text/ListItem;->setIndentationLeft(FZ)V

    .line 132
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/ListItem;->setIndentationRight(F)V

    .line 133
    iget-object v3, p0, Lcom/itextpdf/text/ZapfDingbatsNumberList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .end local v0           #chunk:Lcom/itextpdf/text/Chunk;
    .end local v1           #item:Lcom/itextpdf/text/ListItem;
    :cond_0
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 118
    .restart local v0       #chunk:Lcom/itextpdf/text/Chunk;
    .restart local v1       #item:Lcom/itextpdf/text/ListItem;
    :pswitch_0
    iget v3, p0, Lcom/itextpdf/text/ZapfDingbatsNumberList;->first:I

    iget-object v4, p0, Lcom/itextpdf/text/ZapfDingbatsNumberList;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit16 v3, v3, 0xab

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/Chunk;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 121
    :pswitch_1
    iget v3, p0, Lcom/itextpdf/text/ZapfDingbatsNumberList;->first:I

    iget-object v4, p0, Lcom/itextpdf/text/ZapfDingbatsNumberList;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit16 v3, v3, 0xb5

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/Chunk;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 124
    :pswitch_2
    iget v3, p0, Lcom/itextpdf/text/ZapfDingbatsNumberList;->first:I

    iget-object v4, p0, Lcom/itextpdf/text/ZapfDingbatsNumberList;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit16 v3, v3, 0xbf

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/Chunk;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 134
    .end local v0           #chunk:Lcom/itextpdf/text/Chunk;
    .end local v1           #item:Lcom/itextpdf/text/ListItem;
    :cond_1
    instance-of v3, p1, Lcom/itextpdf/text/List;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 135
    check-cast v2, Lcom/itextpdf/text/List;

    .line 136
    .local v2, nested:Lcom/itextpdf/text/List;
    invoke-virtual {v2}, Lcom/itextpdf/text/List;->getIndentationLeft()F

    move-result v3

    iget v4, p0, Lcom/itextpdf/text/ZapfDingbatsNumberList;->symbolIndent:F

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/List;->setIndentationLeft(F)V

    .line 137
    iget v3, p0, Lcom/itextpdf/text/ZapfDingbatsNumberList;->first:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/itextpdf/text/ZapfDingbatsNumberList;->first:I

    .line 138
    iget-object v3, p0, Lcom/itextpdf/text/ZapfDingbatsNumberList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/itextpdf/text/ZapfDingbatsNumberList;->type:I

    return v0
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 92
    iput p1, p0, Lcom/itextpdf/text/ZapfDingbatsNumberList;->type:I

    .line 93
    return-void
.end method
