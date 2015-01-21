.class Lcom/baidu/mobads/appoffers/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/mobads/appoffers/JsInterface;


# direct methods
.method constructor <init>(Lcom/baidu/mobads/appoffers/JsInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/appoffers/m;->c:Lcom/baidu/mobads/appoffers/JsInterface;

    iput-object p2, p0, Lcom/baidu/mobads/appoffers/m;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mobads/appoffers/m;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobads/appoffers/m;->c:Lcom/baidu/mobads/appoffers/JsInterface;

    invoke-virtual {v0}, Lcom/baidu/mobads/appoffers/JsInterface;->getContext()Lcom/baidu/mobads/appoffers/OffersActivity;

    move-result-object v0

    const-string v1, "javascript:(function(){baidu.mobads.U.natFireEvent(\'%s\', \'%s\')})()"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/baidu/mobads/appoffers/m;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/baidu/mobads/appoffers/m;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/appoffers/OffersActivity;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
