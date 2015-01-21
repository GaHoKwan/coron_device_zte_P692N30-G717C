.class public Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

.field private c:Ljava/lang/String;

.field private final d:Ljava/util/ArrayList;

.field private final e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "command"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "audioParam"

    invoke-static {v0, p3}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->b:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->d:Ljava/util/ArrayList;

    const/16 v0, 0x2710

    iput v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->e:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "command"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "audioParam"

    invoke-static {v0, p3}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "timeoutMs"

    const-string v2, "greater than 0"

    if-lez p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->b:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->d:Ljava/util/ArrayList;

    iput p4, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->e:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final addParam(Lcom/nuance/dragon/toolkit/cloudservices/DataParam;)V
    .locals 1

    const-string v0, "param"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->c:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->c:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->a:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->a:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->d:Ljava/util/ArrayList;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->d:Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->d:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->b:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->b:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    if-eqz v2, :cond_b

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->b:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->b:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    iget v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->e:I

    iget v3, p1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->e:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final getAudioParam()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getCommand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getDelayedParams()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public final getParams()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getSettings()Lcom/nuance/dragon/toolkit/data/Data$Dictionary;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->b:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    return-object v0
.end method

.method public final getTimeout()I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->e:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->b:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->e:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;->b:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->hashCode()I

    move-result v1

    goto :goto_3
.end method
