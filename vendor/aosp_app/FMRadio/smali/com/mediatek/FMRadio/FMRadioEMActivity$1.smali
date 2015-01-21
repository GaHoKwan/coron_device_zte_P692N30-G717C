.class Lcom/mediatek/FMRadio/FMRadioEMActivity$1;
.super Ljava/lang/Object;
.source "FMRadioEMActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioEMActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 44
    .parameter "v"

    .prologue
    .line 184
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v41

    sparse-switch v41, :sswitch_data_0

    .line 352
    const-string v41, "FmRx/EM"

    const-string v42, "invalid view id"

    invoke-static/range {v41 .. v42}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :goto_0
    return-void

    .line 186
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->switchAntenna(I)V

    goto :goto_0

    .line 189
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->switchAntenna(I)V

    goto :goto_0

    .line 195
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->setStereoMono(Z)V

    goto :goto_0

    .line 201
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->setStereoMono(Z)V

    goto :goto_0

    .line 204
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditFreq:Landroid/widget/EditText;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$200(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v38

    .line 205
    .local v38, s:Ljava/lang/String;
    const/16 v29, 0x0

    .line 207
    .local v29, freq:F
    :try_start_0
    invoke-static/range {v38 .. v38}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v29

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonTune:Landroid/widget/Button;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/Button;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    invoke-static/range {v29 .. v29}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeStation(F)I

    move-result v42

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->tuneToStation(I)V
    invoke-static/range {v41 .. v42}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$500(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)V

    goto :goto_0

    .line 208
    :catch_0
    move-exception v28

    .line 209
    .local v28, e:Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    const-string v42, "bad float format."

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditFreq:Landroid/widget/EditText;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$200(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I
    invoke-static/range {v42 .. v42}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I

    move-result v42

    invoke-static/range {v42 .. v42}, Lcom/mediatek/FMRadio/FMRadioUtils;->formatStation(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 219
    .end local v28           #e:Ljava/lang/NumberFormatException;
    .end local v29           #freq:F
    .end local v38           #s:Ljava/lang/String;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditRssiThreshold:Landroid/widget/EditText;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v36

    .line 220
    .local v36, rssi:Ljava/lang/String;
    const/16 v37, 0x0

    .line 222
    .local v37, rssi_edit:I
    :try_start_1
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v37

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonRssiThreshold:Landroid/widget/Button;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/Button;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v41

    const/16 v42, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v42

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/FMRadio/FMRadioService;->setEmth(II)Z

    move-result v32

    .line 231
    .local v32, isRssiOk:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonRssiThreshold:Landroid/widget/Button;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/Button;

    move-result-object v41

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 232
    if-eqz v32, :cond_0

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    const-string v42, "Rssi Threshold set OK."

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 223
    .end local v32           #isRssiOk:Z
    :catch_1
    move-exception v28

    .line 224
    .restart local v28       #e:Ljava/lang/NumberFormatException;
    const-string v41, "FmRx/EM"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "click rssi threshold button:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    const-string v42, "bad format."

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditFreq:Landroid/widget/EditText;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$200(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v41

    const-string v42, "0"

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 235
    .end local v28           #e:Ljava/lang/NumberFormatException;
    .restart local v32       #isRssiOk:Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    const-string v42, "Rssi Threshold set fail."

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 239
    .end local v32           #isRssiOk:Z
    .end local v36           #rssi:Ljava/lang/String;
    .end local v37           #rssi_edit:I
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditDesenseRssi:Landroid/widget/EditText;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    .line 240
    .local v26, deRssi:Ljava/lang/String;
    const/16 v27, 0x0

    .line 242
    .local v27, deRssi_edit:I
    :try_start_2
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v27

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonDesenseRssi:Landroid/widget/Button;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/Button;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v41

    const/16 v42, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/FMRadio/FMRadioService;->setEmth(II)Z

    move-result v30

    .line 251
    .local v30, isDeRssiOk:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonDesenseRssi:Landroid/widget/Button;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/Button;

    move-result-object v41

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 252
    if-eqz v30, :cond_1

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    const-string v42, "Desense Rssi Threshold set OK."

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 243
    .end local v30           #isDeRssiOk:Z
    :catch_2
    move-exception v28

    .line 244
    .restart local v28       #e:Ljava/lang/NumberFormatException;
    const-string v41, "FmRx/EM"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "click desense rssi button:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    const-string v42, "bad format."

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditDesenseRssi:Landroid/widget/EditText;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v41

    const-string v42, "0"

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 255
    .end local v28           #e:Ljava/lang/NumberFormatException;
    .restart local v30       #isDeRssiOk:Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    const-string v42, "Desense Rssi Threshold set fail."

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 259
    .end local v26           #deRssi:Ljava/lang/String;
    .end local v27           #deRssi_edit:I
    .end local v30           #isDeRssiOk:Z
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditMuteGain:Landroid/widget/EditText;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1100(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v34

    .line 260
    .local v34, mutegain:Ljava/lang/String;
    const/16 v35, 0x0

    .line 262
    .local v35, mutegain_edit:I
    :try_start_3
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v35

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonMuteGain:Landroid/widget/Button;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1200(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/Button;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v41

    const/16 v42, 0x2

    move-object/from16 v0, v41

    move/from16 v1, v42

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/FMRadio/FMRadioService;->setEmth(II)Z

    move-result v31

    .line 271
    .local v31, isMuteOk:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonMuteGain:Landroid/widget/Button;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1200(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/Button;

    move-result-object v41

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 272
    if-eqz v31, :cond_2

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    const-string v42, "Software mute gain set OK."

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 263
    .end local v31           #isMuteOk:Z
    :catch_3
    move-exception v28

    .line 264
    .restart local v28       #e:Ljava/lang/NumberFormatException;
    const-string v41, "FmRx/EM"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "click mute gain button:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    const-string v42, "bad format."

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditMuteGain:Landroid/widget/EditText;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1100(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v41

    const-string v42, "0"

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 275
    .end local v28           #e:Ljava/lang/NumberFormatException;
    .restart local v31       #isMuteOk:Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    const-string v42, "Software mute gain set fail."

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 279
    .end local v31           #isMuteOk:Z
    .end local v34           #mutegain:Ljava/lang/String;
    .end local v35           #mutegain_edit:I
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditCMD0:Landroid/widget/EditText;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, cmd0:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditCMD1:Landroid/widget/EditText;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, cmd1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditCMD2:Landroid/widget/EditText;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 282
    .local v15, cmd2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditCMD3:Landroid/widget/EditText;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 283
    .local v16, cmd3:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditCMD4:Landroid/widget/EditText;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1700(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 284
    .local v17, cmd4:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditCMD5:Landroid/widget/EditText;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 285
    .local v18, cmd5:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditCMD6:Landroid/widget/EditText;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1900(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 286
    .local v19, cmd6:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditCMD7:Landroid/widget/EditText;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    .line 287
    .local v20, cmd7:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditCMD8:Landroid/widget/EditText;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2100(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    .line 288
    .local v21, cmd8:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditCMD9:Landroid/widget/EditText;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2200(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    .line 289
    .local v22, cmd9:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditCMD10:Landroid/widget/EditText;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 290
    .local v5, cmd10:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditCMD11:Landroid/widget/EditText;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 291
    .local v6, cmd11:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditCMD12:Landroid/widget/EditText;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2500(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 292
    .local v7, cmd12:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditCMD13:Landroid/widget/EditText;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 293
    .local v8, cmd13:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditCMD14:Landroid/widget/EditText;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2700(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 294
    .local v9, cmd14:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditCMD15:Landroid/widget/EditText;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 295
    .local v10, cmd15:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditCMD16:Landroid/widget/EditText;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2900(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 296
    .local v11, cmd16:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditCMD17:Landroid/widget/EditText;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 297
    .local v12, cmd17:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditCMD18:Landroid/widget/EditText;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3100(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 298
    .local v13, cmd18:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditCMD19:Landroid/widget/EditText;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3200(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 299
    .local v14, cmd19:Ljava/lang/String;
    const/16 v41, 0x14

    move/from16 v0, v41

    new-array v0, v0, [S

    move-object/from16 v23, v0

    .line 301
    .local v23, cmdArray:[S
    const/16 v41, 0x14

    :try_start_4
    move/from16 v0, v41

    new-array v0, v0, [S

    move-object/from16 v23, v0

    .end local v23           #cmdArray:[S
    const/16 v41, 0x0

    invoke-static {v3}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Short;->shortValue()S

    move-result v42

    aput-short v42, v23, v41

    const/16 v41, 0x1

    invoke-static {v4}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Short;->shortValue()S

    move-result v42

    aput-short v42, v23, v41

    const/16 v41, 0x2

    invoke-static {v15}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Short;->shortValue()S

    move-result v42

    aput-short v42, v23, v41

    const/16 v41, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Short;->shortValue()S

    move-result v42

    aput-short v42, v23, v41

    const/16 v41, 0x4

    invoke-static/range {v17 .. v17}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Short;->shortValue()S

    move-result v42

    aput-short v42, v23, v41

    const/16 v41, 0x5

    invoke-static/range {v18 .. v18}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Short;->shortValue()S

    move-result v42

    aput-short v42, v23, v41

    const/16 v41, 0x6

    invoke-static/range {v19 .. v19}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Short;->shortValue()S

    move-result v42

    aput-short v42, v23, v41

    const/16 v41, 0x7

    invoke-static/range {v20 .. v20}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Short;->shortValue()S

    move-result v42

    aput-short v42, v23, v41

    const/16 v41, 0x8

    invoke-static/range {v21 .. v21}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Short;->shortValue()S

    move-result v42

    aput-short v42, v23, v41

    const/16 v41, 0x9

    invoke-static/range {v22 .. v22}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Short;->shortValue()S

    move-result v42

    aput-short v42, v23, v41

    const/16 v41, 0xa

    invoke-static {v5}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Short;->shortValue()S

    move-result v42

    aput-short v42, v23, v41

    const/16 v41, 0xb

    invoke-static {v6}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Short;->shortValue()S

    move-result v42

    aput-short v42, v23, v41

    const/16 v41, 0xc

    invoke-static {v7}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Short;->shortValue()S

    move-result v42

    aput-short v42, v23, v41

    const/16 v41, 0xd

    invoke-static {v8}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Short;->shortValue()S

    move-result v42

    aput-short v42, v23, v41

    const/16 v41, 0xe

    invoke-static {v9}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Short;->shortValue()S

    move-result v42

    aput-short v42, v23, v41

    const/16 v41, 0xf

    invoke-static {v10}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Short;->shortValue()S

    move-result v42

    aput-short v42, v23, v41

    const/16 v41, 0x10

    invoke-static {v11}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Short;->shortValue()S

    move-result v42

    aput-short v42, v23, v41

    const/16 v41, 0x11

    invoke-static {v12}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Short;->shortValue()S

    move-result v42

    aput-short v42, v23, v41

    const/16 v41, 0x12

    invoke-static {v13}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Short;->shortValue()S

    move-result v42

    aput-short v42, v23, v41

    const/16 v41, 0x13

    invoke-static {v14}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Short;->shortValue()S

    move-result v42

    aput-short v42, v23, v41
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 327
    .restart local v23       #cmdArray:[S
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->emcmd([S)[S

    move-result-object v24

    .line 329
    .local v24, cmds:[S
    if-nez v24, :cond_3

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    const-string v42, "cmd execute fail."

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    .line 331
    const-string v41, "FmRx/EM"

    const-string v42, "cmd expand execute fail"

    invoke-static/range {v41 .. v42}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 322
    .end local v23           #cmdArray:[S
    .end local v24           #cmds:[S
    :catch_4
    move-exception v28

    .line 323
    .local v28, e:Ljava/lang/Exception;
    const-string v41, "FmRx/EM"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "click cmd button:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    const-string v42, "bad format."

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 334
    .end local v28           #e:Ljava/lang/Exception;
    .restart local v23       #cmdArray:[S
    .restart local v24       #cmds:[S
    :cond_3
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v39, v0

    .line 335
    .local v39, size:I
    const/16 v25, 0x0

    .line 336
    .local v25, count:I
    const/16 v41, 0x5

    move/from16 v0, v41

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string v42, ""

    aput-object v42, v40, v41

    const/16 v41, 0x1

    const-string v42, ""

    aput-object v42, v40, v41

    const/16 v41, 0x2

    const-string v42, ""

    aput-object v42, v40, v41

    const/16 v41, 0x3

    const-string v42, ""

    aput-object v42, v40, v41

    const/16 v41, 0x4

    const-string v42, ""

    aput-object v42, v40, v41

    .line 337
    .local v40, values:[Ljava/lang/String;
    const/16 v33, -0x1

    .line 338
    .local v33, line:I
    :goto_1
    move/from16 v0, v25

    move/from16 v1, v39

    if-ge v0, v1, :cond_5

    .line 339
    rem-int/lit8 v41, v25, 0x4

    if-nez v41, :cond_4

    .line 340
    add-int/lit8 v33, v33, 0x1

    .line 342
    :cond_4
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v42, v40, v33

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "0X"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    aget-short v42, v24, v25

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    aput-object v41, v40, v33

    .line 343
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 345
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextCMDReturn0:Landroid/widget/TextView;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;

    move-result-object v41

    const/16 v42, 0x0

    aget-object v42, v40, v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextCMDReturn1:Landroid/widget/TextView;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;

    move-result-object v41

    const/16 v42, 0x1

    aget-object v42, v40, v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextCMDReturn2:Landroid/widget/TextView;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3500(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;

    move-result-object v41

    const/16 v42, 0x2

    aget-object v42, v40, v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextCMDReturn3:Landroid/widget/TextView;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;

    move-result-object v41

    const/16 v42, 0x3

    aget-object v42, v40, v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextCMDReturn4:Landroid/widget/TextView;
    invoke-static/range {v41 .. v41}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3700(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;

    move-result-object v41

    const/16 v42, 0x4

    aget-object v42, v40, v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 184
    :sswitch_data_0
    .sparse-switch
        0x7f060021 -> :sswitch_4
        0x7f060023 -> :sswitch_0
        0x7f060024 -> :sswitch_1
        0x7f060026 -> :sswitch_2
        0x7f060027 -> :sswitch_3
        0x7f060033 -> :sswitch_5
        0x7f060035 -> :sswitch_7
        0x7f060037 -> :sswitch_6
        0x7f06004c -> :sswitch_8
    .end sparse-switch
.end method
