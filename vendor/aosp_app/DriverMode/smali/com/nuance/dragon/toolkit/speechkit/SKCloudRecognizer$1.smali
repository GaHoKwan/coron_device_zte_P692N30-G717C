.class final Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/audio/AudioEnergyListener;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$1;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnergyLevelAvailable(F)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$1;->a:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->a(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;F)F

    return-void
.end method
