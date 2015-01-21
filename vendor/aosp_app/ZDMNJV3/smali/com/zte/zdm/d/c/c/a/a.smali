.class public Lcom/zte/zdm/d/c/c/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/g/f/e;


# instance fields
.field private a:Lcom/zte/zdm/d/c/c/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zte/zdm/d/c/c/a;

    invoke-direct {v0}, Lcom/zte/zdm/d/c/c/a;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/c/a/a;->a:Lcom/zte/zdm/d/c/c/a;

    return-void
.end method

.method private a(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    const-string v0, "man"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/a/a;->a:Lcom/zte/zdm/d/c/c/a;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/c/a;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "mod"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/a/a;->a:Lcom/zte/zdm/d/c/c/a;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/c/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "verdtd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    new-instance v0, Lcom/zte/zdm/d/c/bo;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/zdm/d/c/bo;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/d/c/c/a/a;->a:Lcom/zte/zdm/d/c/c/a;

    invoke-virtual {v1, v0}, Lcom/zte/zdm/d/c/c/a;->a(Lcom/zte/zdm/d/c/bo;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/zte/zdm/d/c/c/a;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/a/a;->a:Lcom/zte/zdm/d/c/c/a;

    return-object v0
.end method

.method public a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/zte/zdm/g/f/e;
    .locals 2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "node"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Lcom/zte/zdm/d/c/c/a/w;

    invoke-direct {p0}, Lcom/zte/zdm/d/c/c/a/w;-><init>()V

    :goto_0
    return-object p0

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/zte/zdm/d/c/c/a/a;->a(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0
.end method

.method public a(Lcom/zte/zdm/g/f/e;)V
    .locals 2

    check-cast p1, Lcom/zte/zdm/d/c/c/a/w;

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/a/a;->a:Lcom/zte/zdm/d/c/c/a;

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/c/a/w;->a()Lcom/zte/zdm/d/c/c/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/c/a;->a(Lcom/zte/zdm/d/c/c/b;)V

    return-void
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/c/a/a;->a()Lcom/zte/zdm/d/c/c/a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MgmtTree"

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
