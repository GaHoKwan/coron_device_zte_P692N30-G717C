.class Lcom/zte/zdm/omacp/d/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/g/f/e;


# instance fields
.field private a:Lcom/zte/zdm/omacp/d/a/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zte/zdm/omacp/d/a/b;

    invoke-direct {v0, p1}, Lcom/zte/zdm/omacp/d/a/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/zdm/omacp/d/a/a;->a:Lcom/zte/zdm/omacp/d/a/b;

    return-void
.end method

.method private c(Lorg/xmlpull/v1/XmlPullParser;)Lcom/zte/zdm/g/f/e;
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zte/zdm/omacp/d/a/a;

    invoke-direct {v1, v0}, Lcom/zte/zdm/omacp/d/a/a;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/omacp/d/a/a;->a:Lcom/zte/zdm/omacp/d/a/b;

    invoke-virtual {v1}, Lcom/zte/zdm/omacp/d/a/a;->a()Lcom/zte/zdm/omacp/d/a/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zte/zdm/omacp/d/a/b;->a(Lcom/zte/zdm/omacp/d/a;)V

    return-object v1
.end method

.method private d(Lorg/xmlpull/v1/XmlPullParser;)Lcom/zte/zdm/g/f/e;
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    if-le v2, v3, :cond_0

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Lcom/zte/zdm/omacp/d/a/a;->a:Lcom/zte/zdm/omacp/d/a/b;

    invoke-virtual {v2, v1, v0}, Lcom/zte/zdm/omacp/d/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/zte/zdm/g/f/e;
    .locals 4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/zte/zdm/omacp/d/a/a;->d(Lorg/xmlpull/v1/XmlPullParser;)Lcom/zte/zdm/g/f/e;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "characteristic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/zte/zdm/omacp/d/a/a;->c(Lorg/xmlpull/v1/XmlPullParser;)Lcom/zte/zdm/g/f/e;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error input os,not suport this tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a()Lcom/zte/zdm/omacp/d/a/b;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/omacp/d/a/a;->a:Lcom/zte/zdm/omacp/d/a/b;

    return-object v0
.end method

.method public a(Lcom/zte/zdm/g/f/e;)V
    .locals 0

    return-void
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/omacp/d/a/a;->a()Lcom/zte/zdm/omacp/d/a/b;

    move-result-object v0

    return-object v0
.end method

.method public b(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "characteristic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
