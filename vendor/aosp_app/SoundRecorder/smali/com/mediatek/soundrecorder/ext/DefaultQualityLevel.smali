.class public Lcom/mediatek/soundrecorder/ext/DefaultQualityLevel;
.super Ljava/lang/Object;
.source "DefaultQualityLevel.java"

# interfaces
.implements Lcom/mediatek/soundrecorder/ext/IQualityLevel;


# static fields
.field private static final VOICE_QUALITY_LEVEL_NUMBER:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLevelNumber()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x2

    return v0
.end method
