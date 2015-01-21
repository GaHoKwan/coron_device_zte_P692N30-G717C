.class public Lcom/mediatek/voicecommand/cfg/VoiceKeyWordInfo;
.super Ljava/lang/Object;
.source "VoiceKeyWordInfo.java"


# instance fields
.field public mKeyWordArray:[Ljava/lang/String;

.field public mKeyWordPath:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "keyWordArray"
    .parameter "keyWordPath"

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/mediatek/voicecommand/cfg/VoiceKeyWordInfo;->mKeyWordArray:[Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/mediatek/voicecommand/cfg/VoiceKeyWordInfo;->mKeyWordPath:Ljava/lang/String;

    .line 10
    return-void
.end method
