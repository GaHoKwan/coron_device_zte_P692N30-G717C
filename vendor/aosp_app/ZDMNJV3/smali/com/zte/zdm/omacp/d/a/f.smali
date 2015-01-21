.class Lcom/zte/zdm/omacp/d/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/g/f/e;


# instance fields
.field a:Lcom/zte/zdm/omacp/d/a/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zte/zdm/omacp/d/a/h;

    invoke-direct {v0}, Lcom/zte/zdm/omacp/d/a/h;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/omacp/d/a/f;->a:Lcom/zte/zdm/omacp/d/a/h;

    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/io/FileInputStream;

    const-string v1, "resource/omacp/simple1.xml"

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/zte/zdm/g/f/d;

    invoke-direct {v1}, Lcom/zte/zdm/g/f/d;-><init>()V

    new-instance v2, Lcom/zte/zdm/omacp/d/a/f;

    invoke-direct {v2}, Lcom/zte/zdm/omacp/d/a/f;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/zte/zdm/g/f/d;->a(Ljava/io/InputStream;Ljava/lang/String;Lcom/zte/zdm/g/f/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/omacp/d/a/h;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/zte/zdm/g/f/e;
    .locals 4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "characteristic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zte/zdm/omacp/d/a/a;

    invoke-direct {v1, v0}, Lcom/zte/zdm/omacp/d/a/a;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
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

.method public a()Lcom/zte/zdm/omacp/d/a/h;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/omacp/d/a/f;->a:Lcom/zte/zdm/omacp/d/a/h;

    return-object v0
.end method

.method public a(Lcom/zte/zdm/g/f/e;)V
    .locals 2

    iget-object v1, p0, Lcom/zte/zdm/omacp/d/a/f;->a:Lcom/zte/zdm/omacp/d/a/h;

    invoke-interface {p1}, Lcom/zte/zdm/g/f/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/omacp/d/a;

    invoke-virtual {v1, v0}, Lcom/zte/zdm/omacp/d/a/h;->a(Lcom/zte/zdm/omacp/d/a;)V

    return-void
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/omacp/d/a/f;->a()Lcom/zte/zdm/omacp/d/a/h;

    move-result-object v0

    return-object v0
.end method

.method public b(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wap-provisioningdoc"

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
