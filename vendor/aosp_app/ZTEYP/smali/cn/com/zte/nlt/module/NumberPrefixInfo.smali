.class public Lcn/com/zte/nlt/module/NumberPrefixInfo;
.super Ljava/lang/Object;
.source "NumberPrefixInfo.java"


# instance fields
.field private prefix:Ljava/lang/String;

.field private type:Lcn/com/zte/nlt/NltConst$NumberType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcn/com/zte/nlt/NltConst$NumberType;)V
    .locals 0
    .parameter "prefix"
    .parameter "type"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcn/com/zte/nlt/module/NumberPrefixInfo;->prefix:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcn/com/zte/nlt/module/NumberPrefixInfo;->type:Lcn/com/zte/nlt/NltConst$NumberType;

    .line 21
    return-void
.end method


# virtual methods
.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcn/com/zte/nlt/module/NumberPrefixInfo;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcn/com/zte/nlt/NltConst$NumberType;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcn/com/zte/nlt/module/NumberPrefixInfo;->type:Lcn/com/zte/nlt/NltConst$NumberType;

    return-object v0
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"

    .prologue
    .line 28
    iput-object p1, p0, Lcn/com/zte/nlt/module/NumberPrefixInfo;->prefix:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setType(Lcn/com/zte/nlt/NltConst$NumberType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 36
    iput-object p1, p0, Lcn/com/zte/nlt/module/NumberPrefixInfo;->type:Lcn/com/zte/nlt/NltConst$NumberType;

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NumberPrefixInfo [prefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/zte/nlt/module/NumberPrefixInfo;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/zte/nlt/module/NumberPrefixInfo;->type:Lcn/com/zte/nlt/NltConst$NumberType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
