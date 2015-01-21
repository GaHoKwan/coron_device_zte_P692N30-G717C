.class public Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;
.super Ljava/lang/Object;
.source "ImageDisplay.java"

# interfaces
.implements Lcom/mediatek/ngin3d/utils/JSON$ToJson;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ngin3d/presentation/ImageDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resource"
.end annotation


# instance fields
.field public resId:I

.field public resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 0
    .parameter "resources"
    .parameter "resId"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;->resources:Landroid/content/res/Resources;

    .line 59
    iput p2, p0, Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;->resId:I

    .line 60
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    if-ne p0, p1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v1

    .line 65
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

    .line 67
    check-cast v0, Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;

    .line 69
    .local v0, resource:Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;
    iget v3, p0, Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;->resId:I

    iget v4, v0, Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;->resId:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 70
    :cond_4
    iget-object v3, p0, Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;->resources:Landroid/content/res/Resources;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;->resources:Landroid/content/res/Resources;

    if-eqz v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;->resources:Landroid/content/res/Resources;

    iget-object v4, v0, Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;->resources:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 77
    iget-object v1, p0, Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;->resources:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 78
    .local v0, result:I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;->resId:I

    add-int v0, v1, v2

    .line 79
    return v0

    .line 77
    .end local v0           #result:I
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toJson()Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    const-string v0, "{Resource:{resources:\"%s\", resId:%d}}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;->resources:Landroid/content/res/Resources;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;->resId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 84
    const-string v0, "Resource:{resources:\"%s\", resId:%d}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;->resources:Landroid/content/res/Resources;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;->resId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
