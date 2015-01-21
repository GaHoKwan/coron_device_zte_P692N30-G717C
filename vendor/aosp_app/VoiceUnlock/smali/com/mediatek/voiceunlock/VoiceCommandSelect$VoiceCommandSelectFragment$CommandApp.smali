.class Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$CommandApp;
.super Ljava/lang/Object;
.source "VoiceCommandSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommandApp"
.end annotation


# instance fields
.field mComponentName:Landroid/content/ComponentName;

.field mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;


# direct methods
.method public constructor <init>(Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "componentName"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$CommandApp;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p2, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$CommandApp;->mName:Ljava/lang/String;

    .line 266
    iput-object p3, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$CommandApp;->mComponentName:Landroid/content/ComponentName;

    .line 267
    return-void
.end method
