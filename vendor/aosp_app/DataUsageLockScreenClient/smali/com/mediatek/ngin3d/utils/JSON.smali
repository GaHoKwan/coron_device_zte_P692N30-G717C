.class public final Lcom/mediatek/ngin3d/utils/JSON;
.super Ljava/lang/Object;
.source "JSON.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ngin3d/utils/JSON$ToJson;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "obj"

    .prologue
    .line 60
    if-nez p0, :cond_0

    .line 61
    const-string v0, "null"

    .line 67
    :goto_0
    return-object v0

    .line 64
    :cond_0
    instance-of v0, p0, Lcom/mediatek/ngin3d/utils/JSON$ToJson;

    if-eqz v0, :cond_1

    .line 65
    check-cast p0, Lcom/mediatek/ngin3d/utils/JSON$ToJson;

    .end local p0
    invoke-interface {p0}, Lcom/mediatek/ngin3d/utils/JSON$ToJson;->toJson()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 67
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static wrap(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "object"

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .parameter "buffer"

    .prologue
    .line 54
    const/4 v0, 0x0

    const-string v1, "{"

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    return-object p0
.end method
