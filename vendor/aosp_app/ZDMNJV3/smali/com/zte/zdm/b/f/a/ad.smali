.class public Lcom/zte/zdm/b/f/a/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/g/f/e;


# instance fields
.field a:Lcom/zte/zdm/b/f/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zte/zdm/b/f/b;

    invoke-direct {v0}, Lcom/zte/zdm/b/f/b;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/f/a/ad;->a:Lcom/zte/zdm/b/f/b;

    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/zte/zdm/b/f/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zte/zdm/b/f/a/d;-><init>(I)V

    new-instance v1, Lcom/zte/zdm/g/f/d;

    invoke-direct {v1}, Lcom/zte/zdm/g/f/d;-><init>()V

    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "resource/node3.xml"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/zte/zdm/g/f/d;->a(Ljava/io/InputStream;Ljava/lang/String;Lcom/zte/zdm/g/f/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return-void
.end method


# virtual methods
.method public a()Lcom/zte/zdm/b/f/b;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/f/a/ad;->a:Lcom/zte/zdm/b/f/b;

    return-object v0
.end method

.method public a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/zte/zdm/g/f/e;
    .locals 2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "node"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    new-instance p0, Lcom/zte/zdm/b/f/a/d;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/f/a/d;-><init>(I)V

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v1, "Version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    iget-object v0, p0, Lcom/zte/zdm/b/f/a/ad;->a:Lcom/zte/zdm/b/f/b;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/f/b;->h(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/zte/zdm/g/f/e;)V
    .locals 2

    :try_start_0
    check-cast p1, Lcom/zte/zdm/b/f/a/d;

    iget-object v0, p1, Lcom/zte/zdm/b/f/a/d;->d:Lcom/zte/zdm/b/f/a/e;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/a/e;->c()Lcom/zte/zdm/b/f/d;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/b/f/a/ad;->a:Lcom/zte/zdm/b/f/b;

    invoke-virtual {v1, v0}, Lcom/zte/zdm/b/f/b;->a(Lcom/zte/zdm/b/f/d;)V
    :try_end_0
    .catch Lcom/zte/zdm/b/f/d/g; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/g;->printStackTrace()V

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/a/ad;->a()Lcom/zte/zdm/b/f/b;

    move-result-object v0

    return-object v0
.end method

.method public b(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tree"

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
