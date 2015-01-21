.class Lcom/itextpdf/text/pdf/PageResources;
.super Ljava/lang/Object;
.source "PageResources.java"


# instance fields
.field protected colorDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

.field protected extGStateDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

.field protected fontDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

.field protected forbiddenNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/itextpdf/text/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field

.field protected namePtr:[I

.field protected originalResources:Lcom/itextpdf/text/pdf/PdfDictionary;

.field protected patternDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

.field protected propertyDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

.field protected shadingDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

.field protected usedNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/itextpdf/text/pdf/PdfName;",
            "Lcom/itextpdf/text/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field

.field protected xObjectDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PageResources;->fontDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 52
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PageResources;->xObjectDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 53
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PageResources;->colorDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 54
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PageResources;->patternDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 55
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PageResources;->shadingDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 56
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PageResources;->extGStateDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 57
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PageResources;->propertyDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 60
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PageResources;->namePtr:[I

    .line 64
    return-void
.end method


# virtual methods
.method addColor(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;
    .locals 1
    .parameter "name"
    .parameter "reference"

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PageResources;->translateName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object p1

    .line 120
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PageResources;->colorDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 121
    return-object p1
.end method

.method addDefaultColor(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 1
    .parameter "dic"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PageResources;->colorDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->merge(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 133
    return-void
.end method

.method addDefaultColor(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 1
    .parameter "name"
    .parameter "obj"

    .prologue
    .line 125
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfObject;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PageResources;->colorDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PageResources;->colorDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method addDefaultColorDiff(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 1
    .parameter "dic"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PageResources;->colorDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->mergeDifferent(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 137
    return-void
.end method

.method addExtGState(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;
    .locals 1
    .parameter "name"
    .parameter "reference"

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PageResources;->translateName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object p1

    .line 153
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PageResources;->extGStateDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 154
    return-object p1
.end method

.method addFont(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;
    .locals 1
    .parameter "name"
    .parameter "reference"

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PageResources;->translateName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object p1

    .line 108
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PageResources;->fontDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 109
    return-object p1
.end method

.method addPattern(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;
    .locals 1
    .parameter "name"
    .parameter "reference"

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PageResources;->translateName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object p1

    .line 147
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PageResources;->patternDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 148
    return-object p1
.end method

.method addProperty(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;
    .locals 1
    .parameter "name"
    .parameter "reference"

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PageResources;->translateName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object p1

    .line 159
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PageResources;->propertyDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 160
    return-object p1
.end method

.method addShading(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;
    .locals 1
    .parameter "name"
    .parameter "reference"

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PageResources;->translateName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object p1

    .line 141
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PageResources;->shadingDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 142
    return-object p1
.end method

.method addXObject(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;
    .locals 1
    .parameter "name"
    .parameter "reference"

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PageResources;->translateName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object p1

    .line 114
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PageResources;->xObjectDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 115
    return-object p1
.end method

.method getResources()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 4

    .prologue
    .line 164
    new-instance v0, Lcom/itextpdf/text/pdf/PdfResources;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfResources;-><init>()V

    .line 165
    .local v0, resources:Lcom/itextpdf/text/pdf/PdfResources;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PageResources;->originalResources:Lcom/itextpdf/text/pdf/PdfDictionary;

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PageResources;->originalResources:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfResources;->putAll(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 167
    :cond_0
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->PROCSET:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfLiteral;

    const-string v3, "[/PDF /Text /ImageB /ImageC /ImageI]"

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfResources;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 168
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PageResources;->fontDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfResources;->add(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 169
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->XOBJECT:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PageResources;->xObjectDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfResources;->add(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 170
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PageResources;->colorDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfResources;->add(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 171
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->PATTERN:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PageResources;->patternDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfResources;->add(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 172
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->SHADING:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PageResources;->shadingDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfResources;->add(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 173
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->EXTGSTATE:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PageResources;->extGStateDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfResources;->add(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 174
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->PROPERTIES:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PageResources;->propertyDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfResources;->add(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 175
    return-object v0
.end method

.method hasResources()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PageResources;->fontDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PageResources;->xObjectDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PageResources;->colorDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PageResources;->patternDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PageResources;->shadingDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PageResources;->extGStateDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PageResources;->propertyDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setOriginalResources(Lcom/itextpdf/text/pdf/PdfDictionary;[I)V
    .locals 9
    .parameter "resources"
    .parameter "newNamePtr"

    .prologue
    .line 67
    if-eqz p2, :cond_0

    .line 68
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PageResources;->namePtr:[I

    .line 69
    :cond_0
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iput-object v8, p0, Lcom/itextpdf/text/pdf/PageResources;->forbiddenNames:Ljava/util/HashSet;

    .line 70
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/itextpdf/text/pdf/PageResources;->usedNames:Ljava/util/HashMap;

    .line 71
    if-nez p1, :cond_2

    .line 88
    :cond_1
    return-void

    .line 73
    :cond_2
    new-instance v8, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v8}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    iput-object v8, p0, Lcom/itextpdf/text/pdf/PageResources;->originalResources:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 74
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PageResources;->originalResources:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v8, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->merge(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 75
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfName;

    .local v2, element:Lcom/itextpdf/text/pdf/PdfName;
    move-object v6, v2

    .line 76
    check-cast v6, Lcom/itextpdf/text/pdf/PdfName;

    .line 77
    .local v6, key:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p1, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    .line 78
    .local v7, sub:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v0, v7

    .line 79
    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 80
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfName;

    .line 81
    .local v3, element2:Lcom/itextpdf/text/pdf/PdfName;
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PageResources;->forbiddenNames:Ljava/util/HashSet;

    invoke-virtual {v8, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 83
    .end local v3           #element2:Lcom/itextpdf/text/pdf/PdfName;
    :cond_4
    new-instance v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 84
    .local v1, dic2:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->merge(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 85
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PageResources;->originalResources:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v8, v6, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method translateName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;
    .locals 6
    .parameter "name"

    .prologue
    .line 91
    move-object v0, p1

    .line 92
    .local v0, translated:Lcom/itextpdf/text/pdf/PdfName;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PageResources;->forbiddenNames:Ljava/util/HashSet;

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PageResources;->usedNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #translated:Lcom/itextpdf/text/pdf/PdfName;
    check-cast v0, Lcom/itextpdf/text/pdf/PdfName;

    .line 94
    .restart local v0       #translated:Lcom/itextpdf/text/pdf/PdfName;
    if-nez v0, :cond_1

    .line 96
    :cond_0
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    .end local v0           #translated:Lcom/itextpdf/text/pdf/PdfName;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Xi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PageResources;->namePtr:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    add-int/lit8 v5, v4, 0x1

    aput v5, v2, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 97
    .restart local v0       #translated:Lcom/itextpdf/text/pdf/PdfName;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PageResources;->forbiddenNames:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PageResources;->usedNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_1
    return-object v0
.end method
