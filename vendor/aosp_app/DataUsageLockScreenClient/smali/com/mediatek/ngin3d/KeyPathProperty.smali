.class public Lcom/mediatek/ngin3d/KeyPathProperty;
.super Lcom/mediatek/ngin3d/Property;
.source "KeyPathProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/mediatek/ngin3d/Property",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected mKeys:[Ljava/lang/String;

.field protected mParentKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "keyPath"

    .prologue
    .line 53
    .local p0, this:Lcom/mediatek/ngin3d/KeyPathProperty;,"Lcom/mediatek/ngin3d/KeyPathProperty<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ngin3d/KeyPathProperty;-><init>(Ljava/lang/String;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "flags"

    .prologue
    .line 57
    .local p0, this:Lcom/mediatek/ngin3d/KeyPathProperty;,"Lcom/mediatek/ngin3d/KeyPathProperty<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;I[Lcom/mediatek/ngin3d/Property;)V

    .line 58
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/KeyPathProperty;->mKeys:[Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/KeyPathProperty;->getFirstKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Empty keyPath was passed."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 114
    .local p0, this:Lcom/mediatek/ngin3d/KeyPathProperty;,"Lcom/mediatek/ngin3d/KeyPathProperty<TT;>;"
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getFirstKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    .local p0, this:Lcom/mediatek/ngin3d/KeyPathProperty;,"Lcom/mediatek/ngin3d/KeyPathProperty<TT;>;"
    iget-object v0, p0, Lcom/mediatek/ngin3d/KeyPathProperty;->mKeys:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 74
    const-string v0, ""

    .line 77
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/KeyPathProperty;->mKeys:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 69
    .local p0, this:Lcom/mediatek/ngin3d/KeyPathProperty;,"Lcom/mediatek/ngin3d/KeyPathProperty<TT;>;"
    iget-object v0, p0, Lcom/mediatek/ngin3d/KeyPathProperty;->mKeys:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getKeyPathLength()I
    .locals 1

    .prologue
    .line 65
    .local p0, this:Lcom/mediatek/ngin3d/KeyPathProperty;,"Lcom/mediatek/ngin3d/KeyPathProperty<TT;>;"
    iget-object v0, p0, Lcom/mediatek/ngin3d/KeyPathProperty;->mKeys:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getLastKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    .local p0, this:Lcom/mediatek/ngin3d/KeyPathProperty;,"Lcom/mediatek/ngin3d/KeyPathProperty<TT;>;"
    iget-object v0, p0, Lcom/mediatek/ngin3d/KeyPathProperty;->mKeys:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 82
    const-string v0, ""

    .line 85
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/KeyPathProperty;->mKeys:[Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/ngin3d/KeyPathProperty;->mKeys:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getParentKeyPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 89
    .local p0, this:Lcom/mediatek/ngin3d/KeyPathProperty;,"Lcom/mediatek/ngin3d/KeyPathProperty<TT;>;"
    iget-object v3, p0, Lcom/mediatek/ngin3d/KeyPathProperty;->mKeys:[Ljava/lang/String;

    array-length v3, v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 90
    const-string v3, ""

    .line 104
    :goto_0
    return-object v3

    .line 93
    :cond_0
    iget-object v3, p0, Lcom/mediatek/ngin3d/KeyPathProperty;->mParentKey:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ngin3d/KeyPathProperty;->mKeys:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/mediatek/ngin3d/KeyPathProperty;->mKeys:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .line 97
    .local v1, last:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 98
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v3, p0, Lcom/mediatek/ngin3d/KeyPathProperty;->mKeys:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ngin3d/KeyPathProperty;->mParentKey:Ljava/lang/String;

    .line 104
    .end local v0           #i:I
    .end local v1           #last:I
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_2
    iget-object v3, p0, Lcom/mediatek/ngin3d/KeyPathProperty;->mParentKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 119
    .local p0, this:Lcom/mediatek/ngin3d/KeyPathProperty;,"Lcom/mediatek/ngin3d/KeyPathProperty<TT;>;"
    invoke-super {p0}, Lcom/mediatek/ngin3d/Property;->hashCode()I

    move-result v0

    return v0
.end method

.method public isKeyPath()Z
    .locals 1

    .prologue
    .line 109
    .local p0, this:Lcom/mediatek/ngin3d/KeyPathProperty;,"Lcom/mediatek/ngin3d/KeyPathProperty<TT;>;"
    const/4 v0, 0x1

    return v0
.end method
