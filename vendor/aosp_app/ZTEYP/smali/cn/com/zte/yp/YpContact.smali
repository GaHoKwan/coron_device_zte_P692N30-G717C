.class public Lcn/com/zte/yp/YpContact;
.super Ljava/lang/Object;
.source "YpContact.java"


# instance fields
.field private datasource:Ljava/lang/String;

.field private extraData:[B

.field private location:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private photo:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "number"
    .parameter "name"
    .parameter "photo"
    .parameter "datasource"
    .parameter "location"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcn/com/zte/yp/YpContact;->number:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcn/com/zte/yp/YpContact;->name:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcn/com/zte/yp/YpContact;->photo:[B

    .line 27
    iput-object p4, p0, Lcn/com/zte/yp/YpContact;->datasource:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcn/com/zte/yp/YpContact;->location:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getDatasource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcn/com/zte/yp/YpContact;->datasource:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraData()[B
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcn/com/zte/yp/YpContact;->extraData:[B

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcn/com/zte/yp/YpContact;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcn/com/zte/yp/YpContact;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcn/com/zte/yp/YpContact;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoto()[B
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcn/com/zte/yp/YpContact;->photo:[B

    return-object v0
.end method

.method public setDatasource(Ljava/lang/String;)V
    .locals 0
    .parameter "datasource"

    .prologue
    .line 60
    iput-object p1, p0, Lcn/com/zte/yp/YpContact;->datasource:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setExtraData([B)V
    .locals 0
    .parameter "extraData"

    .prologue
    .line 76
    iput-object p1, p0, Lcn/com/zte/yp/YpContact;->extraData:[B

    .line 77
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 68
    iput-object p1, p0, Lcn/com/zte/yp/YpContact;->location:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 44
    iput-object p1, p0, Lcn/com/zte/yp/YpContact;->name:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 36
    iput-object p1, p0, Lcn/com/zte/yp/YpContact;->number:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setPhoto([B)V
    .locals 0
    .parameter "photo"

    .prologue
    .line 52
    iput-object p1, p0, Lcn/com/zte/yp/YpContact;->photo:[B

    .line 53
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "YpContact [number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/zte/yp/YpContact;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/zte/yp/YpContact;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", photo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/zte/yp/YpContact;->photo:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", datasource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/zte/yp/YpContact;->datasource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/zte/yp/YpContact;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extraData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/zte/yp/YpContact;->extraData:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
