.class public Lcn/com/zte/nlt/down/ClientInfo;
.super Ljava/lang/Object;
.source "ClientInfo.java"


# instance fields
.field private dbVersion:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private lang:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "model"
    .parameter "imei"
    .parameter "version"
    .parameter "dbVersion"
    .parameter "lang"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcn/com/zte/nlt/down/ClientInfo;->model:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcn/com/zte/nlt/down/ClientInfo;->imei:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcn/com/zte/nlt/down/ClientInfo;->version:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcn/com/zte/nlt/down/ClientInfo;->dbVersion:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcn/com/zte/nlt/down/ClientInfo;->lang:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getDbVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcn/com/zte/nlt/down/ClientInfo;->dbVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcn/com/zte/nlt/down/ClientInfo;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcn/com/zte/nlt/down/ClientInfo;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcn/com/zte/nlt/down/ClientInfo;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/com/zte/nlt/down/ClientInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setDbVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "dbVersion"

    .prologue
    .line 57
    iput-object p1, p0, Lcn/com/zte/nlt/down/ClientInfo;->dbVersion:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0
    .parameter "imei"

    .prologue
    .line 41
    iput-object p1, p0, Lcn/com/zte/nlt/down/ClientInfo;->imei:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0
    .parameter "lang"

    .prologue
    .line 65
    iput-object p1, p0, Lcn/com/zte/nlt/down/ClientInfo;->lang:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .parameter "model"

    .prologue
    .line 33
    iput-object p1, p0, Lcn/com/zte/nlt/down/ClientInfo;->model:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 49
    iput-object p1, p0, Lcn/com/zte/nlt/down/ClientInfo;->version:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientInfo [model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/zte/nlt/down/ClientInfo;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/zte/nlt/down/ClientInfo;->imei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/zte/nlt/down/ClientInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dbVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/zte/nlt/down/ClientInfo;->dbVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/zte/nlt/down/ClientInfo;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
