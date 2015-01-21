.class Lcom/nuance/dragon/toolkit/nvsl/ResultJni;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:C

.field private final e:Ljava/util/ArrayList;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/nuance/dragon/toolkit/nvsl/ResultJni;->b:I

    iput v0, p0, Lcom/nuance/dragon/toolkit/nvsl/ResultJni;->c:I

    const/16 v0, 0x20

    iput-char v0, p0, Lcom/nuance/dragon/toolkit/nvsl/ResultJni;->d:C

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/ResultJni;->e:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method addLanguage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/ResultJni;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;

    invoke-direct {v1, p1, p2, p3}, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method createNVSLResult(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;
    .locals 4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/ResultJni;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-char v0, p0, Lcom/nuance/dragon/toolkit/nvsl/ResultJni;->d:C

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/ResultJni;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;-><init>()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/ResultJni;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/ResultJni;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/nuance/dragon/toolkit/nvsl/ResultJni;->b:I

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->a(Ljava/lang/String;I)V

    :cond_1
    iget-char v0, p0, Lcom/nuance/dragon/toolkit/nvsl/ResultJni;->d:C

    iget v2, p0, Lcom/nuance/dragon/toolkit/nvsl/ResultJni;->c:I

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->a(CI)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/ResultJni;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;

    invoke-virtual {v1, v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->a(Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method setGenderResult(CI)V
    .locals 0

    iput-char p1, p0, Lcom/nuance/dragon/toolkit/nvsl/ResultJni;->d:C

    iput p2, p0, Lcom/nuance/dragon/toolkit/nvsl/ResultJni;->c:I

    return-void
.end method

.method setSpeakerIDResult(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/nvsl/ResultJni;->a:Ljava/lang/String;

    iput p2, p0, Lcom/nuance/dragon/toolkit/nvsl/ResultJni;->b:I

    return-void
.end method
