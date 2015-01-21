.class public Lnq;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/StringBuffer;

.field private a:Ljava/util/List;

.field private a:Z

.field private b:Ljava/lang/String;

.field public b:Ljava/lang/StringBuffer;

.field private b:Z

.field public c:Ljava/lang/StringBuffer;

.field public d:Ljava/lang/StringBuffer;

.field public e:Ljava/lang/StringBuffer;

.field public f:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "ExpressionInfoXMLHandler"

    sput-object v0, Lnq;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lnq;->b:Ljava/lang/String;

    .line 27
    iput-boolean v1, p0, Lnq;->a:Z

    .line 28
    iput-boolean v1, p0, Lnq;->b:Z

    .line 32
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lnq;->a:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lnq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Ljava/util/List;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lnq;->a:Ljava/util/List;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lnq;->b:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lnq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public characters([CII)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 37
    iget-boolean v0, p0, Lnq;->a:Z

    if-eqz v0, :cond_5

    .line 38
    iget-object v0, p0, Lnq;->b:Ljava/lang/String;

    const-string v1, "pkg_name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p2

    .line 39
    :goto_0
    if-ge v0, p3, :cond_0

    .line 40
    iget-object v1, p0, Lnq;->a:Ljava/lang/StringBuffer;

    aget-char v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lnq;->b:Ljava/lang/String;

    const-string v1, "icon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, p2

    .line 44
    :goto_1
    if-ge v0, p3, :cond_1

    .line 45
    iget-object v1, p0, Lnq;->b:Ljava/lang/StringBuffer;

    aget-char v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 48
    :cond_1
    iget-boolean v0, p0, Lnq;->b:Z

    if-eqz v0, :cond_5

    .line 49
    iget-object v0, p0, Lnq;->b:Ljava/lang/String;

    const-string v1, "file_name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, p2

    .line 50
    :goto_2
    if-ge v0, p3, :cond_2

    .line 51
    iget-object v1, p0, Lnq;->c:Ljava/lang/StringBuffer;

    aget-char v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 54
    :cond_2
    iget-object v0, p0, Lnq;->b:Ljava/lang/String;

    const-string v1, "desc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, p2

    .line 55
    :goto_3
    if-ge v0, p3, :cond_3

    .line 56
    iget-object v1, p0, Lnq;->d:Ljava/lang/StringBuffer;

    aget-char v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 59
    :cond_3
    iget-object v0, p0, Lnq;->b:Ljava/lang/String;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, p2

    .line 60
    :goto_4
    if-ge v0, p3, :cond_4

    .line 61
    iget-object v1, p0, Lnq;->e:Ljava/lang/StringBuffer;

    aget-char v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 64
    :cond_4
    iget-object v0, p0, Lnq;->b:Ljava/lang/String;

    const-string v1, "exp_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 65
    :goto_5
    if-ge p2, p3, :cond_5

    .line 66
    iget-object v0, p0, Lnq;->f:Ljava/lang/StringBuffer;

    aget-char v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 65
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 71
    :cond_5
    return-void
.end method

.method public endDocument()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    .line 131
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 75
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iput-boolean v3, p0, Lnq;->a:Z

    .line 77
    const-string v0, "exp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Lnh;

    invoke-direct {v0}, Lnh;-><init>()V

    .line 79
    iget-object v1, p0, Lnq;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnh;->b:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lnq;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnh;->c:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lnq;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnh;->d:Ljava/lang/String;

    .line 83
    :try_start_0
    iget-object v1, p0, Lnq;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lnh;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    iget-object v1, p0, Lnq;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iput-object v2, p0, Lnq;->c:Ljava/lang/StringBuffer;

    .line 89
    iput-object v2, p0, Lnq;->d:Ljava/lang/StringBuffer;

    .line 90
    iput-object v2, p0, Lnq;->e:Ljava/lang/StringBuffer;

    .line 91
    iput-object v2, p0, Lnq;->f:Ljava/lang/StringBuffer;

    .line 92
    iput-boolean v3, p0, Lnq;->b:Z

    .line 94
    :cond_0
    const-string v0, "root"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lnq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnh;

    .line 96
    iget-object v2, p0, Lnq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lnh;->a:Ljava/lang/String;

    goto :goto_1

    .line 84
    :catch_0
    move-exception v1

    .line 85
    const/4 v1, -0x1

    iput v1, v0, Lnh;->a:I

    goto :goto_0

    .line 99
    :cond_1
    return-void
.end method

.method public startDocument()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnq;->a:Ljava/util/List;

    .line 120
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lnq;->a:Ljava/lang/StringBuffer;

    .line 121
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lnq;->b:Ljava/lang/StringBuffer;

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lnq;->b:Ljava/lang/String;

    .line 123
    iput-boolean v1, p0, Lnq;->a:Z

    .line 124
    iput-boolean v1, p0, Lnq;->b:Z

    .line 125
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 104
    iput-object p2, p0, Lnq;->b:Ljava/lang/String;

    .line 105
    iput-boolean v1, p0, Lnq;->a:Z

    .line 106
    const-string v0, "exp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iput-boolean v1, p0, Lnq;->b:Z

    .line 108
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lnq;->c:Ljava/lang/StringBuffer;

    .line 109
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lnq;->d:Ljava/lang/StringBuffer;

    .line 110
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lnq;->e:Ljava/lang/StringBuffer;

    .line 111
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lnq;->f:Ljava/lang/StringBuffer;

    .line 113
    :cond_0
    return-void
.end method
