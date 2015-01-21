.class Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement$1;
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
    .line 136
    iput-object p1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 140
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;

    #setter for: Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mModeIndex:I
    invoke-static {v2, p3}, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->access$002(Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;I)I

    .line 141
    if-nez p3, :cond_0

    .line 142
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;

    #getter for: Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParaAdatper:Landroid/widget/ArrayAdapter;
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->access$100(Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->clear()V

    .line 143
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0xc

    if-ge v0, v2, :cond_1

    .line 144
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;

    #getter for: Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParaAdatper:Landroid/widget/ArrayAdapter;
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->access$100(Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;

    #getter for: Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParamterStr:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->access$200(Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    .end local v0           #i:I
    :cond_0
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;

    #getter for: Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParaAdatper:Landroid/widget/ArrayAdapter;
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->access$100(Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->clear()V

    .line 148
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    const/16 v2, 0x20

    if-ge v0, v2, :cond_1

    .line 149
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;

    #getter for: Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParaAdatper:Landroid/widget/ArrayAdapter;
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->access$100(Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;

    #getter for: Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParamterStr:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->access$200(Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 153
    :cond_1
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;

    #getter for: Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParaSpinner:Landroid/widget/Spinner;
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->access$300(Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 154
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;

    #setter for: Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParaIndex:I
    invoke-static {v2, v5}, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->access$402(Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;I)I

    .line 156
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;

    #calls: Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->getAudioData()I
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->access$500(Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;)I

    move-result v1

    .line 157
    .local v1, initValue:I
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement$1;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;

    #getter for: Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mValueEdit:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->access$600(Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
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
    .line 162
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "EM/Audio"

    const-string v1, "do noting..."

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method
