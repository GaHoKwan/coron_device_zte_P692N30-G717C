.class Lcom/mediatek/engineermode/audio/AudioModeSetting$1;
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
    .line 285
    iput-object p1, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 290
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mValText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$700(Lcom/mediatek/engineermode/audio/AudioModeSetting;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f08015e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 291
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    const/16 v3, 0xff

    #setter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mValueRange:I
    invoke-static {v2, v3}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$802(Lcom/mediatek/engineermode/audio/AudioModeSetting;I)I

    .line 292
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mCurrentMode:I
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$200(Lcom/mediatek/engineermode/audio/AudioModeSetting;)I

    move-result v2

    if-nez v2, :cond_7

    .line 293
    if-eqz p3, :cond_0

    if-ne p3, v5, :cond_6

    .line 294
    :cond_0
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    add-int/lit8 v3, p3, 0x1

    #setter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mTypeIndex:I
    invoke-static {v2, v3}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$302(Lcom/mediatek/engineermode/audio/AudioModeSetting;I)I

    .line 303
    :goto_0
    const-string v2, "EM/Audio_modesetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTypeIndex is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mTypeIndex:I
    invoke-static {v4}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$300(Lcom/mediatek/engineermode/audio/AudioModeSetting;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mTypeIndex:I
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$300(Lcom/mediatek/engineermode/audio/AudioModeSetting;)I

    move-result v2

    invoke-static {}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$900()I

    move-result v3

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mTypeIndex:I
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$300(Lcom/mediatek/engineermode/audio/AudioModeSetting;)I

    move-result v2

    invoke-static {}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$1000()I

    move-result v3

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mTypeIndex:I
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$300(Lcom/mediatek/engineermode/audio/AudioModeSetting;)I

    move-result v2

    invoke-static {}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$1100()I

    move-result v3

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mTypeIndex:I
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$300(Lcom/mediatek/engineermode/audio/AudioModeSetting;)I

    move-result v2

    invoke-static {}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$1200()I

    move-result v3

    if-ne v2, v3, :cond_9

    .line 308
    :cond_1
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mEditMaxVol:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$1300(Lcom/mediatek/engineermode/audio/AudioModeSetting;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 309
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mBtnSetMaxVol:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$1400(Lcom/mediatek/engineermode/audio/AudioModeSetting;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 310
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mSupportEnhance:Z
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$1500(Lcom/mediatek/engineermode/audio/AudioModeSetting;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 311
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mEditMaxVolSpeaker:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$1600(Lcom/mediatek/engineermode/audio/AudioModeSetting;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 312
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mBtnSetMaxVolSpeaker:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$1700(Lcom/mediatek/engineermode/audio/AudioModeSetting;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 314
    :cond_2
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mTypeIndex:I
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$300(Lcom/mediatek/engineermode/audio/AudioModeSetting;)I

    move-result v2

    invoke-static {}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$900()I

    move-result v3

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mTypeIndex:I
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$300(Lcom/mediatek/engineermode/audio/AudioModeSetting;)I

    move-result v2

    invoke-static {}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$1000()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 316
    :cond_3
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mValText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$700(Lcom/mediatek/engineermode/audio/AudioModeSetting;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0801b0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 317
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    const/16 v3, 0xa0

    #setter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mValueRange:I
    invoke-static {v2, v3}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$802(Lcom/mediatek/engineermode/audio/AudioModeSetting;I)I

    .line 327
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mValueEdit:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$500(Lcom/mediatek/engineermode/audio/AudioModeSetting;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mData:[B
    invoke-static {v4}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$100(Lcom/mediatek/engineermode/audio/AudioModeSetting;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mCurrentMode:I
    invoke-static {v5}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$200(Lcom/mediatek/engineermode/audio/AudioModeSetting;)I

    move-result v5

    iget-object v6, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mTypeIndex:I
    invoke-static {v6}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$300(Lcom/mediatek/engineermode/audio/AudioModeSetting;)I

    move-result v6

    iget-object v7, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mLevelIndex:I
    invoke-static {v7}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$000(Lcom/mediatek/engineermode/audio/AudioModeSetting;)I

    move-result v7

    #calls: Lcom/mediatek/engineermode/audio/AudioModeSetting;->getValue([BIII)I
    invoke-static {v3, v4, v5, v6, v7}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$400(Lcom/mediatek/engineermode/audio/AudioModeSetting;[BIII)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #calls: Lcom/mediatek/engineermode/audio/AudioModeSetting;->setMaxVolEdit()V
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$600(Lcom/mediatek/engineermode/audio/AudioModeSetting;)V

    .line 330
    const-string v2, "EM/Audio_modesetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mCurrentMode:I
    invoke-static {v4}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$200(Lcom/mediatek/engineermode/audio/AudioModeSetting;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mTypeIndex:I
    invoke-static {v4}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$300(Lcom/mediatek/engineermode/audio/AudioModeSetting;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mLevelIndex:I
    invoke-static {v4}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$000(Lcom/mediatek/engineermode/audio/AudioModeSetting;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mSupportEnhance:Z
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$1500(Lcom/mediatek/engineermode/audio/AudioModeSetting;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 334
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, itemName:Ljava/lang/String;
    const-string v2, "EM/Audio_modesetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "itemName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    const v3, 0x1090008

    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #calls: Lcom/mediatek/engineermode/audio/AudioModeSetting;->getVolLevelList(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v4, v1}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$1800(Lcom/mediatek/engineermode/audio/AudioModeSetting;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 338
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 340
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mVolLevelSpinner:Landroid/widget/Spinner;
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$1900(Lcom/mediatek/engineermode/audio/AudioModeSetting;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 342
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #itemName:Ljava/lang/String;
    :cond_5
    return-void

    .line 296
    :cond_6
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    add-int/lit8 v3, p3, 0x2

    #setter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mTypeIndex:I
    invoke-static {v2, v3}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$302(Lcom/mediatek/engineermode/audio/AudioModeSetting;I)I

    goto/16 :goto_0

    .line 298
    :cond_7
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mCurrentMode:I
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$200(Lcom/mediatek/engineermode/audio/AudioModeSetting;)I

    move-result v2

    if-ne v2, v5, :cond_8

    .line 299
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    add-int/lit8 v3, p3, 0x1

    #setter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mTypeIndex:I
    invoke-static {v2, v3}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$302(Lcom/mediatek/engineermode/audio/AudioModeSetting;I)I

    goto/16 :goto_0

    .line 301
    :cond_8
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #setter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mTypeIndex:I
    invoke-static {v2, p3}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$302(Lcom/mediatek/engineermode/audio/AudioModeSetting;I)I

    goto/16 :goto_0

    .line 320
    :cond_9
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mEditMaxVol:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$1300(Lcom/mediatek/engineermode/audio/AudioModeSetting;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 321
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mBtnSetMaxVol:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$1400(Lcom/mediatek/engineermode/audio/AudioModeSetting;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 322
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mSupportEnhance:Z
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$1500(Lcom/mediatek/engineermode/audio/AudioModeSetting;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 323
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mEditMaxVolSpeaker:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$1600(Lcom/mediatek/engineermode/audio/AudioModeSetting;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 324
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$1;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mBtnSetMaxVolSpeaker:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$1700(Lcom/mediatek/engineermode/audio/AudioModeSetting;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_1
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
    .line 345
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "EM/Audio_modesetting"

    const-string v1, "noting selected."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-void
.end method
