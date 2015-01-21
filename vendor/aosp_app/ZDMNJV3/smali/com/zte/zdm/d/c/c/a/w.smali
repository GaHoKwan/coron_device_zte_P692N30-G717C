.class Lcom/zte/zdm/d/c/c/a/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/g/f/e;


# instance fields
.field a:Lcom/zte/zdm/d/c/c/b;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zte/zdm/d/c/c/b;

    invoke-direct {v0}, Lcom/zte/zdm/d/c/c/b;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/c/a/w;->a:Lcom/zte/zdm/d/c/c/b;

    return-void
.end method


# virtual methods
.method public a()Lcom/zte/zdm/d/c/c/b;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/a/w;->a:Lcom/zte/zdm/d/c/c/b;

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
    const-string v1, "RTProperties"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Lcom/zte/zdm/d/c/c/a/x;

    invoke-direct {p0}, Lcom/zte/zdm/d/c/c/a/x;-><init>()V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/zte/zdm/d/c/c/a/g;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/zte/zdm/d/c/c/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/d/c/c/a/w;->a:Lcom/zte/zdm/d/c/c/b;

    invoke-virtual {v0, v1, p1}, Lcom/zte/zdm/d/c/c/a/g;->a(Lcom/zte/zdm/d/c/c/b;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0
.end method

.method public a(Lcom/zte/zdm/g/f/e;)V
    .locals 2

    const-class v0, Lcom/zte/zdm/d/c/c/a/x;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zte/zdm/d/c/c/a/x;

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/a/w;->a:Lcom/zte/zdm/d/c/c/b;

    iget-object v1, p1, Lcom/zte/zdm/d/c/c/a/x;->a:Lcom/zte/zdm/d/c/c/c;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/c/b;->a(Lcom/zte/zdm/d/c/c/c;)V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Lcom/zte/zdm/d/c/c/a/w;

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/a/w;->a:Lcom/zte/zdm/d/c/c/b;

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/c/a/w;->a()Lcom/zte/zdm/d/c/c/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/c/b;->a(Lcom/zte/zdm/d/c/c/b;)V

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/c/a/w;->a()Lcom/zte/zdm/d/c/c/b;

    move-result-object v0

    return-object v0
.end method

.method public b(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "node"

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
