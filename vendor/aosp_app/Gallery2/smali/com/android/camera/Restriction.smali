.class public Lcom/android/camera/Restriction;
.super Ljava/lang/Object;
.source "Restriction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Restriction$MappingFinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Restriction"

.field public static final TYPE_MODE:I = 0x1

.field public static final TYPE_SETTING:I


# instance fields
.field private mEnable:Z

.field private mMappingFinder:Lcom/android/camera/Restriction$MappingFinder;

.field private mRestrictions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/Restriction;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingIndex:I

.field private mType:I

.field private mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Restriction;->mEnable:Z

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/Restriction;->mType:I

    .line 18
    iput p1, p0, Lcom/android/camera/Restriction;->mSettingIndex:I

    .line 19
    return-void
.end method


# virtual methods
.method public findSupported(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "value"

    .prologue
    .line 73
    move-object v0, p1

    .line 74
    .local v0, supported:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/Restriction;->mMappingFinder:Lcom/android/camera/Restriction$MappingFinder;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/android/camera/Restriction;->mMappingFinder:Lcom/android/camera/Restriction$MappingFinder;

    iget-object v2, p0, Lcom/android/camera/Restriction;->mValues:Ljava/util/List;

    invoke-interface {v1, p1, v2}, Lcom/android/camera/Restriction$MappingFinder;->find(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Restriction;->mValues:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/Restriction;->mValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/android/camera/Restriction;->mValues:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #supported:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 80
    .restart local v0       #supported:Ljava/lang/String;
    :cond_1
    const-string v1, "Restriction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findSupported("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-object v0
.end method

.method public getEnable()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/camera/Restriction;->mEnable:Z

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/android/camera/Restriction;->mSettingIndex:I

    return v0
.end method

.method public getRestrictioins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/Restriction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/Restriction;->mRestrictions:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/android/camera/Restriction;->mType:I

    return v0
.end method

.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/Restriction;->mValues:Ljava/util/List;

    return-object v0
.end method

.method public setEnable(Z)Lcom/android/camera/Restriction;
    .locals 0
    .parameter "enable"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/camera/Restriction;->mEnable:Z

    .line 43
    return-object p0
.end method

.method public setMappingFinder(Lcom/android/camera/Restriction$MappingFinder;)Lcom/android/camera/Restriction;
    .locals 0
    .parameter "finder"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/camera/Restriction;->mMappingFinder:Lcom/android/camera/Restriction$MappingFinder;

    .line 86
    return-object p0
.end method

.method public varargs setRestrictions([Lcom/android/camera/Restriction;)Lcom/android/camera/Restriction;
    .locals 5
    .parameter "restrictions"

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/camera/Restriction;->mRestrictions:Ljava/util/List;

    .line 64
    move-object v0, p1

    .local v0, arr$:[Lcom/android/camera/Restriction;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 65
    .local v3, value:Lcom/android/camera/Restriction;
    iget-object v4, p0, Lcom/android/camera/Restriction;->mRestrictions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v0           #arr$:[Lcom/android/camera/Restriction;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #value:Lcom/android/camera/Restriction;
    :cond_0
    return-object p0
.end method

.method public setType(I)Lcom/android/camera/Restriction;
    .locals 0
    .parameter "type"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/camera/Restriction;->mType:I

    .line 48
    return-object p0
.end method

.method public varargs setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;
    .locals 5
    .parameter "values"

    .prologue
    .line 52
    if-eqz p1, :cond_0

    .line 53
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/camera/Restriction;->mValues:Ljava/util/List;

    .line 54
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 55
    .local v3, value:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/Restriction;->mValues:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #value:Ljava/lang/String;
    :cond_0
    return-object p0
.end method
