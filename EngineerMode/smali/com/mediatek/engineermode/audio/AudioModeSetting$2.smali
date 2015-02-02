.class Lcom/mediatek/engineermode/audio/AudioModeSetting$2;
.super Ljava/lang/Object;
.source "AudioModeSetting.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/audio/AudioModeSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/audio/AudioModeSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$2;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    const/4 v4, 0x1

    .line 378
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$2;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mIsFirstFirSet:Z
    invoke-static {v1}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$2100(Lcom/mediatek/engineermode/audio/AudioModeSetting;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$2;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mFirsummary:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$2200(Lcom/mediatek/engineermode/audio/AudioModeSetting;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0801b1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 380
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$2;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    const/4 v2, 0x0

    #setter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mIsFirstFirSet:Z
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$2102(Lcom/mediatek/engineermode/audio/AudioModeSetting;Z)Z

    .line 407
    :goto_0
    return-void

    .line 383
    :cond_0
    const/4 v0, -0x1

    .line 384
    .local v0, ret:I
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$2;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mCurrentMode:I
    invoke-static {v1}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$200(Lcom/mediatek/engineermode/audio/AudioModeSetting;)I

    move-result v1

    if-nez v1, :cond_2

    .line 385
    const/16 v1, 0x20

    invoke-static {v1, p3}, Landroid/media/AudioSystem;->setAudioCommand(II)I

    move-result v0

    .line 387
    const-string v1, "EM/Audio_modesetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set normal fir Z"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_1
    :goto_1
    const/4 v1, -0x1

    if-ne v1, v0, :cond_4

    .line 400
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$2;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mFirsummary:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$2200(Lcom/mediatek/engineermode/audio/AudioModeSetting;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "FIR set error!"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$2;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    const-string v2, "Set error, check permission."

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 389
    :cond_2
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$2;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mCurrentMode:I
    invoke-static {v1}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$200(Lcom/mediatek/engineermode/audio/AudioModeSetting;)I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 390
    const/16 v1, 0x21

    invoke-static {v1, p3}, Landroid/media/AudioSystem;->setAudioCommand(II)I

    move-result v0

    .line 392
    const-string v1, "EM/Audio_modesetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set headset fir Z"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 394
    :cond_3
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$2;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mCurrentMode:I
    invoke-static {v1}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$200(Lcom/mediatek/engineermode/audio/AudioModeSetting;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 395
    const/16 v1, 0x22

    invoke-static {v1, p3}, Landroid/media/AudioSystem;->setAudioCommand(II)I

    move-result v0

    .line 397
    const-string v1, "EM/Audio_modesetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set loudspeaker fir Z"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 405
    :cond_4
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$2;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mFirsummary:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$2200(Lcom/mediatek/engineermode/audio/AudioModeSetting;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current selected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
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
    .line 410
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "EM/Audio_modesetting"

    const-string v1, "noting selected."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-void
.end method
