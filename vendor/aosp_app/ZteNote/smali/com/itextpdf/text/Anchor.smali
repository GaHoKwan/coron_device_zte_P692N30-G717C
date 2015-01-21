.class public Lcom/itextpdf/text/Anchor;
.super Lcom/itextpdf/text/Phrase;
.source "Anchor.java"


# static fields
.field private static final serialVersionUID:J = -0xbd3e6d01ee79bafL


# instance fields
.field protected name:Ljava/lang/String;

.field protected reference:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    const/high16 v0, 0x4180

    invoke-direct {p0, v0}, Lcom/itextpdf/text/Phrase;-><init>(F)V

    .line 77
    iput-object v1, p0, Lcom/itextpdf/text/Anchor;->name:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .parameter "leading"

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Phrase;-><init>(F)V

    .line 77
    iput-object v0, p0, Lcom/itextpdf/text/Anchor;->name:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public constructor <init>(FLcom/itextpdf/text/Chunk;)V
    .locals 1
    .parameter "leading"
    .parameter "chunk"

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/Phrase;-><init>(FLcom/itextpdf/text/Chunk;)V

    .line 77
    iput-object v0, p0, Lcom/itextpdf/text/Anchor;->name:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public constructor <init>(FLjava/lang/String;)V
    .locals 1
    .parameter "leading"
    .parameter "string"

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/Phrase;-><init>(FLjava/lang/String;)V

    .line 77
    iput-object v0, p0, Lcom/itextpdf/text/Anchor;->name:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public constructor <init>(FLjava/lang/String;Lcom/itextpdf/text/Font;)V
    .locals 1
    .parameter "leading"
    .parameter "string"
    .parameter "font"

    .prologue
    const/4 v0, 0x0

    .line 161
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/text/Phrase;-><init>(FLjava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 77
    iput-object v0, p0, Lcom/itextpdf/text/Anchor;->name:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Chunk;)V
    .locals 1
    .parameter "chunk"

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Phrase;-><init>(Lcom/itextpdf/text/Chunk;)V

    .line 77
    iput-object v0, p0, Lcom/itextpdf/text/Anchor;->name:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Phrase;)V
    .locals 2
    .parameter "phrase"

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Phrase;-><init>(Lcom/itextpdf/text/Phrase;)V

    .line 77
    iput-object v1, p0, Lcom/itextpdf/text/Anchor;->name:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    .line 171
    instance-of v1, p1, Lcom/itextpdf/text/Anchor;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 172
    check-cast v0, Lcom/itextpdf/text/Anchor;

    .line 173
    .local v0, a:Lcom/itextpdf/text/Anchor;
    iget-object v1, v0, Lcom/itextpdf/text/Anchor;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Anchor;->setName(Ljava/lang/String;)V

    .line 174
    iget-object v1, v0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Anchor;->setReference(Ljava/lang/String;)V

    .line 176
    .end local v0           #a:Lcom/itextpdf/text/Anchor;
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Phrase;-><init>(Ljava/lang/String;)V

    .line 77
    iput-object v0, p0, Lcom/itextpdf/text/Anchor;->name:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V
    .locals 1
    .parameter "string"
    .parameter "font"

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/Phrase;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 77
    iput-object v0, p0, Lcom/itextpdf/text/Anchor;->name:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    .line 128
    return-void
.end method


# virtual methods
.method public getChunks()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/itextpdf/text/Chunk;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 219
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v4, tmp:Ljava/util/List;,"Ljava/util/List<Lcom/itextpdf/text/Chunk;>;"
    invoke-virtual {p0}, Lcom/itextpdf/text/Anchor;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 222
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/Element;>;"
    iget-object v6, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v2, v5

    .line 223
    .local v2, localDestination:Z
    :goto_0
    const/4 v3, 0x1

    .line 224
    .local v3, notGotoOK:Z
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 225
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/Chunk;

    .line 226
    .local v0, chunk:Lcom/itextpdf/text/Chunk;
    iget-object v6, p0, Lcom/itextpdf/text/Anchor;->name:Ljava/lang/String;

    if-eqz v6, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/text/Chunk;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 227
    iget-object v6, p0, Lcom/itextpdf/text/Anchor;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/Chunk;->setLocalDestination(Ljava/lang/String;)Lcom/itextpdf/text/Chunk;

    .line 228
    const/4 v3, 0x0

    .line 230
    :cond_0
    if-eqz v2, :cond_3

    .line 231
    iget-object v6, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/Chunk;->setLocalGoto(Ljava/lang/String;)Lcom/itextpdf/text/Chunk;

    .line 235
    :cond_1
    :goto_2
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 222
    .end local v0           #chunk:Lcom/itextpdf/text/Chunk;
    .end local v2           #localDestination:Z
    .end local v3           #notGotoOK:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 233
    .restart local v0       #chunk:Lcom/itextpdf/text/Chunk;
    .restart local v2       #localDestination:Z
    .restart local v3       #notGotoOK:Z
    :cond_3
    iget-object v6, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 234
    iget-object v6, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/Chunk;->setAnchor(Ljava/lang/String;)Lcom/itextpdf/text/Chunk;

    goto :goto_2

    .line 237
    .end local v0           #chunk:Lcom/itextpdf/text/Chunk;
    :cond_4
    return-object v4
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/itextpdf/text/Anchor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 3

    .prologue
    .line 297
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    return-object v1

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, mue:Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public process(Lcom/itextpdf/text/ElementListener;)Z
    .locals 9
    .parameter "listener"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 191
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/text/Anchor;->getChunks()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 192
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/Chunk;>;"
    iget-object v7, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v3, v5

    .line 193
    .local v3, localDestination:Z
    :goto_0
    const/4 v4, 0x1

    .line 194
    .local v4, notGotoOK:Z
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 195
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/Chunk;

    .line 196
    .local v0, chunk:Lcom/itextpdf/text/Chunk;
    iget-object v7, p0, Lcom/itextpdf/text/Anchor;->name:Ljava/lang/String;

    if-eqz v7, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/text/Chunk;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 197
    iget-object v7, p0, Lcom/itextpdf/text/Anchor;->name:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/Chunk;->setLocalDestination(Ljava/lang/String;)Lcom/itextpdf/text/Chunk;

    .line 198
    const/4 v4, 0x0

    .line 200
    :cond_0
    if-eqz v3, :cond_1

    .line 201
    iget-object v7, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/Chunk;->setLocalGoto(Ljava/lang/String;)Lcom/itextpdf/text/Chunk;

    .line 203
    :cond_1
    invoke-interface {p1, v0}, Lcom/itextpdf/text/ElementListener;->add(Lcom/itextpdf/text/Element;)Z
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 207
    .end local v0           #chunk:Lcom/itextpdf/text/Chunk;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/Chunk;>;"
    .end local v3           #localDestination:Z
    .end local v4           #notGotoOK:Z
    :catch_0
    move-exception v1

    .local v1, de:Lcom/itextpdf/text/DocumentException;
    move v5, v6

    .line 208
    .end local v1           #de:Lcom/itextpdf/text/DocumentException;
    :cond_2
    return v5

    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/Chunk;>;"
    :cond_3
    move v3, v6

    .line 192
    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 258
    iput-object p1, p0, Lcom/itextpdf/text/Anchor;->name:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public setReference(Ljava/lang/String;)V
    .locals 0
    .parameter "reference"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public type()I
    .locals 1

    .prologue
    .line 247
    const/16 v0, 0x11

    return v0
.end method
