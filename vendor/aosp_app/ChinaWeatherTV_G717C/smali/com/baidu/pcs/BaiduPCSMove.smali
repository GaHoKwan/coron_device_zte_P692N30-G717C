.class Lcom/baidu/pcs/BaiduPCSMove;
.super Lcom/baidu/pcs/BaiduPCSFromToAction;
.source "BaiduPCSMove.java"


# static fields
.field private static final Value_Action:Ljava/lang/String; = "move"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "move"

    invoke-direct {p0, v0}, Lcom/baidu/pcs/BaiduPCSFromToAction;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected move(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    .locals 1
    .parameter "from"
    .parameter "to"

    .prologue
    .line 22
    invoke-super {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSFromToAction;->execute(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    move-result-object v0

    return-object v0
.end method

.method protected move(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    .locals 1
    .parameter
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

    .prologue
    .line 29
    .local p1, info:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;>;"
    invoke-super {p0, p1}, Lcom/baidu/pcs/BaiduPCSFromToAction;->execute(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    move-result-object v0

    return-object v0
.end method

.method protected rename(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    .locals 4
    .parameter "from"
    .parameter "to"

    .prologue
    .line 36
    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    new-instance v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    invoke-direct {v1}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;-><init>()V

    .line 38
    .local v1, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v3, "Illegal file name."

    iput-object v3, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    .line 43
    .end local v1           #ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    :goto_0
    return-object v1

    .line 41
    :cond_0
    const/4 v2, 0x0

    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, newNamePath:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 43
    invoke-super {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSFromToAction;->execute(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    move-result-object v1

    goto :goto_0
.end method

.method protected rename(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    .locals 9
    .parameter
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

    .prologue
    .line 51
    .local p1, info:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;>;"
    new-instance v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;

    invoke-direct {v3}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;-><init>()V

    .line 52
    .local v3, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 65
    invoke-super {p0, p1}, Lcom/baidu/pcs/BaiduPCSFromToAction;->execute(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    move-result-object v4

    :goto_1
    return-object v4

    .line 53
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;
    check-cast v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;

    .line 54
    .restart local v3       #ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;
    iget-object v5, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->from:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->from:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->to:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->to:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 55
    iget-object v1, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->to:Ljava/lang/String;

    .line 56
    .local v1, newName:Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 57
    new-instance v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    invoke-direct {v4}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;-><init>()V

    .line 58
    .local v4, retBack:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    iget-object v5, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v6, "Illegal file name."

    iput-object v6, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_1

    .line 61
    .end local v4           #retBack:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    :cond_1
    iget-object v5, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->from:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->from:Ljava/lang/String;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, newNamePath:Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->to:Ljava/lang/String;

    .line 52
    .end local v1           #newName:Ljava/lang/String;
    .end local v2           #newNamePath:Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
