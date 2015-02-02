.class public Lcom/dolby/instoredemoapp/AutoPilotItem;
.super Ljava/lang/Object;
.source "AutoPilotItem.java"


# static fields
.field private static UNSET:Ljava/lang/String;


# instance fields
.field private mDialogEnhancer:Ljava/lang/String;

.field private mDisplayText:Lcom/dolby/instoredemoapp/TextInfo;

.field private mId:I

.field private mIntelligentEq:Ljava/lang/String;

.field private mMasterControl:Ljava/lang/String;

.field private mProfileControl:Ljava/lang/String;

.field private mSurroundVirtualizer:Ljava/lang/String;

.field private mTimeStamp:Ljava/lang/String;

.field private mVolumeLeveler:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "unset"

    sput-object v0, Lcom/dolby/instoredemoapp/AutoPilotItem;->UNSET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mId:I

    .line 45
    sget-object v0, Lcom/dolby/instoredemoapp/AutoPilotItem;->UNSET:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mTimeStamp:Ljava/lang/String;

    .line 46
    new-instance v0, Lcom/dolby/instoredemoapp/TextInfo;

    invoke-direct {v0}, Lcom/dolby/instoredemoapp/TextInfo;-><init>()V

    iput-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mDisplayText:Lcom/dolby/instoredemoapp/TextInfo;

    .line 47
    iget-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mDisplayText:Lcom/dolby/instoredemoapp/TextInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/dolby/instoredemoapp/TextInfo;->text:Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/dolby/instoredemoapp/AutoPilotItem;->UNSET:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mMasterControl:Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/dolby/instoredemoapp/AutoPilotItem;->UNSET:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mProfileControl:Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/dolby/instoredemoapp/AutoPilotItem;->UNSET:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mSurroundVirtualizer:Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/dolby/instoredemoapp/AutoPilotItem;->UNSET:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mDialogEnhancer:Ljava/lang/String;

    .line 52
    sget-object v0, Lcom/dolby/instoredemoapp/AutoPilotItem;->UNSET:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mVolumeLeveler:Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/dolby/instoredemoapp/AutoPilotItem;->UNSET:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mIntelligentEq:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/dolby/instoredemoapp/TextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "timestamp"
    .parameter "text"
    .parameter "mastercontrol"
    .parameter "profilecontrol"
    .parameter "surroundvirtualizer"
    .parameter "dialogenhancer"
    .parameter "volumeleveler"
    .parameter "intelligenteq"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mId:I

    .line 32
    iput-object p2, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mTimeStamp:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mDisplayText:Lcom/dolby/instoredemoapp/TextInfo;

    .line 34
    iput-object p4, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mMasterControl:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mProfileControl:Ljava/lang/String;

    .line 36
    iput-object p6, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mSurroundVirtualizer:Ljava/lang/String;

    .line 37
    iput-object p7, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mDialogEnhancer:Ljava/lang/String;

    .line 38
    iput-object p8, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mVolumeLeveler:Ljava/lang/String;

    .line 39
    iput-object p9, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mIntelligentEq:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getDialogEnahancerValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mDialogEnhancer:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayText()Lcom/dolby/instoredemoapp/TextInfo;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mDisplayText:Lcom/dolby/instoredemoapp/TextInfo;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mId:I

    return v0
.end method

.method public getIntelligenEqValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mIntelligentEq:Ljava/lang/String;

    return-object v0
.end method

.method public getMasterControlValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mMasterControl:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileControlValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mProfileControl:Ljava/lang/String;

    return-object v0
.end method

.method public getSurroundVirtualizerValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mSurroundVirtualizer:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumeLevelerValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mVolumeLeveler:Ljava/lang/String;

    return-object v0
.end method

.method public setDialogEnhancerValue(Ljava/lang/String;)V
    .locals 0
    .parameter "dialogenhancer"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mDialogEnhancer:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setDisplayText(Lcom/dolby/instoredemoapp/TextInfo;)V
    .locals 0
    .parameter "displaytext"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mDisplayText:Lcom/dolby/instoredemoapp/TextInfo;

    .line 78
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 61
    iput p1, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mId:I

    .line 62
    return-void
.end method

.method public setIntelligentEqValue(Ljava/lang/String;)V
    .locals 0
    .parameter "intelligenteq"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mIntelligentEq:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setMasterControlValue(Ljava/lang/String;)V
    .locals 0
    .parameter "mastercontrol"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mMasterControl:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setProfileControlValue(Ljava/lang/String;)V
    .locals 0
    .parameter "profilecontrol"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mProfileControl:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setSurroundVirtualizerValue(Ljava/lang/String;)V
    .locals 0
    .parameter "surroundvirtualizer"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mSurroundVirtualizer:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setTimeStamp(Ljava/lang/String;)V
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mTimeStamp:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setVolumeLevelerValue(Ljava/lang/String;)V
    .locals 0
    .parameter "volumeleveler"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mVolumeLeveler:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 130
    .local v0, ret:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "textinfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mDisplayText:Lcom/dolby/instoredemoapp/TextInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "master_control = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mMasterControl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "profile_control = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mProfileControl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "surround_virtualizer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mSurroundVirtualizer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dialog_enhancer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mDialogEnhancer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "volume_leveler = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mVolumeLeveler:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "intelligent_eq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/instoredemoapp/AutoPilotItem;->mIntelligentEq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    return-object v0
.end method
