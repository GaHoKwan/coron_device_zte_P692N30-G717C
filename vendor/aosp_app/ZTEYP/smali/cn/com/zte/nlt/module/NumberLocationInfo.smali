.class public Lcn/com/zte/nlt/module/NumberLocationInfo;
.super Ljava/lang/Object;
.source "NumberLocationInfo.java"


# instance fields
.field private areaCode:Ljava/lang/String;

.field private cardType:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private detail:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "number"
    .parameter "city"
    .parameter "detail"
    .parameter "prefix"
    .parameter "areaCode"
    .parameter "cardType"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcn/com/zte/nlt/module/NumberLocationInfo;->number:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcn/com/zte/nlt/module/NumberLocationInfo;->city:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcn/com/zte/nlt/module/NumberLocationInfo;->detail:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcn/com/zte/nlt/module/NumberLocationInfo;->prefix:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcn/com/zte/nlt/module/NumberLocationInfo;->areaCode:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcn/com/zte/nlt/module/NumberLocationInfo;->cardType:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcn/com/zte/nlt/module/NumberLocationInfo;->areaCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCardType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcn/com/zte/nlt/module/NumberLocationInfo;->cardType:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcn/com/zte/nlt/module/NumberLocationInfo;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcn/com/zte/nlt/module/NumberLocationInfo;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcn/com/zte/nlt/module/NumberLocationInfo;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcn/com/zte/nlt/module/NumberLocationInfo;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public setAreaCode(Ljava/lang/String;)V
    .locals 0
    .parameter "areaCode"

    .prologue
    .line 70
    iput-object p1, p0, Lcn/com/zte/nlt/module/NumberLocationInfo;->areaCode:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setCardType(Ljava/lang/String;)V
    .locals 0
    .parameter "cardType"

    .prologue
    .line 78
    iput-object p1, p0, Lcn/com/zte/nlt/module/NumberLocationInfo;->cardType:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .parameter "city"

    .prologue
    .line 46
    iput-object p1, p0, Lcn/com/zte/nlt/module/NumberLocationInfo;->city:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setDetail(Ljava/lang/String;)V
    .locals 0
    .parameter "detail"

    .prologue
    .line 54
    iput-object p1, p0, Lcn/com/zte/nlt/module/NumberLocationInfo;->detail:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 38
    iput-object p1, p0, Lcn/com/zte/nlt/module/NumberLocationInfo;->number:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"

    .prologue
    .line 62
    iput-object p1, p0, Lcn/com/zte/nlt/module/NumberLocationInfo;->prefix:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NumberRegionInfo [number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/zte/nlt/module/NumberLocationInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", city="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/zte/nlt/module/NumberLocationInfo;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", detail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/zte/nlt/module/NumberLocationInfo;->detail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/zte/nlt/module/NumberLocationInfo;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", areaCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/zte/nlt/module/NumberLocationInfo;->areaCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cardType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/zte/nlt/module/NumberLocationInfo;->cardType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
