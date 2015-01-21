.class final enum Lcom/zte/zdm/d/c/c/a/i;
.super Lcom/zte/zdm/d/c/c/a/g;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/zdm/d/c/c/a/g;-><init>(Ljava/lang/String;ILcom/zte/zdm/d/c/c/a/f;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/zte/zdm/d/c/c/b;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/c/b;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/zte/zdm/d/c/c/b;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zte/zdm/d/c/c/b;->g(Ljava/lang/String;)V

    return-void
.end method
