.class public Lcom/mediatek/lbs/em/AgpsProfile;
.super Ljava/lang/Object;
.source "AgpsProfile.java"


# instance fields
.field private acnt:Ljava/lang/String;

.field private addr:Ljava/lang/String;

.field private backupSlp:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private port:I

.field private showType:I

.field private tls:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAcnt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/lbs/em/AgpsProfile;->acnt:Ljava/lang/String;

    return-object v0
.end method

.method public getAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mediatek/lbs/em/AgpsProfile;->addr:Ljava/lang/String;

    return-object v0
.end method

.method public getBackupSlp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/lbs/em/AgpsProfile;->backupSlp:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/lbs/em/AgpsProfile;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mediatek/lbs/em/AgpsProfile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/mediatek/lbs/em/AgpsProfile;->port:I

    return v0
.end method

.method public getShowType()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/mediatek/lbs/em/AgpsProfile;->showType:I

    return v0
.end method

.method public getTls()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/mediatek/lbs/em/AgpsProfile;->tls:I

    return v0
.end method

.method public setAcnt(Ljava/lang/String;)V
    .locals 0
    .parameter "acnt"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/mediatek/lbs/em/AgpsProfile;->acnt:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setAddr(Ljava/lang/String;)V
    .locals 0
    .parameter "addr"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/mediatek/lbs/em/AgpsProfile;->addr:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setBackupSlp(Ljava/lang/String;)V
    .locals 0
    .parameter "backupSlp"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/mediatek/lbs/em/AgpsProfile;->backupSlp:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .parameter "code"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/mediatek/lbs/em/AgpsProfile;->code:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/mediatek/lbs/em/AgpsProfile;->name:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .parameter "port"

    .prologue
    .line 27
    iput p1, p0, Lcom/mediatek/lbs/em/AgpsProfile;->port:I

    .line 28
    return-void
.end method

.method public setShowType(I)V
    .locals 0
    .parameter "showType"

    .prologue
    .line 35
    iput p1, p0, Lcom/mediatek/lbs/em/AgpsProfile;->showType:I

    .line 36
    return-void
.end method

.method public setTls(I)V
    .locals 0
    .parameter "tls"

    .prologue
    .line 31
    iput p1, p0, Lcom/mediatek/lbs/em/AgpsProfile;->tls:I

    .line 32
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 79
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 80
    .local v0, tmp:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/lbs/em/AgpsProfile;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/lbs/em/AgpsProfile;->addr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " acnt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/lbs/em/AgpsProfile;->acnt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/lbs/em/AgpsProfile;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tls="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/lbs/em/AgpsProfile;->tls:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " showType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/lbs/em/AgpsProfile;->showType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/lbs/em/AgpsProfile;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " backupSlp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/lbs/em/AgpsProfile;->backupSlp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    return-object v0
.end method
