.class final enum Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;
.super Ljava/lang/Enum;
.source "VoiceCommandRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RightButtonMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

.field public static final enum Continue:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

.field public static final enum Record:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

.field public static final enum Retry:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;


# instance fields
.field final enabled:Z

.field final text:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 763
    new-instance v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    const-string v1, "Continue"

    const v2, 0x7f08000c

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;->Continue:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    .line 764
    new-instance v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    const-string v1, "Retry"

    const v2, 0x7f08000a

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;->Retry:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    .line 765
    new-instance v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    const-string v1, "Record"

    const v2, 0x7f08000b

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;->Record:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    .line 762
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    sget-object v1, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;->Continue:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;->Retry:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;->Record:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;->$VALUES:[Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "text"
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .prologue
    .line 771
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 772
    iput p3, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;->text:I

    .line 773
    iput-boolean p4, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;->enabled:Z

    .line 774
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 762
    const-class v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;
    .locals 1

    .prologue
    .line 762
    sget-object v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;->$VALUES:[Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    return-object v0
.end method
