.class public Lcom/itextpdf/text/pdf/PdfLayer;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "PdfLayer.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/PdfOCG;


# instance fields
.field protected children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfLayer;",
            ">;"
        }
    .end annotation
.end field

.field private on:Z

.field private onPanel:Z

.field protected parent:Lcom/itextpdf/text/pdf/PdfLayer;

.field protected ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;

.field protected title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    const/4 v0, 0x1

    .line 73
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 66
    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfLayer;->on:Z

    .line 71
    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfLayer;->onPanel:Z

    .line 74
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfLayer;->title:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 2
    .parameter "name"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 98
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->OCG:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 66
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfLayer;->on:Z

    .line 71
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfLayer;->onPanel:Z

    .line 99
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfLayer;->setName(Ljava/lang/String;)V

    .line 100
    instance-of v0, p2, Lcom/itextpdf/text/pdf/PdfStamperImp;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p2, p0}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfLayer;->ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 104
    :goto_0
    invoke-virtual {p2, p0}, Lcom/itextpdf/text/pdf/PdfWriter;->registerLayer(Lcom/itextpdf/text/pdf/PdfOCG;)V

    .line 105
    return-void

    .line 103
    :cond_0
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfWriter;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfLayer;->ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    goto :goto_0
.end method

.method public static createTitle(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfLayer;
    .locals 4
    .parameter "title"
    .parameter "writer"

    .prologue
    .line 85
    if-nez p0, :cond_0

    .line 86
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "title.cannot.be.null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_0
    new-instance v0, Lcom/itextpdf/text/pdf/PdfLayer;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/PdfLayer;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, layer:Lcom/itextpdf/text/pdf/PdfLayer;
    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->registerLayer(Lcom/itextpdf/text/pdf/PdfOCG;)V

    .line 89
    return-object v0
.end method

.method private getUsage()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 2

    .prologue
    .line 192
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->USAGE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfLayer;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 193
    .local v0, usage:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v0           #usage:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 195
    .restart local v0       #usage:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->USAGE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/text/pdf/PdfLayer;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 197
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addChild(Lcom/itextpdf/text/pdf/PdfLayer;)V
    .locals 5
    .parameter "child"

    .prologue
    .line 116
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfLayer;->parent:Lcom/itextpdf/text/pdf/PdfLayer;

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the.layer.1.already.has.a.parent"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->NAME:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v4}, Lcom/itextpdf/text/pdf/PdfLayer;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    iput-object p0, p1, Lcom/itextpdf/text/pdf/PdfLayer;->parent:Lcom/itextpdf/text/pdf/PdfLayer;

    .line 119
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfLayer;->children:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfLayer;->children:Ljava/util/ArrayList;

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfLayer;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfLayer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfLayer;->children:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getParent()Lcom/itextpdf/text/pdf/PdfLayer;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfLayer;->parent:Lcom/itextpdf/text/pdf/PdfLayer;

    return-object v0
.end method

.method public getPdfObject()Lcom/itextpdf/text/pdf/PdfObject;
    .locals 0

    .prologue
    .line 172
    return-object p0
.end method

.method public getRef()Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfLayer;->ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    return-object v0
.end method

.method getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfLayer;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isOn()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfLayer;->on:Z

    return v0
.end method

.method public isOnPanel()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfLayer;->onPanel:Z

    return v0
.end method

.method public setCreatorInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "creator"
    .parameter "subtype"

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfLayer;->getUsage()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 211
    .local v1, usage:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 212
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->CREATOR:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfString;

    const-string v4, "UnicodeBig"

    invoke-direct {v3, p1, v4}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 213
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v3, p2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 214
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->CREATORINFO:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 215
    return-void
.end method

.method public setExport(Z)V
    .locals 4
    .parameter "export"

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfLayer;->getUsage()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 243
    .local v1, usage:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 244
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->EXPORTSTATE:Lcom/itextpdf/text/pdf/PdfName;

    if-eqz p1, :cond_0

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ON:Lcom/itextpdf/text/pdf/PdfName;

    :goto_0
    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 245
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->EXPORT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 246
    return-void

    .line 244
    :cond_0
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->OFF:Lcom/itextpdf/text/pdf/PdfName;

    goto :goto_0
.end method

.method public setLanguage(Ljava/lang/String;Z)V
    .locals 5
    .parameter "lang"
    .parameter "preferred"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfLayer;->getUsage()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 227
    .local v1, usage:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 228
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->LANG:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfString;

    const-string v4, "UnicodeBig"

    invoke-direct {v3, p1, v4}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 229
    if-eqz p2, :cond_0

    .line 230
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->PREFERRED:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->ON:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 231
    :cond_0
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->LANGUAGE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 232
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 164
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->NAME:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    const-string v2, "UnicodeBig"

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfLayer;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 165
    return-void
.end method

.method public setOn(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfLayer;->on:Z

    .line 189
    return-void
.end method

.method public setOnPanel(Z)V
    .locals 0
    .parameter "onPanel"

    .prologue
    .line 342
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfLayer;->onPanel:Z

    .line 343
    return-void
.end method

.method public setPageElement(Ljava/lang/String;)V
    .locals 4
    .parameter "pe"

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfLayer;->getUsage()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 305
    .local v1, usage:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 306
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v3, p1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 307
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->PAGEELEMENT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 308
    return-void
.end method

.method public setPrint(Ljava/lang/String;Z)V
    .locals 4
    .parameter "subtype"
    .parameter "printstate"

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfLayer;->getUsage()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 279
    .local v1, usage:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 280
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v3, p1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 281
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->PRINTSTATE:Lcom/itextpdf/text/pdf/PdfName;

    if-eqz p2, :cond_0

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ON:Lcom/itextpdf/text/pdf/PdfName;

    :goto_0
    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 282
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->PRINT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 283
    return-void

    .line 281
    :cond_0
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->OFF:Lcom/itextpdf/text/pdf/PdfName;

    goto :goto_0
.end method

.method setRef(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V
    .locals 0
    .parameter "ref"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfLayer;->ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 157
    return-void
.end method

.method public varargs setUser(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .parameter "type"
    .parameter "names"

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfLayer;->getUsage()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v6

    .line 318
    .local v6, usage:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 319
    .local v2, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v8, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v8, p1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 320
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 321
    .local v0, arr:Lcom/itextpdf/text/pdf/PdfArray;
    move-object v1, p2

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v1, v3

    .line 322
    .local v5, s:Ljava/lang/String;
    new-instance v7, Lcom/itextpdf/text/pdf/PdfString;

    const-string v8, "UnicodeBig"

    invoke-direct {v7, v5, v8}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 321
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 323
    .end local v5           #s:Ljava/lang/String;
    :cond_0
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->NAME:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v7, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 324
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->USER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v7, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 325
    return-void
.end method

.method public setView(Z)V
    .locals 4
    .parameter "view"

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfLayer;->getUsage()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 292
    .local v1, usage:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 293
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->VIEWSTATE:Lcom/itextpdf/text/pdf/PdfName;

    if-eqz p1, :cond_0

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ON:Lcom/itextpdf/text/pdf/PdfName;

    :goto_0
    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 294
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->VIEW:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 295
    return-void

    .line 293
    :cond_0
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->OFF:Lcom/itextpdf/text/pdf/PdfName;

    goto :goto_0
.end method

.method public setZoom(FF)V
    .locals 5
    .parameter "min"
    .parameter "max"

    .prologue
    const/4 v4, 0x0

    .line 258
    cmpg-float v2, p1, v4

    if-gtz v2, :cond_0

    cmpg-float v2, p2, v4

    if-gez v2, :cond_0

    .line 267
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfLayer;->getUsage()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 261
    .local v1, usage:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 262
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    cmpl-float v2, p1, v4

    if-lez v2, :cond_1

    .line 263
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->MIN_LOWER_CASE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v3, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 264
    :cond_1
    cmpl-float v2, p2, v4

    if-ltz v2, :cond_2

    .line 265
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->MAX_LOWER_CASE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v3, p2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 266
    :cond_2
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ZOOM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method
