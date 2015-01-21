.class public Lcom/itextpdf/text/html/simpleparser/ChainedProperties;
.super Ljava/lang/Object;
.source "ChainedProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/html/simpleparser/ChainedProperties$TagAttributes;
    }
.end annotation


# instance fields
.field public chain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/itextpdf/text/html/simpleparser/ChainedProperties$TagAttributes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->chain:Ljava/util/List;

    .line 83
    return-void
.end method


# virtual methods
.method public addToChain(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
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
    .line 126
    .local p2, props:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->adjustFontSize(Ljava/util/Map;)V

    .line 127
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->chain:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/text/html/simpleparser/ChainedProperties$TagAttributes;

    invoke-direct {v1, p1, p2}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties$TagAttributes;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method protected adjustFontSize(Ljava/util/Map;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, attrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "size"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 154
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 164
    :goto_0
    return-void

    .line 157
    :cond_0
    const-string v2, "pt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    const-string v2, "size"

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 162
    :cond_1
    const-string v2, "size"

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, old:Ljava/lang/String;
    const-string v2, "size"

    invoke-static {v1, v0}, Lcom/itextpdf/text/html/HtmlUtilities;->getIndexedFontSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "key"

    .prologue
    .line 93
    iget-object v4, p0, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->chain:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, k:I
    :goto_0
    if-ltz v1, :cond_1

    .line 94
    iget-object v4, p0, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->chain:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/html/simpleparser/ChainedProperties$TagAttributes;

    .line 95
    .local v2, p:Lcom/itextpdf/text/html/simpleparser/ChainedProperties$TagAttributes;
    iget-object v0, v2, Lcom/itextpdf/text/html/simpleparser/ChainedProperties$TagAttributes;->attrs:Ljava/util/Map;

    .line 96
    .local v0, attrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 97
    .local v3, ret:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 100
    .end local v0           #attrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #p:Lcom/itextpdf/text/html/simpleparser/ChainedProperties$TagAttributes;
    .end local v3           #ret:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 93
    .restart local v0       #attrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2       #p:Lcom/itextpdf/text/html/simpleparser/ChainedProperties$TagAttributes;
    .restart local v3       #ret:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 100
    .end local v0           #attrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #p:Lcom/itextpdf/text/html/simpleparser/ChainedProperties$TagAttributes;
    .end local v3           #ret:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public hasProperty(Ljava/lang/String;)Z
    .locals 4
    .parameter "key"

    .prologue
    .line 111
    iget-object v3, p0, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->chain:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, k:I
    :goto_0
    if-ltz v1, :cond_1

    .line 112
    iget-object v3, p0, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->chain:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/html/simpleparser/ChainedProperties$TagAttributes;

    .line 113
    .local v2, p:Lcom/itextpdf/text/html/simpleparser/ChainedProperties$TagAttributes;
    iget-object v0, v2, Lcom/itextpdf/text/html/simpleparser/ChainedProperties$TagAttributes;->attrs:Ljava/util/Map;

    .line 114
    .local v0, attrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    const/4 v3, 0x1

    .line 117
    .end local v0           #attrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #p:Lcom/itextpdf/text/html/simpleparser/ChainedProperties$TagAttributes;
    :goto_1
    return v3

    .line 111
    .restart local v0       #attrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2       #p:Lcom/itextpdf/text/html/simpleparser/ChainedProperties$TagAttributes;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 117
    .end local v0           #attrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #p:Lcom/itextpdf/text/html/simpleparser/ChainedProperties$TagAttributes;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public removeChain(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 136
    iget-object v1, p0, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->chain:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, k:I
    :goto_0
    if-ltz v0, :cond_0

    .line 137
    iget-object v1, p0, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->chain:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/html/simpleparser/ChainedProperties$TagAttributes;

    iget-object v1, v1, Lcom/itextpdf/text/html/simpleparser/ChainedProperties$TagAttributes;->tag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->chain:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 142
    :cond_0
    return-void

    .line 136
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
