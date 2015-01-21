.class public Lcom/zte/zdm/omacp/d/a/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/zte/zdm/g/f/d;

.field private static b:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/zte/zdm/omacp/d/a/g;->b()V

    new-instance v0, Lcom/zte/zdm/g/f/d;

    invoke-direct {v0}, Lcom/zte/zdm/g/f/d;-><init>()V

    sput-object v0, Lcom/zte/zdm/omacp/d/a/g;->a:Lcom/zte/zdm/g/f/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/zte/zdm/omacp/d/c;
    .locals 4

    new-instance v0, Lcom/zte/zdm/omacp/d/a/f;

    invoke-direct {v0}, Lcom/zte/zdm/omacp/d/a/f;-><init>()V

    sget-object v1, Lcom/zte/zdm/omacp/d/a/g;->a:Lcom/zte/zdm/g/f/d;

    const/4 v2, 0x0

    sget-object v3, Lcom/zte/zdm/omacp/d/a/g;->b:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v1, p0, v2, v0, v3}, Lcom/zte/zdm/g/f/d;->a(Ljava/io/InputStream;Ljava/lang/String;Lcom/zte/zdm/g/f/e;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/omacp/d/c;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/zte/zdm/omacp/d/c;
    .locals 5

    new-instance v0, Lcom/zte/zdm/omacp/d/a/f;

    invoke-direct {v0}, Lcom/zte/zdm/omacp/d/a/f;-><init>()V

    sget-object v1, Lcom/zte/zdm/omacp/d/a/g;->a:Lcom/zte/zdm/g/f/d;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/zte/zdm/omacp/d/a/g;->b:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/zte/zdm/g/f/d;->a([BLjava/lang/String;Lcom/zte/zdm/g/f/e;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/omacp/d/c;

    return-object v0
.end method

.method public static a([B)Lcom/zte/zdm/omacp/d/c;
    .locals 4

    new-instance v0, Lcom/zte/zdm/omacp/d/a/f;

    invoke-direct {v0}, Lcom/zte/zdm/omacp/d/a/f;-><init>()V

    sget-object v1, Lcom/zte/zdm/omacp/d/a/g;->a:Lcom/zte/zdm/g/f/d;

    const/4 v2, 0x0

    sget-object v3, Lcom/zte/zdm/omacp/d/a/g;->b:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v1, p0, v2, v0, v3}, Lcom/zte/zdm/g/f/d;->a([BLjava/lang/String;Lcom/zte/zdm/g/f/e;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/omacp/d/c;

    return-object v0
.end method

.method public static a()V
    .locals 1

    new-instance v0, Lorg/kxml2/io/KXmlParser;

    invoke-direct {v0}, Lorg/kxml2/io/KXmlParser;-><init>()V

    sput-object v0, Lcom/zte/zdm/omacp/d/a/g;->b:Lorg/xmlpull/v1/XmlPullParser;

    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 4

    new-instance v1, Ljava/io/FileInputStream;

    const-string v0, "res/OTA_BROW_010.xml"

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/zte/zdm/omacp/d/a/g;->a(Ljava/io/InputStream;)Lcom/zte/zdm/omacp/d/c;

    move-result-object v0

    const-string v2, "APPLICATION"

    const-string v3, "w2"

    invoke-interface {v0, v2, v3}, Lcom/zte/zdm/omacp/d/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/zdm/omacp/d/a;

    move-result-object v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "TO-PROXY"

    invoke-interface {v0, v3}, Lcom/zte/zdm/omacp/d/a;->b(Ljava/lang/String;)Lcom/zte/zdm/omacp/d/b;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/zte/zdm/omacp/d/b;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-void
.end method

.method public static b()V
    .locals 1

    new-instance v0, Lcom/zte/zdm/omacp/d/a/e;

    invoke-direct {v0}, Lcom/zte/zdm/omacp/d/a/e;-><init>()V

    sput-object v0, Lcom/zte/zdm/omacp/d/a/g;->b:Lorg/xmlpull/v1/XmlPullParser;

    return-void
.end method
