.class public final Lcom/nuance/dragon/toolkit/elvis/ElvisModelInfo;
.super Ljava/lang/Object;


# instance fields
.field public final frequencyHz:I

.field public final language:Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

.field public final quality:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisModelInfo;->language:Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisModelInfo;->quality:Ljava/lang/String;

    iput p3, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisModelInfo;->frequencyHz:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisModelInfo;->language:Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisModelInfo;->quality:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisModelInfo;->frequencyHz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Hz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
