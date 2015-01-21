.class public Lcom/mediatek/lbs/em/UtilityStringList;
.super Ljava/lang/Object;
.source "UtilityStringList.java"


# instance fields
.field private mNum:I

.field private mStrList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/em/UtilityStringList;-><init>(I)V

    .line 12
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "stringNum"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lbs/em/UtilityStringList;->mStrList:Ljava/util/Vector;

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/lbs/em/UtilityStringList;->mNum:I

    .line 15
    iput p1, p0, Lcom/mediatek/lbs/em/UtilityStringList;->mNum:I

    .line 16
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/mediatek/lbs/em/UtilityStringList;->mStrList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v1, p0, Lcom/mediatek/lbs/em/UtilityStringList;->mNum:I

    if-le v0, v1, :cond_0

    .line 20
    iget-object v0, p0, Lcom/mediatek/lbs/em/UtilityStringList;->mStrList:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/mediatek/lbs/em/UtilityStringList;->mStrList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/lbs/em/UtilityStringList;->mStrList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 33
    return-void
.end method

.method public get()Ljava/lang/String;
    .locals 4

    .prologue
    .line 25
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 26
    .local v1, result:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/lbs/em/UtilityStringList;->mStrList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 27
    .local v2, str:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 28
    .end local v2           #str:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 36
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 37
    .local v1, result:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/lbs/em/UtilityStringList;->mStrList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 38
    .local v2, str:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 39
    .end local v2           #str:Ljava/lang/String;
    :cond_0
    return-object v1
.end method
