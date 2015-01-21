.class abstract Lorg/apache/harmony/xml/ExpatAttributes;
.super Ljava/lang/Object;
.source "ExpatAttributes.java"

# interfaces
.implements Lorg/xml/sax/Attributes;


# static fields
.field private static final CDATA:Ljava/lang/String; = "CDATA"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native getIndex(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native getIndexForQName(ILjava/lang/String;)I
.end method

.method private static native getLocalName(III)Ljava/lang/String;
.end method

.method private static native getQName(III)Ljava/lang/String;
.end method

.method private static native getURI(III)Ljava/lang/String;
.end method

.method private static native getValue(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native getValueByIndex(II)Ljava/lang/String;
.end method

.method private static native getValueForQName(ILjava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method protected native freeAttributes(I)V
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 3
    .parameter "qName"

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "qName == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()I

    move-result v0

    .line 96
    .local v0, pointer:I
    if-nez v0, :cond_1

    .line 97
    const/4 v1, -0x1

    .line 99
    :goto_0
    return v1

    :cond_1
    invoke-static {v0, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getIndexForQName(ILjava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "uri"
    .parameter "localName"

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 79
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "uri == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_0
    if-nez p2, :cond_1

    .line 82
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "localName == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()I

    move-result v0

    .line 85
    .local v0, pointer:I
    if-nez v0, :cond_2

    .line 86
    const/4 v1, -0x1

    .line 88
    :goto_0
    return v1

    :cond_2
    invoke-static {v0, p1, p2}, Lorg/apache/harmony/xml/ExpatAttributes;->getIndex(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public abstract getLength()I
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 56
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getParserPointer()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()I

    move-result v1

    invoke-static {v0, v1, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getLocalName(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method abstract getParserPointer()I
.end method

.method public abstract getPointer()I
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 62
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getParserPointer()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()I

    move-result v1

    invoke-static {v0, v1, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getQName(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 68
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "CDATA"

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "qName"

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "CDATA"

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "uri"
    .parameter "localName"

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uri == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    if-nez p2, :cond_1

    .line 107
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "localName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/ExpatAttributes;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    const-string v0, "CDATA"

    goto :goto_0
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 49
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getParserPointer()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()I

    move-result v1

    invoke-static {v0, v1, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getURI(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 72
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()I

    move-result v0

    invoke-static {v0, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getValueByIndex(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "qName"

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 132
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "qName == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()I

    move-result v0

    .line 135
    .local v0, pointer:I
    if-nez v0, :cond_1

    .line 136
    const/4 v1, 0x0

    .line 138
    :goto_0
    return-object v1

    :cond_1
    invoke-static {v0, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getValueForQName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "uri"
    .parameter "localName"

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 118
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "uri == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_0
    if-nez p2, :cond_1

    .line 121
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "localName == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()I

    move-result v0

    .line 124
    .local v0, pointer:I
    if-nez v0, :cond_2

    .line 125
    const/4 v1, 0x0

    .line 127
    :goto_0
    return-object v1

    :cond_2
    invoke-static {v0, p1, p2}, Lorg/apache/harmony/xml/ExpatAttributes;->getValue(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
