.class public Lcom/zte/zdm/d/d/a;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/zte/zdm/d/d/b;->a:Lcom/zte/zdm/d/d/b;

    invoke-virtual {v0, p0}, Lcom/zte/zdm/d/d/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Lorg/xmlpull/v1/XmlSerializer;
    .locals 1

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static a(Z)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Lorg/kxml2/wap/syncml/SyncML;->createSerializer()Lorg/kxml2/wap/WbxmlSerializer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/kxml2/io/KXmlSerializer;

    invoke-direct {v0}, Lorg/kxml2/io/KXmlSerializer;-><init>()V

    goto :goto_0
.end method

.method public static b()Lorg/xmlpull/v1/XmlPullParser;
    .locals 1

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    return-object v0
.end method

.method public static b(Z)Lorg/xmlpull/v1/XmlPullParser;
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Lorg/kxml2/wap/syncml/SyncML;->createParser()Lorg/kxml2/wap/WbxmlParser;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/kxml2/io/KXmlParser;

    invoke-direct {v0}, Lorg/kxml2/io/KXmlParser;-><init>()V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/zte/zdm/d/d/b;->a:Lcom/zte/zdm/d/d/b;

    invoke-virtual {v0, p0}, Lcom/zte/zdm/d/d/b;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zte/zdm/d/d/b;->a:Lcom/zte/zdm/d/d/b;

    invoke-virtual {v0, p0}, Lcom/zte/zdm/d/d/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
