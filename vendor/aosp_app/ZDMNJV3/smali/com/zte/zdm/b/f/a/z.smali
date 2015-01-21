.class final enum Lcom/zte/zdm/b/f/a/z;
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
    .locals 1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/zte/zdm/b/f/a/e;->h:I

    return-void
.end method
