.class public final Lcom/nuance/dragon/toolkit/vocalizer/VocalizerModelInfo;
.super Ljava/lang/Object;


# instance fields
.field public final frequencyKhz:I

.field public final model:Ljava/lang/String;

.field public final voice:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerModelInfo;->voice:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;

    iput p2, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerModelInfo;->frequencyKhz:I

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerModelInfo;->model:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerModelInfo;->voice:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerModelInfo;->frequencyKhz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KHz, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerModelInfo;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
