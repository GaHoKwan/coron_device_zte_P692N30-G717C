.class public Lcom/mediatek/voicecommand/cfg/VoiceLanguageInfo;
.super Ljava/lang/Object;
.source "VoiceLanguageInfo.java"


# instance fields
.field public mFilePath:Ljava/lang/String;

.field public mLanguageCode:Ljava/lang/String;

.field public mLanguageID:I

.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "filepath"
    .parameter "id"
    .parameter "code"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/mediatek/voicecommand/cfg/VoiceLanguageInfo;->mName:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/mediatek/voicecommand/cfg/VoiceLanguageInfo;->mFilePath:Ljava/lang/String;

    .line 47
    iput p3, p0, Lcom/mediatek/voicecommand/cfg/VoiceLanguageInfo;->mLanguageID:I

    .line 48
    iput-object p4, p0, Lcom/mediatek/voicecommand/cfg/VoiceLanguageInfo;->mLanguageCode:Ljava/lang/String;

    .line 49
    return-void
.end method
