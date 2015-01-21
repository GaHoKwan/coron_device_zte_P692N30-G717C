.class Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$7;
.super Ljava/lang/Object;
.source "VoiceCommandRecord.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 404
    iput-object p1, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$7;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$7;->this$0:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;

    sget-object v1, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;->Introduction:Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;

    #calls: Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->updateStage(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;)V
    invoke-static {v0, v1}, Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;->access$1100(Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment;Lcom/mediatek/voiceunlock/VoiceCommandRecord$VoiceCommandRecordFragment$Stage;)V

    .line 407
    return-void
.end method
