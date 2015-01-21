.class final Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$a;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$2;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$2;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$2$1;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$2$1;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$2;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->a(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$2$1;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$2;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$2$1;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$2;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->a(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;)Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$2$1;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$2;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->d(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)V

    goto :goto_0
.end method
