.class public Lcom/mediatek/engineermode/touchscreen/TsPointStatusStruct;
.super Ljava/lang/Object;
.source "TsPointStatusStruct.java"


# instance fields
.field public mDown:Z

.field public mNewLine:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcom/mediatek/engineermode/touchscreen/TsPointStatusStruct;->mDown:Z

    .line 40
    iput-boolean v0, p0, Lcom/mediatek/engineermode/touchscreen/TsPointStatusStruct;->mNewLine:Z

    return-void
.end method


# virtual methods
.method public ismDown()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/mediatek/engineermode/touchscreen/TsPointStatusStruct;->mDown:Z

    return v0
.end method

.method public ismNewLine()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/mediatek/engineermode/touchscreen/TsPointStatusStruct;->mNewLine:Z

    return v0
.end method

.method public setmDown(Z)V
    .locals 0
    .parameter "down"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/mediatek/engineermode/touchscreen/TsPointStatusStruct;->mDown:Z

    .line 47
    return-void
.end method

.method public setmNewLine(Z)V
    .locals 0
    .parameter "newLine"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/mediatek/engineermode/touchscreen/TsPointStatusStruct;->mNewLine:Z

    .line 53
    return-void
.end method
