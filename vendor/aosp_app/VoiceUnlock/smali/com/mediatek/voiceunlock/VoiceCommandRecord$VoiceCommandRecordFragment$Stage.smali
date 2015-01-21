.class final enum Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;
.super Ljava/lang/Enum;
.source "VoiceCommandRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

.field public static final enum FirstRecording:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

.field public static final enum Introduction:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

.field public static final enum NonFirstRecording:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

.field public static final enum OneRoundDiff:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

.field public static final enum OneRoundExist:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

.field public static final enum OneRoundNoisy:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

.field public static final enum OneRoundOK:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

.field public static final enum OneRoundWeak:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

.field public static final enum Prepare:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

.field public static final enum RecordingOK:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;


# instance fields
.field final leftMode:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;

.field final promptMessage:I

.field final rightMode:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 799
    new-instance v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    const-string v1, "Introduction"

    const v3, 0x7f08001b

    sget-object v4, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;->Cancel:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;

    sget-object v5, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;->Record:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;-><init>(Ljava/lang/String;IILcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;)V

    sput-object v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->Introduction:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    .line 802
    new-instance v3, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    const-string v4, "Prepare"

    const v6, 0x7f08001c

    sget-object v7, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;->Cancel:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;

    sget-object v8, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;->Retry:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;-><init>(Ljava/lang/String;IILcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;)V

    sput-object v3, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->Prepare:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    .line 805
    new-instance v3, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    const-string v4, "FirstRecording"

    const v6, 0x7f08001d

    sget-object v7, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;->Cancel:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;

    sget-object v8, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;->Retry:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;-><init>(Ljava/lang/String;IILcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;)V

    sput-object v3, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->FirstRecording:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    .line 808
    new-instance v3, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    const-string v4, "NonFirstRecording"

    const v6, 0x7f08001e

    sget-object v7, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;->Cancel:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;

    sget-object v8, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;->Retry:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;-><init>(Ljava/lang/String;IILcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;)V

    sput-object v3, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->NonFirstRecording:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    .line 811
    new-instance v3, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    const-string v4, "OneRoundOK"

    const v6, 0x7f08001f

    sget-object v7, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;->Cancel:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;

    sget-object v8, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;->Retry:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;-><init>(Ljava/lang/String;IILcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;)V

    sput-object v3, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->OneRoundOK:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    .line 814
    new-instance v3, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    const-string v4, "OneRoundNoisy"

    const/4 v5, 0x5

    const v6, 0x7f080020

    sget-object v7, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;->Cancel:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;

    sget-object v8, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;->Retry:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    invoke-direct/range {v3 .. v8}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;-><init>(Ljava/lang/String;IILcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;)V

    sput-object v3, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->OneRoundNoisy:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    .line 817
    new-instance v3, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    const-string v4, "OneRoundWeak"

    const/4 v5, 0x6

    const v6, 0x7f080021

    sget-object v7, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;->Cancel:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;

    sget-object v8, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;->Retry:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    invoke-direct/range {v3 .. v8}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;-><init>(Ljava/lang/String;IILcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;)V

    sput-object v3, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->OneRoundWeak:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    .line 820
    new-instance v3, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    const-string v4, "OneRoundDiff"

    const/4 v5, 0x7

    const v6, 0x7f080022

    sget-object v7, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;->Cancel:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;

    sget-object v8, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;->Retry:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    invoke-direct/range {v3 .. v8}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;-><init>(Ljava/lang/String;IILcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;)V

    sput-object v3, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->OneRoundDiff:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    .line 823
    new-instance v3, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    const-string v4, "OneRoundExist"

    const/16 v5, 0x8

    const v6, 0x7f080023

    sget-object v7, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;->Cancel:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;

    sget-object v8, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;->Retry:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    invoke-direct/range {v3 .. v8}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;-><init>(Ljava/lang/String;IILcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;)V

    sput-object v3, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->OneRoundExist:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    .line 826
    new-instance v3, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    const-string v4, "RecordingOK"

    const/16 v5, 0x9

    const v6, 0x7f080024

    sget-object v7, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;->Cancel:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;

    sget-object v8, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;->Continue:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    invoke-direct/range {v3 .. v8}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;-><init>(Ljava/lang/String;IILcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;)V

    sput-object v3, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->RecordingOK:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    .line 797
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    sget-object v1, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->Introduction:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->Prepare:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    aput-object v1, v0, v9

    sget-object v1, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->FirstRecording:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    aput-object v1, v0, v10

    sget-object v1, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->NonFirstRecording:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    aput-object v1, v0, v11

    sget-object v1, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->OneRoundOK:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->OneRoundNoisy:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->OneRoundWeak:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->OneRoundDiff:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->OneRoundExist:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->RecordingOK:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->$VALUES:[Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;)V
    .locals 0
    .parameter
    .parameter
    .parameter "promptMessage"
    .parameter "leftMode"
    .parameter "rightMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;",
            "Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 839
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 840
    iput p3, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->promptMessage:I

    .line 841
    iput-object p4, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->leftMode:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$LeftButtonMode;

    .line 842
    iput-object p5, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->rightMode:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$RightButtonMode;

    .line 843
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;
    .locals 1
    .parameter "name"

    .prologue
    .line 797
    const-class v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;
    .locals 1

    .prologue
    .line 797
    sget-object v0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->$VALUES:[Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    return-object v0
.end method
