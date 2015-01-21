.class public Lcom/zte/zdm/g/f/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Lorg/xmlpull/v1/XmlPullParser;Lcom/zte/zdm/g/f/e;)V
    .locals 2

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_1
    return-void

    :pswitch_0
    invoke-interface {p2, p1}, Lcom/zte/zdm/g/f/e;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/zte/zdm/g/f/e;

    move-result-object v0

    if-eq p2, v0, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/zte/zdm/g/f/d;->c(Lorg/xmlpull/v1/XmlPullParser;Lcom/zte/zdm/g/f/e;)V

    invoke-interface {p2, v0}, Lcom/zte/zdm/g/f/e;->a(Lcom/zte/zdm/g/f/e;)V

    goto :goto_0

    :pswitch_1
    invoke-interface {p2, p1}, Lcom/zte/zdm/g/f/e;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/io/InputStream;Ljava/lang/String;Lcom/zte/zdm/g/f/e;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/kxml2/io/KXmlParser;

    invoke-direct {v0}, Lorg/kxml2/io/KXmlParser;-><init>()V

    invoke-virtual {v0, p1, p2}, Lorg/kxml2/io/KXmlParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/kxml2/io/KXmlParser;->next()I

    invoke-direct {p0, v0, p3}, Lcom/zte/zdm/g/f/d;->c(Lorg/xmlpull/v1/XmlPullParser;Lcom/zte/zdm/g/f/e;)V

    invoke-interface {p3}, Lcom/zte/zdm/g/f/e;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/InputStream;Ljava/lang/String;Lcom/zte/zdm/g/f/e;Lorg/kxml2/wap/WbxmlParser;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p4, p1, p2}, Lorg/kxml2/wap/WbxmlParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p4}, Lorg/kxml2/wap/WbxmlParser;->next()I

    invoke-direct {p0, p4, p3}, Lcom/zte/zdm/g/f/d;->c(Lorg/xmlpull/v1/XmlPullParser;Lcom/zte/zdm/g/f/e;)V

    invoke-interface {p3}, Lcom/zte/zdm/g/f/e;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/InputStream;Ljava/lang/String;Lcom/zte/zdm/g/f/e;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p4, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {p4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-direct {p0, p4, p3}, Lcom/zte/zdm/g/f/d;->c(Lorg/xmlpull/v1/XmlPullParser;Lcom/zte/zdm/g/f/e;)V

    invoke-interface {p3}, Lcom/zte/zdm/g/f/e;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/kxml2/wap/WbxmlParser;Lcom/zte/zdm/g/f/e;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Lorg/kxml2/wap/WbxmlParser;->next()I

    invoke-direct {p0, p1, p2}, Lcom/zte/zdm/g/f/d;->c(Lorg/xmlpull/v1/XmlPullParser;Lcom/zte/zdm/g/f/e;)V

    invoke-interface {p2}, Lcom/zte/zdm/g/f/e;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/xmlpull/v1/XmlPullParser;Lcom/zte/zdm/g/f/e;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-direct {p0, p1, p2}, Lcom/zte/zdm/g/f/d;->c(Lorg/xmlpull/v1/XmlPullParser;Lcom/zte/zdm/g/f/e;)V

    invoke-interface {p2}, Lcom/zte/zdm/g/f/e;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a([BLjava/lang/String;Lcom/zte/zdm/g/f/e;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/zte/zdm/g/f/d;->a(Ljava/io/InputStream;Ljava/lang/String;Lcom/zte/zdm/g/f/e;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    return-object v1
.end method

.method public a([BLjava/lang/String;Lcom/zte/zdm/g/f/e;Lorg/kxml2/wap/WbxmlParser;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/zte/zdm/g/f/d;->a(Ljava/io/InputStream;Ljava/lang/String;Lcom/zte/zdm/g/f/e;Lorg/kxml2/wap/WbxmlParser;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    return-object v1
.end method

.method public a([BLjava/lang/String;Lcom/zte/zdm/g/f/e;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/zte/zdm/g/f/d;->a(Ljava/io/InputStream;Ljava/lang/String;Lcom/zte/zdm/g/f/e;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    return-object v1
.end method

.method public b(Lorg/xmlpull/v1/XmlPullParser;Lcom/zte/zdm/g/f/e;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-direct {p0, p1, p2}, Lcom/zte/zdm/g/f/d;->c(Lorg/xmlpull/v1/XmlPullParser;Lcom/zte/zdm/g/f/e;)V

    invoke-interface {p2}, Lcom/zte/zdm/g/f/e;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
