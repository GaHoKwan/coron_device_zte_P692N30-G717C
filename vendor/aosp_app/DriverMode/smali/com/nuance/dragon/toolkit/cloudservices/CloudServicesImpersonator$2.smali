.class final Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/cloudservices/d;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

.field final synthetic b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

.field private c:Z

.field private d:I


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$2;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$2;->a:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$2;->c:Z

    iput v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$2;->d:I

    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$2;->a:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->a(Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$2;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    const-string v1, "Ending command"

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$2;->c:Z

    iget v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$2;->d:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$2;->c()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$2;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending audio param "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$2;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$2;->d:I

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/audio/AudioChunk;Z)V
    .locals 3

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$2;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Sending"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    const-string v0, " final"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " audio for param "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    iget v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$2;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$2;->d:I

    :cond_0
    iget v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$2;->d:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$2;->c:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$2;->c()V

    :cond_1
    return-void

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$2;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending dict param "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;I)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$2;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Initializing command "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/a/a/a/b/b/a;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$2;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending tts param "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$2;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending text param "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;[B)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$2;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending data param "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$2;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    const-string v1, "free resource"

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$2;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending seq chunk param "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$2;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending choice param "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$2;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending seq end param "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator$2;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServicesImpersonator;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending seq start param "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
