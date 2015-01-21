.class final Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$a;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$5;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$5;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->a(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$5;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->e(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$5;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->a(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;)Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    goto :goto_0
.end method
