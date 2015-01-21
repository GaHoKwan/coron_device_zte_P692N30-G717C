.class final enum Lcom/zte/zdm/b/f/a/x;
.super Lcom/zte/zdm/b/f/a/q;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/zdm/b/f/a/q;-><init>(Ljava/lang/String;ILcom/zte/zdm/b/f/a/r;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/zte/zdm/b/f/a/e;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zte/zdm/b/f/d/b;

    sget-object v2, Lcom/zte/zdm/b/f/a/x;->l:Lcom/zte/zdm/d/d/b;

    invoke-virtual {v2, v0}, Lcom/zte/zdm/d/d/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zte/zdm/b/f/d/b;-><init>(Ljava/lang/String;)V

    iput-object v1, p1, Lcom/zte/zdm/b/f/a/e;->f:Lcom/zte/zdm/b/f/d/b;

    return-void
.end method
