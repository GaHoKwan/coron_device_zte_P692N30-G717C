.class Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;
.super Ljava/lang/Object;
.source "PollingLoopMode.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "checked"

    .prologue
    .line 241
    const-string v1, "EM/HQA/NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PollingLoopMode]onCheckedChanged view is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$900(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)[Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 244
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$900(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)[Landroid/widget/CheckBox;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgTypeA:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1000(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/RadioGroup;

    move-result-object v2

    #calls: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->setRadioGroup(Landroid/widget/RadioGroup;Z)V
    invoke-static {v1, v2, p2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1100(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;Landroid/widget/RadioGroup;Z)V

    .line 248
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgTypeB:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1200(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/RadioGroup;

    move-result-object v2

    #calls: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->setRadioGroup(Landroid/widget/RadioGroup;Z)V
    invoke-static {v1, v2, p2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1100(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;Landroid/widget/RadioGroup;Z)V

    .line 249
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgTypeF:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1300(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/RadioGroup;

    move-result-object v2

    #calls: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->setRadioGroup(Landroid/widget/RadioGroup;Z)V
    invoke-static {v1, v2, p2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1100(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;Landroid/widget/RadioGroup;Z)V

    .line 250
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgTypeVSubCarrier:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1400(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/RadioGroup;

    move-result-object v2

    #calls: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->setRadioGroup(Landroid/widget/RadioGroup;Z)V
    invoke-static {v1, v2, p2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1100(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;Landroid/widget/RadioGroup;Z)V

    .line 251
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgTypeVMode:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1500(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/RadioGroup;

    move-result-object v2

    #calls: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->setRadioGroup(Landroid/widget/RadioGroup;Z)V
    invoke-static {v1, v2, p2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1100(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;Landroid/widget/RadioGroup;Z)V

    .line 252
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgTypeVRate:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1600(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/RadioGroup;

    move-result-object v2

    #calls: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->setRadioGroup(Landroid/widget/RadioGroup;Z)V
    invoke-static {v1, v2, p2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1100(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;Landroid/widget/RadioGroup;Z)V

    .line 279
    .end local v0           #i:I
    :cond_1
    :goto_1
    return-void

    .line 253
    :cond_2
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$900(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)[Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 254
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgTypeA:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1000(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/RadioGroup;

    move-result-object v2

    #calls: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->setRadioGroup(Landroid/widget/RadioGroup;Z)V
    invoke-static {v1, v2, p2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1100(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;Landroid/widget/RadioGroup;Z)V

    goto :goto_1

    .line 255
    :cond_3
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$900(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)[Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 256
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgTypeB:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1200(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/RadioGroup;

    move-result-object v2

    #calls: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->setRadioGroup(Landroid/widget/RadioGroup;Z)V
    invoke-static {v1, v2, p2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1100(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;Landroid/widget/RadioGroup;Z)V

    goto :goto_1

    .line 257
    :cond_4
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$900(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)[Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 258
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgTypeF:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1300(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/RadioGroup;

    move-result-object v2

    #calls: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->setRadioGroup(Landroid/widget/RadioGroup;Z)V
    invoke-static {v1, v2, p2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1100(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;Landroid/widget/RadioGroup;Z)V

    goto :goto_1

    .line 259
    :cond_5
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$900(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)[Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 260
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgTypeVSubCarrier:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1400(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/RadioGroup;

    move-result-object v2

    #calls: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->setRadioGroup(Landroid/widget/RadioGroup;Z)V
    invoke-static {v1, v2, p2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1100(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;Landroid/widget/RadioGroup;Z)V

    .line 261
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgTypeVMode:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1500(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/RadioGroup;

    move-result-object v2

    #calls: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->setRadioGroup(Landroid/widget/RadioGroup;Z)V
    invoke-static {v1, v2, p2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1100(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;Landroid/widget/RadioGroup;Z)V

    .line 262
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgTypeVRate:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1600(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/RadioGroup;

    move-result-object v2

    #calls: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->setRadioGroup(Landroid/widget/RadioGroup;Z)V
    invoke-static {v1, v2, p2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1100(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;Landroid/widget/RadioGroup;Z)V

    goto/16 :goto_1

    .line 263
    :cond_6
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$900(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)[Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 264
    const/4 v0, 0x7

    .restart local v0       #i:I
    :goto_2
    const/16 v1, 0xd

    if-gt v0, v1, :cond_7

    .line 265
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$900(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)[Landroid/widget/CheckBox;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 267
    :cond_7
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgP2pTypeA:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1700(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/RadioGroup;

    move-result-object v2

    #calls: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->setRadioGroup(Landroid/widget/RadioGroup;Z)V
    invoke-static {v1, v2, p2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1100(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;Landroid/widget/RadioGroup;Z)V

    .line 268
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgP2pTypeF:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1800(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/RadioGroup;

    move-result-object v2

    #calls: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->setRadioGroup(Landroid/widget/RadioGroup;Z)V
    invoke-static {v1, v2, p2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1100(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;Landroid/widget/RadioGroup;Z)V

    goto/16 :goto_1

    .line 269
    .end local v0           #i:I
    :cond_8
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$900(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)[Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 270
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgP2pTypeA:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1700(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/RadioGroup;

    move-result-object v2

    #calls: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->setRadioGroup(Landroid/widget/RadioGroup;Z)V
    invoke-static {v1, v2, p2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1100(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;Landroid/widget/RadioGroup;Z)V

    goto/16 :goto_1

    .line 271
    :cond_9
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$900(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)[Landroid/widget/CheckBox;

    move-result-object v1

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 272
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgP2pTypeF:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1800(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/RadioGroup;

    move-result-object v2

    #calls: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->setRadioGroup(Landroid/widget/RadioGroup;Z)V
    invoke-static {v1, v2, p2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1100(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;Landroid/widget/RadioGroup;Z)V

    goto/16 :goto_1

    .line 273
    :cond_a
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$900(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)[Landroid/widget/CheckBox;

    move-result-object v1

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgCardSwio:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1900(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/RadioGroup;

    move-result-object v2

    #calls: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->setRadioGroup(Landroid/widget/RadioGroup;Z)V
    invoke-static {v1, v2, p2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$1100(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;Landroid/widget/RadioGroup;Z)V

    .line 275
    const/16 v0, 0xf

    .restart local v0       #i:I
    :goto_3
    const/16 v1, 0x11

    if-gt v0, v1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$900(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)[Landroid/widget/CheckBox;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method
