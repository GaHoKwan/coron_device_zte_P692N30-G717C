.class public Lcom/itextpdf/text/pdf/FdfWriter;
.super Ljava/lang/Object;
.source "FdfWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/FdfWriter$Wrt;
    }
.end annotation


# static fields
.field private static final HEADER_FDF:[B


# instance fields
.field fields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private file:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "%FDF-1.4\n%\u00e2\u00e3\u00cf\u00d3\n"

    invoke-static {v0}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/text/pdf/FdfWriter;->HEADER_FDF:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/FdfWriter;->fields:Ljava/util/HashMap;

    .line 68
    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/itextpdf/text/pdf/FdfWriter;->HEADER_FDF:[B

    return-object v0
.end method

.method static synthetic access$100(Lcom/itextpdf/text/pdf/FdfWriter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/itextpdf/text/pdf/FdfWriter;->file:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getField(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "field"

    .prologue
    const/4 v4, 0x0

    .line 181
    iget-object v0, p0, Lcom/itextpdf/text/pdf/FdfWriter;->fields:Ljava/util/HashMap;

    .line 182
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, "."

    invoke-direct {v3, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .local v3, tk:Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_2

    .line 203
    :cond_0
    :goto_0
    return-object v4

    .line 190
    .local v1, obj:Ljava/lang/Object;
    .local v2, s:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 191
    instance-of v5, v1, Ljava/util/HashMap;

    if-eqz v5, :cond_0

    move-object v0, v1

    .line 192
    check-cast v0, Ljava/util/HashMap;

    .line 186
    .end local v1           #obj:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 187
    .restart local v2       #s:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 188
    .restart local v1       #obj:Ljava/lang/Object;
    if-nez v1, :cond_1

    goto :goto_0

    .line 197
    :cond_3
    instance-of v5, v1, Ljava/util/HashMap;

    if-nez v5, :cond_0

    move-object v4, v1

    .line 200
    check-cast v4, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 201
    check-cast v1, Lcom/itextpdf/text/pdf/PdfString;

    .end local v1           #obj:Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 203
    .restart local v1       #obj:Ljava/lang/Object;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfName;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getFields()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 171
    .local v0, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/itextpdf/text/pdf/FdfWriter;->fields:Ljava/util/HashMap;

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/itextpdf/text/pdf/FdfWriter;->iterateFields(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 172
    return-object v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/itextpdf/text/pdf/FdfWriter;->file:Ljava/lang/String;

    return-object v0
.end method

.method iterateFields(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 114
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 115
    .local v3, s:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 116
    .local v2, obj:Ljava/lang/Object;
    instance-of v4, v2, Ljava/util/HashMap;

    if-eqz v4, :cond_0

    .line 117
    check-cast v2, Ljava/util/HashMap;

    .end local v2           #obj:Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v2, v4}, Lcom/itextpdf/text/pdf/FdfWriter;->iterateFields(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    .restart local v2       #obj:Ljava/lang/Object;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 121
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #obj:Ljava/lang/Object;
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public removeField(Ljava/lang/String;)Z
    .locals 8
    .parameter "field"

    .prologue
    const/4 v6, 0x0

    .line 130
    iget-object v2, p0, Lcom/itextpdf/text/pdf/FdfWriter;->fields:Ljava/util/HashMap;

    .line 131
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v7, "."

    invoke-direct {v5, p1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .local v5, tk:Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-nez v7, :cond_1

    .line 162
    :cond_0
    :goto_0
    return v6

    .line 134
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v0, hist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :goto_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, s:Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 138
    .local v3, obj:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 140
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 143
    instance-of v7, v3, Ljava/util/HashMap;

    if-eqz v7, :cond_0

    move-object v2, v3

    .line 144
    check-cast v2, Ljava/util/HashMap;

    goto :goto_1

    .line 149
    :cond_2
    instance-of v7, v3, Ljava/util/HashMap;

    if-nez v7, :cond_0

    .line 155
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x2

    .local v1, k:I
    :goto_2
    if-ltz v1, :cond_3

    .line 156
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    check-cast v2, Ljava/util/HashMap;

    .line 157
    .restart local v2       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #s:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 158
    .restart local v4       #s:Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 162
    :cond_3
    const/4 v6, 0x1

    goto :goto_0

    .line 155
    :cond_4
    add-int/lit8 v1, v1, -0x2

    goto :goto_2
.end method

.method setField(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;)Z
    .locals 6
    .parameter "field"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 81
    iget-object v0, p0, Lcom/itextpdf/text/pdf/FdfWriter;->fields:Ljava/util/HashMap;

    .line 82
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, "."

    invoke-direct {v3, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .local v3, tk:Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v4

    .line 86
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 88
    .local v1, obj:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 89
    if-nez v1, :cond_2

    .line 90
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #obj:Ljava/lang/Object;
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 91
    .local v1, obj:Ljava/util/HashMap;
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 92
    check-cast v0, Ljava/util/HashMap;

    .line 93
    goto :goto_1

    .line 95
    .local v1, obj:Ljava/lang/Object;
    :cond_2
    instance-of v5, v1, Ljava/util/HashMap;

    if-eqz v5, :cond_0

    move-object v0, v1

    .line 96
    check-cast v0, Ljava/util/HashMap;

    goto :goto_1

    .line 101
    :cond_3
    instance-of v5, v1, Ljava/util/HashMap;

    if-nez v5, :cond_0

    .line 102
    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setFieldAsAction(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfAction;)Z
    .locals 1
    .parameter "field"
    .parameter "action"

    .prologue
    .line 244
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/text/pdf/FdfWriter;->setField(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;)Z

    move-result v0

    return v0
.end method

.method public setFieldAsName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "field"
    .parameter "value"

    .prologue
    .line 217
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v0, p2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/FdfWriter;->setField(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;)Z

    move-result v0

    return v0
.end method

.method public setFieldAsString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "field"
    .parameter "value"

    .prologue
    .line 228
    new-instance v0, Lcom/itextpdf/text/pdf/PdfString;

    const-string v1, "UnicodeBig"

    invoke-direct {v0, p2, v1}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/FdfWriter;->setField(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;)Z

    move-result v0

    return v0
.end method

.method public setFields(Lcom/itextpdf/text/pdf/AcroFields;)V
    .locals 8
    .parameter "af"

    .prologue
    .line 277
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/AcroFields;->getFields()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 278
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 279
    .local v2, fn:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 280
    .local v5, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 281
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    invoke-static {v7}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    .line 282
    .local v6, v:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v6, :cond_0

    .line 284
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->FT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    invoke-static {v7}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .line 285
    .local v3, ft:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v3, :cond_0

    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->SIG:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v3}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 287
    invoke-virtual {p0, v2, v6}, Lcom/itextpdf/text/pdf/FdfWriter;->setField(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_0

    .line 289
    .end local v0           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;>;"
    .end local v2           #fn:Ljava/lang/String;
    .end local v3           #ft:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v5           #item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    .end local v6           #v:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_1
    return-void
.end method

.method public setFields(Lcom/itextpdf/text/pdf/FdfReader;)V
    .locals 7
    .parameter "fdf"

    .prologue
    .line 251
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/FdfReader;->getFields()Ljava/util/HashMap;

    move-result-object v4

    .line 252
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfDictionary;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 253
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfDictionary;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 254
    .local v3, key:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 255
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    .line 256
    .local v5, v:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v5, :cond_1

    .line 257
    invoke-virtual {p0, v3, v5}, Lcom/itextpdf/text/pdf/FdfWriter;->setField(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 259
    :cond_1
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    .line 260
    if-eqz v5, :cond_0

    .line 261
    invoke-virtual {p0, v3, v5}, Lcom/itextpdf/text/pdf/FdfWriter;->setField(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_0

    .line 264
    .end local v0           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfDictionary;>;"
    .end local v3           #key:Ljava/lang/String;
    .end local v5           #v:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_2
    return-void
.end method

.method public setFields(Lcom/itextpdf/text/pdf/PdfReader;)V
    .locals 1
    .parameter "pdf"

    .prologue
    .line 270
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getAcroFields()Lcom/itextpdf/text/pdf/AcroFields;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/FdfWriter;->setFields(Lcom/itextpdf/text/pdf/AcroFields;)V

    .line 271
    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 0
    .parameter "file"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/itextpdf/text/pdf/FdfWriter;->file:Ljava/lang/String;

    .line 304
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/itextpdf/text/pdf/FdfWriter$Wrt;

    invoke-direct {v0, p1, p0}, Lcom/itextpdf/text/pdf/FdfWriter$Wrt;-><init>(Ljava/io/OutputStream;Lcom/itextpdf/text/pdf/FdfWriter;)V

    .line 76
    .local v0, wrt:Lcom/itextpdf/text/pdf/FdfWriter$Wrt;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/FdfWriter$Wrt;->writeTo()V

    .line 77
    return-void
.end method
