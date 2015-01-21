.class public Lcn/com/zte/nlt/down/UpdatePackageInfo;
.super Ljava/lang/Object;
.source "UpdatePackageInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6923723c46422349L


# instance fields
.field private description:Ljava/lang/String;

.field private size:I

.field private updateTime:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "version"
    .parameter "description"
    .parameter "url"
    .parameter "updateTime"
    .parameter "size"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcn/com/zte/nlt/down/UpdatePackageInfo;->version:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcn/com/zte/nlt/down/UpdatePackageInfo;->description:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcn/com/zte/nlt/down/UpdatePackageInfo;->url:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcn/com/zte/nlt/down/UpdatePackageInfo;->updateTime:Ljava/lang/String;

    .line 27
    iput p5, p0, Lcn/com/zte/nlt/down/UpdatePackageInfo;->size:I

    .line 28
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcn/com/zte/nlt/down/UpdatePackageInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcn/com/zte/nlt/down/UpdatePackageInfo;->size:I

    return v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcn/com/zte/nlt/down/UpdatePackageInfo;->updateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcn/com/zte/nlt/down/UpdatePackageInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcn/com/zte/nlt/down/UpdatePackageInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isNull()Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcn/com/zte/nlt/down/UpdatePackageInfo;->version:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/zte/nlt/down/UpdatePackageInfo;->description:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/zte/nlt/down/UpdatePackageInfo;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/zte/nlt/down/UpdatePackageInfo;->updateTime:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 37
    :cond_0
    const/4 v0, 0x1

    .line 39
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 56
    iput-object p1, p0, Lcn/com/zte/nlt/down/UpdatePackageInfo;->description:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 80
    iput p1, p0, Lcn/com/zte/nlt/down/UpdatePackageInfo;->size:I

    .line 81
    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0
    .parameter "updateTime"

    .prologue
    .line 72
    iput-object p1, p0, Lcn/com/zte/nlt/down/UpdatePackageInfo;->updateTime:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 64
    iput-object p1, p0, Lcn/com/zte/nlt/down/UpdatePackageInfo;->url:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 48
    iput-object p1, p0, Lcn/com/zte/nlt/down/UpdatePackageInfo;->version:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageInfo [version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/zte/nlt/down/UpdatePackageInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/zte/nlt/down/UpdatePackageInfo;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/zte/nlt/down/UpdatePackageInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/zte/nlt/down/UpdatePackageInfo;->updateTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/com/zte/nlt/down/UpdatePackageInfo;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
