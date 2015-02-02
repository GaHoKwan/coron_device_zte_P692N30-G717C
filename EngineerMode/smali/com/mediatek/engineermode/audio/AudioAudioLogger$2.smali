.class Lcom/mediatek/engineermode/audio/AudioAudioLogger$2;
.super Ljava/lang/Object;
.source "AudioAudioLogger.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/audio/AudioAudioLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/audio/AudioAudioLogger;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/audio/AudioAudioLogger;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger$2;->this$0:Lcom/mediatek/engineermode/audio/AudioAudioLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 160
    const/4 v0, -0x1

    .line 161
    .local v0, ret:I
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger$2;->this$0:Lcom/mediatek/engineermode/audio/AudioAudioLogger;

    #calls: Lcom/mediatek/engineermode/audio/AudioAudioLogger;->checkSDCardIsAvaliable()Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->access$000(Lcom/mediatek/engineermode/audio/AudioAudioLogger;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 162
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 184
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger$2;->this$0:Lcom/mediatek/engineermode/audio/AudioAudioLogger;

    #getter for: Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mAudioStrmOtptDump:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->access$100(Lcom/mediatek/engineermode/audio/AudioAudioLogger;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 166
    const/16 v4, 0x63

    if-eqz p2, :cond_2

    move v1, v2

    :goto_1
    invoke-static {v4, v1}, Landroid/media/AudioSystem;->setAudioCommand(II)I

    move-result v0

    .line 176
    :cond_1
    :goto_2
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 177
    const-string v1, "EM/Audio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "parameter failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger$2;->this$0:Lcom/mediatek/engineermode/audio/AudioAudioLogger;

    const v4, 0x7f0801a0

    invoke-static {v1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 180
    if-nez p2, :cond_b

    :goto_3
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 166
    goto :goto_1

    .line 167
    :cond_3
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger$2;->this$0:Lcom/mediatek/engineermode/audio/AudioAudioLogger;

    #getter for: Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mAudioMixerBufDump:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->access$200(Lcom/mediatek/engineermode/audio/AudioAudioLogger;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 168
    const/16 v4, 0x65

    if-eqz p2, :cond_4

    move v1, v2

    :goto_4
    invoke-static {v4, v1}, Landroid/media/AudioSystem;->setAudioCommand(II)I

    move-result v0

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_4

    .line 169
    :cond_5
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger$2;->this$0:Lcom/mediatek/engineermode/audio/AudioAudioLogger;

    #getter for: Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mAudioTrackBufDump:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->access$300(Lcom/mediatek/engineermode/audio/AudioAudioLogger;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 170
    const/16 v4, 0x67

    if-eqz p2, :cond_6

    move v1, v2

    :goto_5
    invoke-static {v4, v1}, Landroid/media/AudioSystem;->setAudioCommand(II)I

    move-result v0

    goto :goto_2

    :cond_6
    move v1, v3

    goto :goto_5

    .line 171
    :cond_7
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger$2;->this$0:Lcom/mediatek/engineermode/audio/AudioAudioLogger;

    #getter for: Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mAudioA2DPStrmDump:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->access$400(Lcom/mediatek/engineermode/audio/AudioAudioLogger;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 172
    const/16 v4, 0x69

    if-eqz p2, :cond_8

    move v1, v2

    :goto_6
    invoke-static {v4, v1}, Landroid/media/AudioSystem;->setAudioCommand(II)I

    move-result v0

    goto :goto_2

    :cond_8
    move v1, v3

    goto :goto_6

    .line 173
    :cond_9
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger$2;->this$0:Lcom/mediatek/engineermode/audio/AudioAudioLogger;

    #getter for: Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mAudioStrmInptDump:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->access$500(Lcom/mediatek/engineermode/audio/AudioAudioLogger;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    const/16 v4, 0x6b

    if-eqz p2, :cond_a

    move v1, v2

    :goto_7
    invoke-static {v4, v1}, Landroid/media/AudioSystem;->setAudioCommand(II)I

    move-result v0

    goto/16 :goto_2

    :cond_a
    move v1, v3

    goto :goto_7

    :cond_b
    move v2, v3

    .line 180
    goto :goto_3

    .line 182
    :cond_c
    const-string v1, "EM/Audio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "parameter success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
