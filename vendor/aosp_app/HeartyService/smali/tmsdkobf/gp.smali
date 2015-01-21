.class public Ltmsdkobf/gp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private nL:I

.field private nM:I

.field private nN:I

.field private nO:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 4
    .parameter "reqType"
    .parameter "reqGeoType"
    .parameter "reqLevel"
    .parameter "reqDelay"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v2, p0, Ltmsdkobf/gp;->nL:I

    .line 13
    iput v3, p0, Ltmsdkobf/gp;->nM:I

    .line 15
    const/16 v0, 0xc

    iput v0, p0, Ltmsdkobf/gp;->nN:I

    .line 17
    iput v2, p0, Ltmsdkobf/gp;->nO:I

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "argument: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ltmsdkobf/gp;->nL:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltmsdkobf/gp;->nO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 40
    iget v1, p0, Ltmsdkobf/gp;->nM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltmsdkobf/gl;->aw(Ljava/lang/String;)V

    .line 41
    if-ltz p1, :cond_0

    .line 42
    if-gt p1, v2, :cond_0

    .line 43
    iput p1, p0, Ltmsdkobf/gp;->nL:I

    .line 45
    :cond_0
    if-ltz p2, :cond_1

    .line 46
    if-gt p2, v2, :cond_1

    .line 47
    iput p2, p0, Ltmsdkobf/gp;->nO:I

    .line 49
    :cond_1
    if-eqz p3, :cond_2

    .line 50
    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    .line 51
    const/4 v0, 0x3

    if-eq p3, v0, :cond_2

    .line 52
    const/4 v0, 0x4

    if-ne p3, v0, :cond_3

    .line 53
    :cond_2
    iput p3, p0, Ltmsdkobf/gp;->nM:I

    .line 55
    :cond_3
    iget v0, p0, Ltmsdkobf/gp;->nO:I

    if-nez v0, :cond_4

    .line 56
    iput v3, p0, Ltmsdkobf/gp;->nM:I

    .line 59
    :cond_4
    iput p4, p0, Ltmsdkobf/gp;->nN:I

    .line 60
    return-void
.end method


# virtual methods
.method public getReqDelay()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Ltmsdkobf/gp;->nN:I

    return v0
.end method

.method public getReqGeoType()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Ltmsdkobf/gp;->nO:I

    return v0
.end method

.method public getReqLevel()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Ltmsdkobf/gp;->nM:I

    return v0
.end method

.method public getReqType()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Ltmsdkobf/gp;->nL:I

    return v0
.end method

.method public onLocationDataUpdate([B)V
    .locals 0
    .parameter

    .prologue
    .line 80
    return-void
.end method

.method public onLocationUpdate(Ltmsdkobf/gr;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    return-void
.end method

.method public onStatusUpdate(I)V
    .locals 0
    .parameter

    .prologue
    .line 93
    return-void
.end method
