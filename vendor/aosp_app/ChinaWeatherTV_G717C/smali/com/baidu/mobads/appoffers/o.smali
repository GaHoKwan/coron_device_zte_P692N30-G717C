.class Lcom/baidu/mobads/appoffers/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/baidu/mobads/appoffers/JsInterface;


# direct methods
.method constructor <init>(Lcom/baidu/mobads/appoffers/JsInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/appoffers/o;->f:Lcom/baidu/mobads/appoffers/JsInterface;

    iput-object p2, p0, Lcom/baidu/mobads/appoffers/o;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mobads/appoffers/o;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/mobads/appoffers/o;->c:Ljava/lang/String;

    iput p5, p0, Lcom/baidu/mobads/appoffers/o;->d:I

    iput-object p6, p0, Lcom/baidu/mobads/appoffers/o;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v0, Lcom/baidu/mobads/appoffers/e;

    iget-object v1, p0, Lcom/baidu/mobads/appoffers/o;->f:Lcom/baidu/mobads/appoffers/JsInterface;

    invoke-static {v1}, Lcom/baidu/mobads/appoffers/JsInterface;->a(Lcom/baidu/mobads/appoffers/JsInterface;)Lcom/baidu/mobads/appoffers/OffersActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobads/appoffers/o;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/mobads/appoffers/o;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/mobads/appoffers/o;->c:Ljava/lang/String;

    iget v5, p0, Lcom/baidu/mobads/appoffers/o;->d:I

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobads/appoffers/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/baidu/mobads/appoffers/e;->b()I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "JsInterface"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "duplicate download"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/o;->f:Lcom/baidu/mobads/appoffers/JsInterface;

    iget-object v1, p0, Lcom/baidu/mobads/appoffers/o;->e:Ljava/lang/String;

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/baidu/mobads/appoffers/o;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mobads/appoffers/a/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/baidu/mobads/appoffers/JsInterface;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/o;->f:Lcom/baidu/mobads/appoffers/JsInterface;

    iget-object v1, p0, Lcom/baidu/mobads/appoffers/o;->e:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/mobads/appoffers/JsInterface;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobads/appoffers/o;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
