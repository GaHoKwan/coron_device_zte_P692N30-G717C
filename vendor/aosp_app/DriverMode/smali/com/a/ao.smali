.class final Lcom/a/ao;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field public a:Ljava/lang/String;

.field final synthetic b:Lcom/a/am;

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/a/am;)V
    .locals 1

    iput-object p1, p0, Lcom/a/ao;->b:Lcom/a/am;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/a/ao;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/ao;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/am;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/a/ao;-><init>(Lcom/a/am;)V

    return-void
.end method


# virtual methods
.method public final characters([CII)V
    .locals 1

    iget-boolean v0, p0, Lcom/a/ao;->c:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/ao;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "sres"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/ao;->c:Z

    :cond_0
    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    const-string v0, "sres"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/ao;->c:Z

    :cond_0
    return-void
.end method
