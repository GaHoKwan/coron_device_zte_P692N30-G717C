.class Lcom/zte/zdm/d/c/c/a/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/g/f/e;


# instance fields
.field a:Lcom/zte/zdm/d/c/c/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zte/zdm/d/c/c/c;

    invoke-direct {v0}, Lcom/zte/zdm/d/c/c/c;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/c/a/x;->a:Lcom/zte/zdm/d/c/c/c;

    return-void
.end method


# virtual methods
.method public a()Lcom/zte/zdm/d/c/c/c;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c/a/x;->a:Lcom/zte/zdm/d/c/c/c;

    return-object v0
.end method

.method public a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/zte/zdm/g/f/e;
    .locals 2

    invoke-static {p1}, Lcom/zte/zdm/d/c/c/a/m;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/zte/zdm/d/c/c/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/d/c/c/a/x;->a:Lcom/zte/zdm/d/c/c/c;

    invoke-virtual {v0, v1, p1}, Lcom/zte/zdm/d/c/c/a/m;->a(Lcom/zte/zdm/d/c/c/c;Lorg/xmlpull/v1/XmlPullParser;)V

    return-object p0
.end method

.method public a(Lcom/zte/zdm/g/f/e;)V
    .locals 0

    return-void
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/c/a/x;->a()Lcom/zte/zdm/d/c/c/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RTProperties"

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
