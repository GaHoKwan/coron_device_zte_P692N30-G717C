.class Lcom/baidu/pcs/BaiduPCSMove;
.super Lcom/baidu/pcs/BaiduPCSFromToAction;


# static fields
.field private static final Value_Action:Ljava/lang/String; = "move"


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "move"

    invoke-direct {p0, v0}, Lcom/baidu/pcs/BaiduPCSFromToAction;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected move(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSFromToAction;->execute(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    move-result-object v0

    return-object v0
.end method

.method protected move(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;",
            ">;)",
            "Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/baidu/pcs/BaiduPCSFromToAction;->execute(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    move-result-object v0

    return-object v0
.end method

.method protected rename(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    .locals 3

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;-><init>()V

    iget-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v2, "Illegal file name."

    iput-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/baidu/pcs/BaiduPCSFromToAction;->execute(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    move-result-object v0

    goto :goto_0
.end method

.method protected rename(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;",
            ">;)",
            "Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;-><init>()V

    move v1, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;

    iget-object v3, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->from:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->from:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->to:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->to:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->to:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;-><init>()V

    iget-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v2, "Illegal file name."

    iput-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_0
    iget-object v4, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->from:Ljava/lang/String;

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->from:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->to:Ljava/lang/String;

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/baidu/pcs/BaiduPCSFromToAction;->execute(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    move-result-object v0

    goto :goto_1
.end method
