.class public Lcom/mediatek/ngin3d/presentation/ObjectSource;
.super Ljava/lang/Object;
.source "ObjectSource.java"

# interfaces
.implements Lcom/mediatek/ngin3d/utils/JSON$ToJson;


# static fields
.field public static final ASSET:I = 0x3

.field public static final FILE:I = 0x1

.field public static final RES_ID:I = 0x2


# instance fields
.field public srcInfo:Ljava/lang/Object;

.field public srcType:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .parameter "srcType"
    .parameter "srcInfo"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/mediatek/ngin3d/presentation/ObjectSource;->srcType:I

    .line 57
    iput-object p2, p0, Lcom/mediatek/ngin3d/presentation/ObjectSource;->srcInfo:Ljava/lang/Object;

    .line 58
    return-void
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    const-string v0, "ObjectSource{type=%d, info=%s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/mediatek/ngin3d/presentation/ObjectSource;->srcType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mediatek/ngin3d/presentation/ObjectSource;->srcInfo:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 65
    const-string v0, "ObjectSource: type=%d, info=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/mediatek/ngin3d/presentation/ObjectSource;->srcType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mediatek/ngin3d/presentation/ObjectSource;->srcInfo:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
