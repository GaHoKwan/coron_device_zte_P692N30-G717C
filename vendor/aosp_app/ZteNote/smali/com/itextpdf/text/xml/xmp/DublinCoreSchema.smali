.class public Lcom/itextpdf/text/xml/xmp/DublinCoreSchema;
.super Lcom/itextpdf/text/xml/xmp/XmpSchema;
.source "DublinCoreSchema.java"


# static fields
.field public static final CONTRIBUTOR:Ljava/lang/String; = "dc:contributor"

.field public static final COVERAGE:Ljava/lang/String; = "dc:coverage"

.field public static final CREATOR:Ljava/lang/String; = "dc:creator"

.field public static final DATE:Ljava/lang/String; = "dc:date"

.field public static final DEFAULT_XPATH_ID:Ljava/lang/String; = "dc"

.field public static final DEFAULT_XPATH_URI:Ljava/lang/String; = "http://purl.org/dc/elements/1.1/"

.field public static final DESCRIPTION:Ljava/lang/String; = "dc:description"

.field public static final FORMAT:Ljava/lang/String; = "dc:format"

.field public static final IDENTIFIER:Ljava/lang/String; = "dc:identifier"

.field public static final LANGUAGE:Ljava/lang/String; = "dc:language"

.field public static final PUBLISHER:Ljava/lang/String; = "dc:publisher"

.field public static final RELATION:Ljava/lang/String; = "dc:relation"

.field public static final RIGHTS:Ljava/lang/String; = "dc:rights"

.field public static final SOURCE:Ljava/lang/String; = "dc:source"

.field public static final SUBJECT:Ljava/lang/String; = "dc:subject"

.field public static final TITLE:Ljava/lang/String; = "dc:title"

.field public static final TYPE:Ljava/lang/String; = "dc:type"

.field private static final serialVersionUID:J = -0x3f2b08a5c02cac12L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 91
    const-string v0, "xmlns:dc=\"http://purl.org/dc/elements/1.1/\""

    invoke-direct {p0, v0}, Lcom/itextpdf/text/xml/xmp/XmpSchema;-><init>(Ljava/lang/String;)V

    .line 92
    const-string v0, "dc:format"

    const-string v1, "application/pdf"

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/xml/xmp/DublinCoreSchema;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    return-void
.end method


# virtual methods
.method public addAuthor(Ljava/lang/String;)V
    .locals 2
    .parameter "author"

    .prologue
    .line 143
    new-instance v0, Lcom/itextpdf/text/xml/xmp/XmpArray;

    const-string v1, "rdf:Seq"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/xml/xmp/XmpArray;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, array:Lcom/itextpdf/text/xml/xmp/XmpArray;
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/xml/xmp/XmpArray;->add(Ljava/lang/Object;)Z

    .line 145
    const-string v1, "dc:creator"

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/text/xml/xmp/DublinCoreSchema;->setProperty(Ljava/lang/String;Lcom/itextpdf/text/xml/xmp/XmpArray;)Ljava/lang/Object;

    .line 146
    return-void
.end method

.method public addAuthor([Ljava/lang/String;)V
    .locals 3
    .parameter "author"

    .prologue
    .line 153
    new-instance v0, Lcom/itextpdf/text/xml/xmp/XmpArray;

    const-string v2, "rdf:Seq"

    invoke-direct {v0, v2}, Lcom/itextpdf/text/xml/xmp/XmpArray;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, array:Lcom/itextpdf/text/xml/xmp/XmpArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 155
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/xml/xmp/XmpArray;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    :cond_0
    const-string v2, "dc:creator"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/text/xml/xmp/DublinCoreSchema;->setProperty(Ljava/lang/String;Lcom/itextpdf/text/xml/xmp/XmpArray;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method public addDescription(Ljava/lang/String;)V
    .locals 2
    .parameter "desc"

    .prologue
    .line 110
    new-instance v0, Lcom/itextpdf/text/xml/xmp/XmpArray;

    const-string v1, "rdf:Alt"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/xml/xmp/XmpArray;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, array:Lcom/itextpdf/text/xml/xmp/XmpArray;
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/xml/xmp/XmpArray;->add(Ljava/lang/Object;)Z

    .line 112
    const-string v1, "dc:description"

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/text/xml/xmp/DublinCoreSchema;->setProperty(Ljava/lang/String;Lcom/itextpdf/text/xml/xmp/XmpArray;)Ljava/lang/Object;

    .line 113
    return-void
.end method

.method public addPublisher(Ljava/lang/String;)V
    .locals 2
    .parameter "publisher"

    .prologue
    .line 165
    new-instance v0, Lcom/itextpdf/text/xml/xmp/XmpArray;

    const-string v1, "rdf:Seq"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/xml/xmp/XmpArray;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, array:Lcom/itextpdf/text/xml/xmp/XmpArray;
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/xml/xmp/XmpArray;->add(Ljava/lang/Object;)Z

    .line 167
    const-string v1, "dc:publisher"

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/text/xml/xmp/DublinCoreSchema;->setProperty(Ljava/lang/String;Lcom/itextpdf/text/xml/xmp/XmpArray;)Ljava/lang/Object;

    .line 168
    return-void
.end method

.method public addPublisher([Ljava/lang/String;)V
    .locals 3
    .parameter "publisher"

    .prologue
    .line 175
    new-instance v0, Lcom/itextpdf/text/xml/xmp/XmpArray;

    const-string v2, "rdf:Seq"

    invoke-direct {v0, v2}, Lcom/itextpdf/text/xml/xmp/XmpArray;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, array:Lcom/itextpdf/text/xml/xmp/XmpArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 177
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/xml/xmp/XmpArray;->add(Ljava/lang/Object;)Z

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    :cond_0
    const-string v2, "dc:publisher"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/text/xml/xmp/DublinCoreSchema;->setProperty(Ljava/lang/String;Lcom/itextpdf/text/xml/xmp/XmpArray;)Ljava/lang/Object;

    .line 180
    return-void
.end method

.method public addSubject(Ljava/lang/String;)V
    .locals 2
    .parameter "subject"

    .prologue
    .line 120
    new-instance v0, Lcom/itextpdf/text/xml/xmp/XmpArray;

    const-string v1, "rdf:Bag"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/xml/xmp/XmpArray;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, array:Lcom/itextpdf/text/xml/xmp/XmpArray;
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/xml/xmp/XmpArray;->add(Ljava/lang/Object;)Z

    .line 122
    const-string v1, "dc:subject"

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/text/xml/xmp/DublinCoreSchema;->setProperty(Ljava/lang/String;Lcom/itextpdf/text/xml/xmp/XmpArray;)Ljava/lang/Object;

    .line 123
    return-void
.end method

.method public addSubject([Ljava/lang/String;)V
    .locals 3
    .parameter "subject"

    .prologue
    .line 131
    new-instance v0, Lcom/itextpdf/text/xml/xmp/XmpArray;

    const-string v2, "rdf:Bag"

    invoke-direct {v0, v2}, Lcom/itextpdf/text/xml/xmp/XmpArray;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, array:Lcom/itextpdf/text/xml/xmp/XmpArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 133
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/xml/xmp/XmpArray;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_0
    const-string v2, "dc:subject"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/text/xml/xmp/DublinCoreSchema;->setProperty(Ljava/lang/String;Lcom/itextpdf/text/xml/xmp/XmpArray;)Ljava/lang/Object;

    .line 136
    return-void
.end method

.method public addTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 100
    new-instance v0, Lcom/itextpdf/text/xml/xmp/XmpArray;

    const-string v1, "rdf:Alt"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/xml/xmp/XmpArray;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, array:Lcom/itextpdf/text/xml/xmp/XmpArray;
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/xml/xmp/XmpArray;->add(Ljava/lang/Object;)Z

    .line 102
    const-string v1, "dc:title"

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/text/xml/xmp/DublinCoreSchema;->setProperty(Ljava/lang/String;Lcom/itextpdf/text/xml/xmp/XmpArray;)Ljava/lang/Object;

    .line 103
    return-void
.end method
