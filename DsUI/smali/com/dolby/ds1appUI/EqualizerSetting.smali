.class public Lcom/dolby/ds1appUI/EqualizerSetting;
.super Ljava/lang/Object;
.source "EqualizerSetting.java"


# instance fields
.field private mIconDisabled:I

.field private mIconNormal:I

.field private mIconSelected:I

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter "name"
    .parameter "iconSelected"
    .parameter "iconNormal"
    .parameter "iconDisabled"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/dolby/ds1appUI/EqualizerSetting;->mName:Ljava/lang/String;

    .line 20
    iput p2, p0, Lcom/dolby/ds1appUI/EqualizerSetting;->mIconSelected:I

    .line 21
    iput p3, p0, Lcom/dolby/ds1appUI/EqualizerSetting;->mIconNormal:I

    .line 22
    iput p4, p0, Lcom/dolby/ds1appUI/EqualizerSetting;->mIconDisabled:I

    .line 23
    return-void
.end method


# virtual methods
.method public getIcon(ZZ)I
    .locals 1
    .parameter "selected"
    .parameter "enabled"

    .prologue
    .line 30
    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/dolby/ds1appUI/EqualizerSetting;->mIconSelected:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/dolby/ds1appUI/EqualizerSetting;->mIconNormal:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/dolby/ds1appUI/EqualizerSetting;->mIconDisabled:I

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dolby/ds1appUI/EqualizerSetting;->mName:Ljava/lang/String;

    return-object v0
.end method
