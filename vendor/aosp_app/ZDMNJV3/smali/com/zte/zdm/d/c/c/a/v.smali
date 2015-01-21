.class public Lcom/zte/zdm/d/c/c/a/v;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/zte/zdm/g/f/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zte/zdm/g/f/d;

    invoke-direct {v0}, Lcom/zte/zdm/g/f/d;-><init>()V

    sput-object v0, Lcom/zte/zdm/d/c/c/a/v;->a:Lcom/zte/zdm/g/f/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/zte/zdm/d/c/c/a;
    .locals 2

    new-instance v0, Lorg/kxml2/io/KXmlParser;

    invoke-direct {v0}, Lorg/kxml2/io/KXmlParser;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/kxml2/io/KXmlParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/zte/zdm/d/c/c/a/v;->a(Lorg/kxml2/io/KXmlParser;)Lcom/zte/zdm/d/c/c/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/kxml2/io/KXmlParser;)Lcom/zte/zdm/d/c/c/a;
    .locals 1

    invoke-static {p0}, Lcom/zte/zdm/d/c/c/a/v;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/zte/zdm/d/c/c/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/kxml2/wap/WbxmlParser;)Lcom/zte/zdm/d/c/c/a;
    .locals 1

    invoke-static {p0}, Lcom/zte/zdm/d/c/c/a/v;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/zte/zdm/d/c/c/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/zte/zdm/d/c/c/a;
    .locals 2

    new-instance v0, Lcom/zte/zdm/d/c/c/a/a;

    invoke-direct {v0}, Lcom/zte/zdm/d/c/c/a/a;-><init>()V

    sget-object v1, Lcom/zte/zdm/d/c/c/a/v;->a:Lcom/zte/zdm/g/f/d;

    invoke-virtual {v1, p0, v0}, Lcom/zte/zdm/g/f/d;->b(Lorg/xmlpull/v1/XmlPullParser;Lcom/zte/zdm/g/f/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/c/a;

    return-object v0
.end method

.method public static a([B)Lcom/zte/zdm/d/c/c/a;
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/zte/zdm/d/c/c/a/v;->a(Ljava/io/InputStream;)Lcom/zte/zdm/d/c/c/a;

    move-result-object v0

    return-object v0
.end method

.method public static a([Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x2

    new-instance v1, Ljava/io/FileInputStream;

    const-string v2, "resource/mgmttree_wbxml.wbxml"

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/kxml2/wap/syncml/SyncML;->createParser()Lorg/kxml2/wap/WbxmlParser;

    move-result-object v2

    sget-object v3, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_2_DM:[Ljava/lang/String;

    invoke-virtual {v2, v5, v3}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    invoke-virtual {v2, v1, v0}, Lorg/kxml2/wap/WbxmlParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2}, Lorg/kxml2/wap/WbxmlParser;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Lorg/kxml2/wap/WbxmlParser;->getEventType()I

    move-result v3

    if-ne v3, v5, :cond_0

    invoke-virtual {v2}, Lorg/kxml2/wap/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/zte/zdm/d/c/c/a/v;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/zte/zdm/d/c/c/a;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Lorg/kxml2/wap/WbxmlParser;->next()I

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/zte/zdm/d/c/c/a;->d()Lcom/zte/zdm/d/c/bo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/d/c/bo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/c/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/c/b;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/c/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-void
.end method

.method public static b(Ljava/io/InputStream;)Lcom/zte/zdm/d/c/c/a;
    .locals 2

    invoke-static {}, Lorg/kxml2/wap/syncml/SyncML;->createDMParser()Lorg/kxml2/wap/WbxmlParser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/kxml2/wap/WbxmlParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/zte/zdm/d/c/c/a/v;->a(Lorg/kxml2/wap/WbxmlParser;)Lcom/zte/zdm/d/c/c/a;

    move-result-object v0

    return-object v0
.end method

.method public static b([B)Lcom/zte/zdm/d/c/c/a;
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/zte/zdm/d/c/c/a/v;->b(Ljava/io/InputStream;)Lcom/zte/zdm/d/c/c/a;

    move-result-object v0

    return-object v0
.end method
