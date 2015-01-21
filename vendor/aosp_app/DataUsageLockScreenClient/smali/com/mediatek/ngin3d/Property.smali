.class public Lcom/mediatek/ngin3d/Property;
.super Ljava/lang/Object;
.source "Property.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final FLAG_ANIMATABLE:I = 0x1


# instance fields
.field protected mDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mDependsOn:[Lcom/mediatek/ngin3d/Property;

.field protected mFlags:I

.field protected mName:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/Object;I[Lcom/mediatek/ngin3d/Property;)V
    .locals 0
    .parameter "name"
    .parameter
    .parameter "flags"
    .parameter "dependsOn"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;I[",
            "Lcom/mediatek/ngin3d/Property;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, this:Lcom/mediatek/ngin3d/Property;,"Lcom/mediatek/ngin3d/Property<TT;>;"
    .local p2, defaultValue:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/mediatek/ngin3d/Property;->mName:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/mediatek/ngin3d/Property;->mDefaultValue:Ljava/lang/Object;

    .line 64
    iput p3, p0, Lcom/mediatek/ngin3d/Property;->mFlags:I

    .line 65
    iput-object p4, p0, Lcom/mediatek/ngin3d/Property;->mDependsOn:[Lcom/mediatek/ngin3d/Property;

    .line 66
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V
    .locals 0
    .parameter "name"
    .parameter
    .parameter "dependsOn"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;[",
            "Lcom/mediatek/ngin3d/Property;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, this:Lcom/mediatek/ngin3d/Property;,"Lcom/mediatek/ngin3d/Property<TT;>;"
    .local p2, defaultValue:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/mediatek/ngin3d/Property;->mName:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/mediatek/ngin3d/Property;->mDefaultValue:Ljava/lang/Object;

    .line 58
    iput-object p3, p0, Lcom/mediatek/ngin3d/Property;->mDependsOn:[Lcom/mediatek/ngin3d/Property;

    .line 59
    return-void
.end method


# virtual methods
.method public varargs addDependsOn([Lcom/mediatek/ngin3d/Property;)V
    .locals 4
    .parameter "dependsOn"

    .prologue
    .local p0, this:Lcom/mediatek/ngin3d/Property;,"Lcom/mediatek/ngin3d/Property<TT;>;"
    const/4 v3, 0x0

    .line 99
    iget-object v1, p0, Lcom/mediatek/ngin3d/Property;->mDependsOn:[Lcom/mediatek/ngin3d/Property;

    array-length v1, v1

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [Lcom/mediatek/ngin3d/Property;

    .line 100
    .local v0, merged:[Lcom/mediatek/ngin3d/Property;
    iget-object v1, p0, Lcom/mediatek/ngin3d/Property;->mDependsOn:[Lcom/mediatek/ngin3d/Property;

    iget-object v2, p0, Lcom/mediatek/ngin3d/Property;->mDependsOn:[Lcom/mediatek/ngin3d/Property;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iget-object v1, p0, Lcom/mediatek/ngin3d/Property;->mDependsOn:[Lcom/mediatek/ngin3d/Property;

    array-length v1, v1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iput-object v0, p0, Lcom/mediatek/ngin3d/Property;->mDependsOn:[Lcom/mediatek/ngin3d/Property;

    .line 103
    return-void
.end method

.method public defaultValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, this:Lcom/mediatek/ngin3d/Property;,"Lcom/mediatek/ngin3d/Property<TT;>;"
    iget-object v0, p0, Lcom/mediatek/ngin3d/Property;->mDefaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public dependsOn(Lcom/mediatek/ngin3d/Property;)Z
    .locals 6
    .parameter "other"

    .prologue
    .local p0, this:Lcom/mediatek/ngin3d/Property;,"Lcom/mediatek/ngin3d/Property<TT;>;"
    const/4 v4, 0x0

    .line 85
    if-ne p0, p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v4

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ngin3d/Property;->mDependsOn:[Lcom/mediatek/ngin3d/Property;

    .local v0, arr$:[Lcom/mediatek/ngin3d/Property;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 90
    .local v1, dep:Lcom/mediatek/ngin3d/Property;
    invoke-virtual {v1, p1}, Lcom/mediatek/ngin3d/Property;->dependsOn(Lcom/mediatek/ngin3d/Property;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 91
    const/4 v4, 0x1

    goto :goto_0

    .line 89
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    .local p0, this:Lcom/mediatek/ngin3d/Property;,"Lcom/mediatek/ngin3d/Property<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    if-ne p0, p1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v1

    .line 121
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 123
    check-cast v0, Lcom/mediatek/ngin3d/Property;

    .line 125
    .local v0, property:Lcom/mediatek/ngin3d/Property;
    iget v3, p0, Lcom/mediatek/ngin3d/Property;->mFlags:I

    iget v4, v0, Lcom/mediatek/ngin3d/Property;->mFlags:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 126
    :cond_4
    iget-object v3, p0, Lcom/mediatek/ngin3d/Property;->mDefaultValue:Ljava/lang/Object;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/mediatek/ngin3d/Property;->mDefaultValue:Ljava/lang/Object;

    if-eqz v3, :cond_7

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/mediatek/ngin3d/Property;->mDefaultValue:Ljava/lang/Object;

    iget-object v4, v0, Lcom/mediatek/ngin3d/Property;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 127
    :cond_7
    iget-object v3, p0, Lcom/mediatek/ngin3d/Property;->mDependsOn:[Lcom/mediatek/ngin3d/Property;

    iget-object v4, v0, Lcom/mediatek/ngin3d/Property;->mDependsOn:[Lcom/mediatek/ngin3d/Property;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    goto :goto_0

    .line 128
    :cond_8
    iget-object v3, p0, Lcom/mediatek/ngin3d/Property;->mName:Ljava/lang/String;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/mediatek/ngin3d/Property;->mName:Ljava/lang/String;

    if-eqz v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_9
    iget-object v3, p0, Lcom/mediatek/ngin3d/Property;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/mediatek/ngin3d/Property;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1
.end method

.method getDependsOn()[Lcom/mediatek/ngin3d/Property;
    .locals 1

    .prologue
    .line 106
    .local p0, this:Lcom/mediatek/ngin3d/Property;,"Lcom/mediatek/ngin3d/Property<TT;>;"
    iget-object v0, p0, Lcom/mediatek/ngin3d/Property;->mDependsOn:[Lcom/mediatek/ngin3d/Property;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    .local p0, this:Lcom/mediatek/ngin3d/Property;,"Lcom/mediatek/ngin3d/Property<TT;>;"
    iget-object v0, p0, Lcom/mediatek/ngin3d/Property;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .local p0, this:Lcom/mediatek/ngin3d/Property;,"Lcom/mediatek/ngin3d/Property<TT;>;"
    const/4 v1, 0x0

    .line 111
    iget-object v2, p0, Lcom/mediatek/ngin3d/Property;->mName:Ljava/lang/String;

    if-nez v2, :cond_0

    move v0, v1

    .line 112
    .local v0, result:I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/mediatek/ngin3d/Property;->mDefaultValue:Ljava/lang/Object;

    if-nez v2, :cond_1

    move v2, v1

    :goto_1
    add-int v0, v3, v2

    .line 113
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/mediatek/ngin3d/Property;->mDependsOn:[Lcom/mediatek/ngin3d/Property;

    if-nez v3, :cond_2

    :goto_2
    add-int v0, v2, v1

    .line 114
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/mediatek/ngin3d/Property;->mFlags:I

    add-int v0, v1, v2

    .line 115
    return v0

    .line 111
    .end local v0           #result:I
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ngin3d/Property;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 112
    .restart local v0       #result:I
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ngin3d/Property;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ngin3d/Property;->mDependsOn:[Lcom/mediatek/ngin3d/Property;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    goto :goto_2
.end method

.method public isAnimatable()Z
    .locals 1

    .prologue
    .line 69
    .local p0, this:Lcom/mediatek/ngin3d/Property;,"Lcom/mediatek/ngin3d/Property<TT;>;"
    iget v0, p0, Lcom/mediatek/ngin3d/Property;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyPath()Z
    .locals 1

    .prologue
    .line 73
    .local p0, this:Lcom/mediatek/ngin3d/Property;,"Lcom/mediatek/ngin3d/Property<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final sameInstance(Lcom/mediatek/ngin3d/Property;)Z
    .locals 1
    .parameter "another"

    .prologue
    .line 139
    .local p0, this:Lcom/mediatek/ngin3d/Property;,"Lcom/mediatek/ngin3d/Property<TT;>;"
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    .local p0, this:Lcom/mediatek/ngin3d/Property;,"Lcom/mediatek/ngin3d/Property<TT;>;"
    iget-object v0, p0, Lcom/mediatek/ngin3d/Property;->mName:Ljava/lang/String;

    return-object v0
.end method
