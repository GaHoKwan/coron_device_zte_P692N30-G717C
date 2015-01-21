.class final Lcom/nuance/dragon/toolkit/vocon/d$c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:I

.field final synthetic c:Lcom/nuance/dragon/toolkit/audio/AudioSource;

.field final synthetic d:Lcom/nuance/dragon/toolkit/vocon/d$c;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d$c;Ljava/util/Map;ILcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$2;->d:Lcom/nuance/dragon/toolkit/vocon/d$c;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$2;->a:Ljava/util/Map;

    iput p3, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$2;->b:I

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$2;->c:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$2;->d:Lcom/nuance/dragon/toolkit/vocon/d$c;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/d$c;->a(Lcom/nuance/dragon/toolkit/vocon/d$c;J)J

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$2;->d:Lcom/nuance/dragon/toolkit/vocon/d$c;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$c;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->b()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$2;->d:Lcom/nuance/dragon/toolkit/vocon/d$c;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/d$c;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$2;->a:Ljava/util/Map;

    invoke-interface {v1, v2}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->a(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "Unable to set recognizer parameters."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$2;->d:Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-static {v0, v5}, Lcom/nuance/dragon/toolkit/vocon/d$c;->a(Lcom/nuance/dragon/toolkit/vocon/d$c;Ljava/util/List;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$2;->d:Lcom/nuance/dragon/toolkit/vocon/d$c;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/d$c;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x2

    iget v3, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$2;->b:I

    new-instance v4, Lcom/nuance/dragon/toolkit/vocon/d$c$2$1;

    invoke-direct {v4, p0, v0}, Lcom/nuance/dragon/toolkit/vocon/d$c$2$1;-><init>(Lcom/nuance/dragon/toolkit/vocon/d$c$2;I)V

    invoke-interface {v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->a(IILcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unable to start recognizer."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$2;->d:Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-static {v0, v5}, Lcom/nuance/dragon/toolkit/vocon/d$c;->a(Lcom/nuance/dragon/toolkit/vocon/d$c;Ljava/util/List;)V

    goto :goto_0
.end method
