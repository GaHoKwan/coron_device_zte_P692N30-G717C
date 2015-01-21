.class Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings$1;
.super Landroid/preference/SwitchPreference;
.source "VoiceUiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;->createPreferenceHierarchy(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings$1;->this$0:Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;

    invoke-direct {p0, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method
