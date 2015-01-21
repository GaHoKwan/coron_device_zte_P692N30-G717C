.class Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandViewHold;
.super Ljava/lang/Object;
.source "VoiceCommandSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoiceCommandViewHold"
.end annotation


# instance fields
.field mPrimary:Landroid/widget/TextView;

.field mRadio:Landroid/widget/RadioButton;

.field mSecondary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment$VoiceCommandViewHold;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
