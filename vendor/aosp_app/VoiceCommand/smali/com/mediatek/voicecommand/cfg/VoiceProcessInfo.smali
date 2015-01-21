.class public Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
.super Ljava/lang/Object;
.source "VoiceProcessInfo.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VoiceProcessInfo"


# instance fields
.field public isVoiceEnable:Z

.field public mCommandIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mFeatureName:Ljava/lang/String;

.field public mID:I

.field public mPermissionIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mProcessName:Ljava/lang/String;

.field public mRelationProcessName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "featureName"

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->mFeatureName:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->mProcessName:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->mRelationProcessName:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->mCommandIDList:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->mPermissionIDList:Ljava/util/ArrayList;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->isVoiceEnable:Z

    .line 52
    iput-object p1, p0, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->mFeatureName:Ljava/lang/String;

    .line 53
    return-void
.end method
