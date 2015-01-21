.class final Lcom/nuance/dragon/toolkit/vocon/d$c$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/nuance/dragon/toolkit/audio/AudioSource;

.field final synthetic f:Ljava/util/Map;

.field final synthetic g:Ljava/util/List;

.field final synthetic h:Ljava/util/Map;

.field final synthetic i:Z

.field final synthetic j:Lcom/nuance/dragon/toolkit/vocon/d$c;

.field private k:J


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d$c;Ljava/util/List;Ljava/util/List;IILcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Z)V
    .locals 2

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->j:Lcom/nuance/dragon/toolkit/vocon/d$c;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->b:Ljava/util/List;

    iput p4, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->c:I

    iput p5, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->d:I

    iput-object p6, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->e:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iput-object p7, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->f:Ljava/util/Map;

    iput-object p8, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->g:Ljava/util/List;

    iput-object p9, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->h:Ljava/util/Map;

    iput-boolean p10, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->i:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->k:J

    return-void
.end method


# virtual methods
.method public final onError(Lcom/nuance/dragon/toolkit/vocon/VoconError;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->j:Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d$c;->k(Lcom/nuance/dragon/toolkit/vocon/d$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->j:Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d$c;->i(Lcom/nuance/dragon/toolkit/vocon/d$c;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->j:Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/d$c;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->j:Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/vocon/d$c;->a(Lcom/nuance/dragon/toolkit/vocon/d$c;Lcom/nuance/dragon/toolkit/vocon/VoconError;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->j:Lcom/nuance/dragon/toolkit/vocon/d$c;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/VoconError;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconError;-><init>(I)V

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/d$c;->a(Lcom/nuance/dragon/toolkit/vocon/d$c;Lcom/nuance/dragon/toolkit/vocon/VoconError;)V

    goto :goto_0
.end method

.method public final onResult(Lcom/nuance/dragon/toolkit/vocon/VoconResult;)V
    .locals 13

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->j:Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d$c;->k(Lcom/nuance/dragon/toolkit/vocon/d$c;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->c:I

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->a:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->getConfidence()I

    move-result v3

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->getConfidence()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Current confidence: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ,last best confidence: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lt v4, v3, :cond_5

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->getConfidence()I

    move-result v0

    iget v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->d:I

    add-int/2addr v0, v2

    const/16 v2, 0x125c

    if-gt v0, v2, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->j:Lcom/nuance/dragon/toolkit/vocon/d$c;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->e:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->f:Ljava/util/Map;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->g:Ljava/util/List;

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->h:Ljava/util/Map;

    iget-boolean v5, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->i:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->k:J

    sub-long v9, v7, v9

    const-wide/32 v11, 0x1d4c0

    cmp-long v9, v9, v11

    if-ltz v9, :cond_1

    iput-wide v7, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->k:J

    const/4 v6, 0x1

    :cond_1
    move-object v7, p0

    invoke-static/range {v0 .. v7}, Lcom/nuance/dragon/toolkit/vocon/d$c;->a(Lcom/nuance/dragon/toolkit/vocon/d$c;Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;ZZLcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->j:Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d$c;->i(Lcom/nuance/dragon/toolkit/vocon/d$c;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->j:Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/d$c;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->g:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->j:Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/d$c;->a(Lcom/nuance/dragon/toolkit/vocon/d$c;Lcom/nuance/dragon/toolkit/vocon/VoconResult;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$3;->j:Lcom/nuance/dragon/toolkit/vocon/d$c;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/VoconError;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconError;-><init>(I)V

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/d$c;->a(Lcom/nuance/dragon/toolkit/vocon/d$c;Lcom/nuance/dragon/toolkit/vocon/VoconError;)V

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method
