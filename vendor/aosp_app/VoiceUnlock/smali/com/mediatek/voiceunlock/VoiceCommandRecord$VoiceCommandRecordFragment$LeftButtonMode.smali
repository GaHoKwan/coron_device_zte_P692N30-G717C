.class final enum Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;
.super Ljava/lang/Enum;
.source "VoiceCommandRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LeftButtonMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;

.field public static final enum Cancel:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;


# instance fields
.field final enabled:Z

.field final text:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 781
    new-instance v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;

    const-string v1, "Cancel"

    const v2, 0x7f080009

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;->Cancel:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;

    .line 780
    new-array v0, v4, [Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;

    sget-object v1, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;->Cancel:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;->$VALUES:[Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;

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
    .line 787
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 788
    iput p3, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;->text:I

    .line 789
    iput-boolean p4, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;->enabled:Z

    .line 790
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 780
    const-class v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;
    .locals 1

    .prologue
    .line 780
    sget-object v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;->$VALUES:[Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;

    return-object v0
.end method
