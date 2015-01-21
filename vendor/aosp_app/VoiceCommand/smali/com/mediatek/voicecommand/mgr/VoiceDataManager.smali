.class public Lcom/mediatek/voicecommand/mgr/VoiceDataManager;
.super Ljava/lang/Object;
.source "VoiceDataManager.java"


# instance fields
.field public mMessageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/voicecommand/mgr/VoiceMessage;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;


# direct methods
.method public constructor <init>(Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/voicecommand/mgr/VoiceDataManager;->mMessageList:Ljava/util/ArrayList;

    .line 52
    iput-object p1, p0, Lcom/mediatek/voicecommand/mgr/VoiceDataManager;->mService:Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;

    .line 53
    return-void
.end method
