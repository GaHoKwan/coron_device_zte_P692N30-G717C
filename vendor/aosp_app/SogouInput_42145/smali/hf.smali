.class public Lhf;
.super Lrr;
.source "SourceFile"


# instance fields
.field private a:Lhh;

.field private a:Lhj;

.field private a:Ljava/util/ArrayList;

.field private b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lhj;

    iget v1, p0, Lhf;->a:I

    invoke-direct {v0, p0, v1}, Lhj;-><init>(Lhf;I)V

    iput-object v0, p0, Lhf;->a:Lhj;

    .line 32
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    return-void
.end method


# virtual methods
.method protected a(I)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, -0x1

    const/16 v1, 0x25

    .line 58
    iget-boolean v2, p0, Lhf;->a:Z

    if-nez v2, :cond_0

    .line 59
    iget-object v0, p0, Lhf;->a:Lri;

    invoke-virtual {v0}, Lri;->a()V

    .line 60
    const/16 p1, 0x12

    .line 97
    :goto_0
    return p1

    .line 62
    :cond_0
    const/16 v2, 0xc8

    if-eq p1, v2, :cond_1

    .line 63
    iget-object v0, p0, Lhf;->a:Lri;

    invoke-virtual {v0}, Lri;->a()V

    goto :goto_0

    .line 66
    :cond_1
    iget-object v2, p0, Lhf;->a:Lri;

    invoke-virtual {v2}, Lri;->a()Z

    move-result v2

    if-nez v2, :cond_2

    .line 67
    iget-object v1, p0, Lhf;->a:Lri;

    invoke-virtual {v1}, Lri;->a()V

    move p1, v0

    .line 68
    goto :goto_0

    .line 70
    :cond_2
    iget-object v2, p0, Lhf;->a:Lri;

    iget-object v3, p0, Lhf;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lri;->a(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 71
    iget-object v1, p0, Lhf;->a:Lri;

    invoke-virtual {v1}, Lri;->a()V

    move p1, v0

    .line 72
    goto :goto_0

    .line 75
    :cond_3
    iget-object v0, p0, Lhf;->a:Lri;

    invoke-virtual {v0}, Lri;->a()V

    .line 77
    :try_start_0
    iget-object v0, p0, Lhf;->a:Ljavax/xml/parsers/SAXParser;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lhf;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lhf;->a:Lhj;

    invoke-virtual {v0, v2, v3}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 78
    iget-object v0, p0, Lhf;->a:Lhj;

    invoke-virtual {v0}, Lhj;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lhf;->a:Ljava/util/HashMap;

    .line 79
    iget-object v0, p0, Lhf;->a:Lhj;

    invoke-virtual {v0}, Lhj;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lhf;->a:Ljava/util/ArrayList;

    .line 80
    iget-object v0, p0, Lhf;->a:Lhj;

    invoke-virtual {v0}, Lhj;->a()Lhh;

    move-result-object v0

    iput-object v0, p0, Lhf;->a:Lhh;

    .line 81
    iget-object v0, p0, Lhf;->a:Lhj;

    invoke-virtual {v0}, Lhj;->b()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lhf;->b:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhf;->a:Z

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/AbstractMethodError;->printStackTrace()V

    move p1, v1

    .line 85
    goto :goto_0

    .line 86
    :catch_1
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/ExceptionInInitializerError;->printStackTrace()V

    move p1, v1

    .line 88
    goto :goto_0

    .line 90
    :catch_2
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lhf;->a(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move p1, v1

    .line 93
    goto :goto_0
.end method

.method public a()Lhh;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 276
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lhf;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    :goto_0
    return-object v0

    .line 277
    :cond_0
    iget-object v1, p0, Lhf;->a:Lhj;

    invoke-virtual {v1}, Lhj;->a()V

    .line 278
    iget-object v1, p0, Lhf;->a:Ljavax/xml/parsers/SAXParser;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lhf;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lhf;->a:Lhj;

    invoke-virtual {v1, v2, v3}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 279
    iget-object v1, p0, Lhf;->a:Lhj;

    invoke-virtual {v1}, Lhj;->b()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lhf;->a:Ljava/util/HashMap;

    .line 280
    iget-object v1, p0, Lhf;->a:Lhj;

    invoke-virtual {v1}, Lhj;->a()Lhh;

    move-result-object v1

    iput-object v1, p0, Lhf;->a:Lhh;

    .line 281
    iget-object v0, p0, Lhf;->a:Lhh;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 282
    :catch_0
    move-exception v1

    .line 284
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 285
    :catch_1
    move-exception v1

    .line 287
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public a()Ljava/util/ArrayList;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 222
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lhf;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    :goto_0
    return-object v0

    .line 223
    :cond_0
    iget-object v1, p0, Lhf;->a:Lhj;

    invoke-virtual {v1}, Lhj;->a()V

    .line 224
    iget-object v1, p0, Lhf;->a:Ljavax/xml/parsers/SAXParser;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lhf;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lhf;->a:Lhj;

    invoke-virtual {v1, v2, v3}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 225
    iget-object v1, p0, Lhf;->a:Lhj;

    invoke-virtual {v1}, Lhj;->b()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lhf;->a:Ljava/util/HashMap;

    .line 226
    iget-object v1, p0, Lhf;->a:Lhj;

    invoke-virtual {v1}, Lhj;->a()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lhf;->a:Ljava/util/ArrayList;

    .line 227
    iget-object v0, p0, Lhf;->a:Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 228
    :catch_0
    move-exception v1

    .line 230
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 231
    :catch_1
    move-exception v1

    .line 233
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    iget-object v0, p0, Lhf;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lhf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 45
    :cond_0
    iput-object v1, p0, Lhf;->a:Ljava/util/ArrayList;

    .line 46
    iput-object v1, p0, Lhf;->a:Lhh;

    .line 47
    iget-object v0, p0, Lhf;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lhf;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 49
    :cond_1
    iput-object v1, p0, Lhf;->b:Ljava/util/ArrayList;

    .line 50
    iget-object v0, p0, Lhf;->a:Lhj;

    invoke-virtual {v0}, Lhj;->b()V

    .line 51
    iput-object v1, p0, Lhf;->a:Lhj;

    .line 52
    return-void
.end method

.method public b()Ljava/util/ArrayList;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 240
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lhf;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    :goto_0
    return-object v0

    .line 241
    :cond_0
    iget-object v1, p0, Lhf;->a:Lhj;

    invoke-virtual {v1}, Lhj;->a()V

    .line 242
    iget-object v1, p0, Lhf;->a:Ljavax/xml/parsers/SAXParser;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lhf;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lhf;->a:Lhj;

    invoke-virtual {v1, v2, v3}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 243
    iget-object v1, p0, Lhf;->a:Lhj;

    invoke-virtual {v1}, Lhj;->b()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lhf;->a:Ljava/util/HashMap;

    .line 244
    iget-object v1, p0, Lhf;->a:Lhj;

    invoke-virtual {v1}, Lhj;->a()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lhf;->a:Ljava/util/ArrayList;

    .line 245
    iget-object v0, p0, Lhf;->a:Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 246
    :catch_0
    move-exception v1

    .line 248
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 249
    :catch_1
    move-exception v1

    .line 251
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public c()Ljava/util/ArrayList;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 258
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lhf;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    :goto_0
    return-object v0

    .line 259
    :cond_0
    iget-object v1, p0, Lhf;->a:Lhj;

    invoke-virtual {v1}, Lhj;->a()V

    .line 260
    iget-object v1, p0, Lhf;->a:Ljavax/xml/parsers/SAXParser;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lhf;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lhf;->a:Lhj;

    invoke-virtual {v1, v2, v3}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 261
    iget-object v1, p0, Lhf;->a:Lhj;

    invoke-virtual {v1}, Lhj;->b()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lhf;->a:Ljava/util/HashMap;

    .line 262
    iget-object v1, p0, Lhf;->a:Lhj;

    invoke-virtual {v1}, Lhj;->b()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lhf;->b:Ljava/util/ArrayList;

    .line 263
    iget-object v0, p0, Lhf;->b:Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 264
    :catch_0
    move-exception v1

    .line 266
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 267
    :catch_1
    move-exception v1

    .line 269
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
