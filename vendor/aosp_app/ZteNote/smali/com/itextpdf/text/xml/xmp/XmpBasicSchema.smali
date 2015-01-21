.class public Lcom/itextpdf/text/xml/xmp/XmpBasicSchema;
.super Lcom/itextpdf/text/xml/xmp/XmpSchema;
.source "XmpBasicSchema.java"


# static fields
.field public static final ADVISORY:Ljava/lang/String; = "xmp:Advisory"

.field public static final BASEURL:Ljava/lang/String; = "xmp:BaseURL"

.field public static final CREATEDATE:Ljava/lang/String; = "xmp:CreateDate"

.field public static final CREATORTOOL:Ljava/lang/String; = "xmp:CreatorTool"

.field public static final DEFAULT_XPATH_ID:Ljava/lang/String; = "xmp"

.field public static final DEFAULT_XPATH_URI:Ljava/lang/String; = "http://ns.adobe.com/xap/1.0/"

.field public static final IDENTIFIER:Ljava/lang/String; = "xmp:Identifier"

.field public static final METADATADATE:Ljava/lang/String; = "xmp:MetadataDate"

.field public static final MODIFYDATE:Ljava/lang/String; = "xmp:ModifyDate"

.field public static final NICKNAME:Ljava/lang/String; = "xmp:Nickname"

.field public static final THUMBNAILS:Ljava/lang/String; = "xmp:Thumbnails"

.field private static final serialVersionUID:J = -0x218989937daa19c2L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    const-string v0, "xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\""

    invoke-direct {p0, v0}, Lcom/itextpdf/text/xml/xmp/XmpSchema;-><init>(Ljava/lang/String;)V

    .line 80
    return-void
.end method


# virtual methods
.method public addCreateDate(Ljava/lang/String;)V
    .locals 1
    .parameter "date"

    .prologue
    .line 95
    const-string v0, "xmp:CreateDate"

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/xml/xmp/XmpBasicSchema;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public addCreatorTool(Ljava/lang/String;)V
    .locals 1
    .parameter "creator"

    .prologue
    .line 87
    const-string v0, "xmp:CreatorTool"

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/xml/xmp/XmpBasicSchema;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    return-void
.end method

.method public addIdentifiers([Ljava/lang/String;)V
    .locals 3
    .parameter "id"

    .prologue
    .line 118
    new-instance v0, Lcom/itextpdf/text/xml/xmp/XmpArray;

    const-string v2, "rdf:Bag"

    invoke-direct {v0, v2}, Lcom/itextpdf/text/xml/xmp/XmpArray;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, array:Lcom/itextpdf/text/xml/xmp/XmpArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 120
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/xml/xmp/XmpArray;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :cond_0
    const-string v2, "xmp:Identifier"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/text/xml/xmp/XmpBasicSchema;->setProperty(Ljava/lang/String;Lcom/itextpdf/text/xml/xmp/XmpArray;)Ljava/lang/Object;

    .line 123
    return-void
.end method

.method public addMetaDataDate(Ljava/lang/String;)V
    .locals 1
    .parameter "date"

    .prologue
    .line 111
    const-string v0, "xmp:MetadataDate"

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/xml/xmp/XmpBasicSchema;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public addModDate(Ljava/lang/String;)V
    .locals 1
    .parameter "date"

    .prologue
    .line 103
    const-string v0, "xmp:ModifyDate"

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/xml/xmp/XmpBasicSchema;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method public addNickname(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 129
    const-string v0, "xmp:Nickname"

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/xml/xmp/XmpBasicSchema;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    return-void
.end method
