.class public Ltmsdkobf/jq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private vQ:Ltmsdkobf/kf;

.field private xu:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ltmsdkobf/kf;

    const-string v1, "CheckPoint"

    invoke-direct {v0, v1}, Ltmsdkobf/kf;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltmsdkobf/jq;->vQ:Ltmsdkobf/kf;

    .line 19
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ltmsdkobf/jq;->xu:Ljava/lang/StringBuffer;

    .line 20
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 4

    .prologue
    .line 28
    iget-object v1, p0, Ltmsdkobf/jq;->xu:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 29
    iget-object v1, p0, Ltmsdkobf/jq;->vQ:Ltmsdkobf/kf;

    const-string v2, "data"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ltmsdkobf/kf;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, content:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 31
    const-string v0, ""

    .line 33
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltmsdkobf/jq;->xu:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    iget-object v1, p0, Ltmsdkobf/jq;->vQ:Ltmsdkobf/kf;

    const-string v2, "data"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Ltmsdkobf/kf;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 35
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Ltmsdkobf/jq;->xu:Ljava/lang/StringBuffer;

    .line 37
    .end local v0           #content:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public d(II)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 24
    iget-object v0, p0, Ltmsdkobf/jq;->xu:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    return-void
.end method
