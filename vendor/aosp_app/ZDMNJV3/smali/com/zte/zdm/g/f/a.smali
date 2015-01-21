.class public Lcom/zte/zdm/g/f/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lorg/xmlpull/v1/XmlSerializer;Lcom/zte/zdm/g/f/c;)V
    .locals 1

    invoke-interface {p2, p1}, Lcom/zte/zdm/g/f/c;->b(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-interface {p2, p1}, Lcom/zte/zdm/g/f/c;->a(Lorg/xmlpull/v1/XmlSerializer;)V

    :goto_0
    invoke-interface {p2}, Lcom/zte/zdm/g/f/c;->a()Lcom/zte/zdm/g/f/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/zte/zdm/g/f/a;->b(Lorg/xmlpull/v1/XmlSerializer;Lcom/zte/zdm/g/f/c;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1}, Lcom/zte/zdm/g/f/c;->c(Lorg/xmlpull/v1/XmlSerializer;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/io/OutputStream;Ljava/lang/String;Lcom/zte/zdm/g/f/c;)V
    .locals 1

    new-instance v0, Lorg/kxml2/io/KXmlSerializer;

    invoke-direct {v0}, Lorg/kxml2/io/KXmlSerializer;-><init>()V

    invoke-interface {v0, p2, p3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-interface {p4, p1}, Lcom/zte/zdm/g/f/c;->a(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p4}, Lcom/zte/zdm/g/f/a;->b(Lorg/xmlpull/v1/XmlSerializer;Lcom/zte/zdm/g/f/c;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    return-void
.end method

.method public a(Lorg/xmlpull/v1/XmlSerializer;Lcom/zte/zdm/g/f/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zte/zdm/g/f/a;->b(Lorg/xmlpull/v1/XmlSerializer;Lcom/zte/zdm/g/f/c;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    return-void
.end method
