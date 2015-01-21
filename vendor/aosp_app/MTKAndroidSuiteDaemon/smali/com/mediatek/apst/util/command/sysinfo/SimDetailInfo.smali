.class public Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
.super Ljava/lang/Object;
.source "SimDetailInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final SIM_TYPE_SIM:I = 0x2

.field public static final SIM_TYPE_USIM:I = 0x3

.field public static final SLOT_ID_FOUR:I = 0x3

.field public static final SLOT_ID_ONE:I = 0x0

.field public static final SLOT_ID_SINGLE:I = 0x0

.field public static final SLOT_ID_THREE:I = 0x2

.field public static final SLOT_ID_TWO:I = 0x1

.field private static final serialVersionUID:J = 0x2L

.field public static final versionCode:I = 0x1


# instance fields
.field private isAccessible:Z

.field private mColor:I

.field private mDisplayName:Ljava/lang/String;

.field private mICCId:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mSIMType:I

.field private mSimId:I

.field private mSlotId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->mDisplayName:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->mNumber:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->mICCId:Ljava/lang/String;

    .line 73
    const/16 v0, -0xff

    iput v0, p0, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->mSlotId:I

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->isAccessible:Z

    .line 58
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->mColor:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getICCId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->mICCId:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSIMType()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->mSIMType:I

    return v0
.end method

.method public getSimId()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->mSimId:I

    return v0
.end method

.method public getSlotId()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->mSlotId:I

    return v0
.end method

.method public isAccessible()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->isAccessible:Z

    return v0
.end method

.method public setAccessible(Z)V
    .locals 0
    .parameter "isAccessible"

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->isAccessible:Z

    .line 137
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .parameter "mColor"

    .prologue
    .line 102
    iput p1, p0, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->mColor:I

    .line 103
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .parameter "mDisplayName"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->mDisplayName:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setICCId(Ljava/lang/String;)V
    .locals 0
    .parameter "mICCId"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->mICCId:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "mNumber"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->mNumber:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setSIMType(I)V
    .locals 0
    .parameter "mSIMType"

    .prologue
    .line 128
    iput p1, p0, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->mSIMType:I

    .line 129
    return-void
.end method

.method public setSimId(I)V
    .locals 0
    .parameter "mSimId"

    .prologue
    .line 109
    iput p1, p0, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->mSimId:I

    .line 110
    return-void
.end method

.method public setSlotId(I)V
    .locals 0
    .parameter "mSlotId"

    .prologue
    .line 121
    iput p1, p0, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->mSlotId:I

    .line 122
    return-void
.end method
