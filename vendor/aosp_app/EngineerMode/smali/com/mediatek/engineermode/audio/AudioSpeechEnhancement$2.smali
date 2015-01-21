.class Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement$2;
.super Ljava/lang/Object;
.source "AudioSpeechEnhancement.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement$2;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement$2;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;

    #setter for: Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParaIndex:I
    invoke-static {v1, p3}, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->access$402(Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;I)I

    .line 185
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement$2;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;

    #calls: Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->getAudioData()I
    invoke-static {v1}, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->access$500(Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;)I

    move-result v0

    .line 186
    .local v0, initValue:I
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement$2;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;

    #getter for: Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mValueEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->access$600(Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "EM/Audio"

    const-string v1, "do noting..."

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method
