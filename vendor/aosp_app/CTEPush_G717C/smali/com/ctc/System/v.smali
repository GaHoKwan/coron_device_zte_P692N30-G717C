.class final Lcom/ctc/System/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ctc/c/o;


# instance fields
.field final synthetic a:Lcom/ctc/System/u;


# direct methods
.method constructor <init>(Lcom/ctc/System/u;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/System/v;->a:Lcom/ctc/System/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReportClientInfo.responseJson: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "code"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ctc/System/v;->a:Lcom/ctc/System/u;

    invoke-static {v0}, Lcom/ctc/System/u;->a(Lcom/ctc/System/u;)Lcom/ctc/System/ReportClientInfoService;

    move-result-object v0

    iget-object v1, p0, Lcom/ctc/System/v;->a:Lcom/ctc/System/u;

    invoke-static {v1}, Lcom/ctc/System/u;->a(Lcom/ctc/System/u;)Lcom/ctc/System/ReportClientInfoService;

    move-result-object v1

    invoke-static {v1}, Lcom/ctc/System/ReportClientInfoService;->a(Lcom/ctc/System/ReportClientInfoService;)Lcom/ctc/c/n;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/ctc/b/e;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/ctc/c/n;)V

    goto :goto_0
.end method
