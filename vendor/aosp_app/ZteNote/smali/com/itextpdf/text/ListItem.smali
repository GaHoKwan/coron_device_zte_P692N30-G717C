.class public Lcom/itextpdf/text/ListItem;
.super Lcom/itextpdf/text/Paragraph;
.source "ListItem.java"


# static fields
.field private static final serialVersionUID:J = 0x1b593aa3ce779f6eL


# instance fields
.field protected symbol:Lcom/itextpdf/text/Chunk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/itextpdf/text/Paragraph;-><init>()V

    .line 113
    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .parameter "leading"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Paragraph;-><init>(F)V

    .line 122
    return-void
.end method

.method public constructor <init>(FLcom/itextpdf/text/Chunk;)V
    .locals 0
    .parameter "leading"
    .parameter "chunk"

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/Paragraph;-><init>(FLcom/itextpdf/text/Chunk;)V

    .line 162
    return-void
.end method

.method public constructor <init>(FLjava/lang/String;)V
    .locals 0
    .parameter "leading"
    .parameter "string"

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/Paragraph;-><init>(FLjava/lang/String;)V

    .line 173
    return-void
.end method

.method public constructor <init>(FLjava/lang/String;Lcom/itextpdf/text/Font;)V
    .locals 0
    .parameter "leading"
    .parameter "string"
    .parameter "font"

    .prologue
    .line 184
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/text/Paragraph;-><init>(FLjava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Chunk;)V
    .locals 0
    .parameter "chunk"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Paragraph;-><init>(Lcom/itextpdf/text/Chunk;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Phrase;)V
    .locals 0
    .parameter "phrase"

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Paragraph;-><init>(Lcom/itextpdf/text/Phrase;)V

    .line 194
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Paragraph;-><init>(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V
    .locals 0
    .parameter "string"
    .parameter "font"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/Paragraph;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 151
    return-void
.end method


# virtual methods
.method public adjustListSymbolFont()V
    .locals 3

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/itextpdf/text/ListItem;->getChunks()Ljava/util/List;

    move-result-object v0

    .line 246
    .local v0, cks:Ljava/util/List;,"Ljava/util/List<Lcom/itextpdf/text/Chunk;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/text/ListItem;->symbol:Lcom/itextpdf/text/Chunk;

    if-eqz v1, :cond_0

    .line 247
    iget-object v2, p0, Lcom/itextpdf/text/ListItem;->symbol:Lcom/itextpdf/text/Chunk;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/Chunk;

    invoke-virtual {v1}, Lcom/itextpdf/text/Chunk;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/itextpdf/text/Chunk;->setFont(Lcom/itextpdf/text/Font;)V

    .line 248
    :cond_0
    return-void
.end method

.method public getListSymbol()Lcom/itextpdf/text/Chunk;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/itextpdf/text/ListItem;->symbol:Lcom/itextpdf/text/Chunk;

    return-object v0
.end method

.method public setIndentationLeft(FZ)V
    .locals 1
    .parameter "indentation"
    .parameter "autoindent"

    .prologue
    .line 231
    if-eqz p2, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/itextpdf/text/ListItem;->getListSymbol()Lcom/itextpdf/text/Chunk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/text/Chunk;->getWidthPoint()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/ListItem;->setIndentationLeft(F)V

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/ListItem;->setIndentationLeft(F)V

    goto :goto_0
.end method

.method public setListSymbol(Lcom/itextpdf/text/Chunk;)V
    .locals 2
    .parameter "symbol"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/itextpdf/text/ListItem;->symbol:Lcom/itextpdf/text/Chunk;

    if-nez v0, :cond_0

    .line 217
    iput-object p1, p0, Lcom/itextpdf/text/ListItem;->symbol:Lcom/itextpdf/text/Chunk;

    .line 218
    iget-object v0, p0, Lcom/itextpdf/text/ListItem;->symbol:Lcom/itextpdf/text/Chunk;

    invoke-virtual {v0}, Lcom/itextpdf/text/Chunk;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/text/Font;->isStandardFont()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/itextpdf/text/ListItem;->symbol:Lcom/itextpdf/text/Chunk;

    iget-object v1, p0, Lcom/itextpdf/text/ListItem;->font:Lcom/itextpdf/text/Font;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Chunk;->setFont(Lcom/itextpdf/text/Font;)V

    .line 222
    :cond_0
    return-void
.end method

.method public type()I
    .locals 1

    .prologue
    .line 205
    const/16 v0, 0xf

    return v0
.end method
