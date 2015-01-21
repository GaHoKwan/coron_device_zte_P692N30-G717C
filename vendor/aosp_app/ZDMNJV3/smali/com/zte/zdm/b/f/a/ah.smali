.class public Lcom/zte/zdm/b/f/a/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/b/f/a/c;


# static fields
.field private static e:Lcom/zte/zdm/g/f/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zte/zdm/g/f/d;

    invoke-direct {v0}, Lcom/zte/zdm/g/f/d;-><init>()V

    sput-object v0, Lcom/zte/zdm/b/f/a/ah;->e:Lcom/zte/zdm/g/f/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/zte/zdm/b/f/b;
    .locals 2

    new-instance v0, Lorg/kxml2/io/KXmlParser;

    invoke-direct {v0}, Lorg/kxml2/io/KXmlParser;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/kxml2/io/KXmlParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/zte/zdm/b/f/a/ah;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/zte/zdm/b/f/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/zte/zdm/b/f/b;
    .locals 2

    new-instance v0, Lcom/zte/zdm/b/f/a/ad;

    invoke-direct {v0}, Lcom/zte/zdm/b/f/a/ad;-><init>()V

    sget-object v1, Lcom/zte/zdm/b/f/a/ah;->e:Lcom/zte/zdm/g/f/d;

    invoke-virtual {v1, p0, v0}, Lcom/zte/zdm/g/f/d;->b(Lorg/xmlpull/v1/XmlPullParser;Lcom/zte/zdm/g/f/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/b;

    return-object v0
.end method

.method public static a([B)Lcom/zte/zdm/b/f/b;
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/zte/zdm/b/f/a/ah;->a(Ljava/io/InputStream;)Lcom/zte/zdm/b/f/b;

    move-result-object v0

    return-object v0
.end method

.method public static a([Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/io/FileInputStream;

    const-string v1, "resource/tree4.xml"

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/kxml2/io/KXmlParser;

    invoke-direct {v1}, Lorg/kxml2/io/KXmlParser;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/kxml2/io/KXmlParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/zte/zdm/b/f/a/ah;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/zte/zdm/b/f/b;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/b;->f()Lcom/zte/zdm/b/f/d;

    move-result-object v1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(I)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/io/InputStream;)Lcom/zte/zdm/b/f/b;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/zte/zdm/b/f/a/ah;->a(Ljava/io/InputStream;)Lcom/zte/zdm/b/f/b;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
