.class Lcom/zte/zdm/b/f/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/g/f/e;


# static fields
.field public static final a:Ljava/lang/String; = "node"

.field public static final b:Ljava/lang/String; = "leaf"


# instance fields
.field public c:Ljava/lang/String;

.field d:Lcom/zte/zdm/b/f/a/e;

.field e:Lcom/zte/zdm/b/f/d;


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zte/zdm/b/f/a/e;

    invoke-direct {v0, p1}, Lcom/zte/zdm/b/f/a/e;-><init>(I)V

    iput-object v0, p0, Lcom/zte/zdm/b/f/a/d;->d:Lcom/zte/zdm/b/f/a/e;

    if-nez p1, :cond_0

    const-string v0, "node"

    iput-object v0, p0, Lcom/zte/zdm/b/f/a/d;->c:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "leaf"

    iput-object v0, p0, Lcom/zte/zdm/b/f/a/d;->c:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/zte/zdm/b/f/d;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/zte/zdm/b/f/a/d;->d:Lcom/zte/zdm/b/f/a/e;

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/a/e;->d()Lcom/zte/zdm/b/f/d;
    :try_end_0
    .catch Lcom/zte/zdm/b/f/d/g; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d/g;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/zte/zdm/g/f/e;
    .locals 2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "node"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Lcom/zte/zdm/b/f/a/d;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/f/a/d;-><init>(I)V

    :goto_0
    return-object p0

    :cond_0
    const-string v1, "leaf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    new-instance p0, Lcom/zte/zdm/b/f/a/d;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/f/a/d;-><init>(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/b/f/a/q;->valueOf(Ljava/lang/String;)Lcom/zte/zdm/b/f/a/q;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/b/f/a/d;->d:Lcom/zte/zdm/b/f/a/e;

    invoke-virtual {v0, v1, p1}, Lcom/zte/zdm/b/f/a/q;->a(Lcom/zte/zdm/b/f/a/e;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0
.end method

.method public a(Lcom/zte/zdm/g/f/e;)V
    .locals 2

    check-cast p1, Lcom/zte/zdm/b/f/a/d;

    iget-object v0, p0, Lcom/zte/zdm/b/f/a/d;->d:Lcom/zte/zdm/b/f/a/e;

    iget-object v1, p1, Lcom/zte/zdm/b/f/a/d;->d:Lcom/zte/zdm/b/f/a/e;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/f/a/e;->a(Lcom/zte/zdm/b/f/a/e;)V

    return-void
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/a/d;->a()Lcom/zte/zdm/b/f/d;

    move-result-object v0

    return-object v0
.end method

.method public b(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/b/f/a/d;->c:Ljava/lang/String;

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
