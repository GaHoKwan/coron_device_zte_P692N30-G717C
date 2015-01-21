.class Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;
.super Landroid/os/Handler;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FmRadioServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioService;


# direct methods
.method public constructor <init>(Lcom/mediatek/FMRadio/FMRadioService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 2804
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    .line 2805
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2806
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .parameter "msg"

    .prologue
    .line 2811
    const/4 v5, 0x0

    .line 2812
    .local v5, isPowerup:Z
    const/4 v9, 0x1

    .line 2814
    .local v9, isSwitch:Z
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 3010
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2818
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 2819
    .local v2, bundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->handlePowerUp(Landroid/os/Bundle;)V
    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$2100(Lcom/mediatek/FMRadio/FMRadioService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 2824
    .end local v2           #bundle:Landroid/os/Bundle;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->handlePowernDown()V
    invoke-static/range {v17 .. v17}, Lcom/mediatek/FMRadio/FMRadioService;->access$2200(Lcom/mediatek/FMRadio/FMRadioService;)V

    goto :goto_0

    .line 2829
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSpeakerUsed:Z
    invoke-static/range {v17 .. v17}, Lcom/mediatek/FMRadio/FMRadioService;->access$1700(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 2830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/mediatek/FMRadio/FMRadioService;->setSpeakerPhoneOn(Z)V

    .line 2832
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/FMRadio/FMRadioService;->powerDown()Z

    .line 2833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->closeDevice()Z
    invoke-static/range {v17 .. v17}, Lcom/mediatek/FMRadio/FMRadioService;->access$2300(Lcom/mediatek/FMRadio/FMRadioService;)Z

    .line 2835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;
    invoke-static/range {v17 .. v17}, Lcom/mediatek/FMRadio/FMRadioService;->access$1500(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/MediaPlayer;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 2836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;
    invoke-static/range {v17 .. v17}, Lcom/mediatek/FMRadio/FMRadioService;->access$1500(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/MediaPlayer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/media/MediaPlayer;->release()V

    .line 2837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;
    invoke-static/range {v17 .. v18}, Lcom/mediatek/FMRadio/FMRadioService;->access$1502(Lcom/mediatek/FMRadio/FMRadioService;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 2840
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 2841
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v17, "callback_flag"

    const/16 v18, 0xb

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$1400(Lcom/mediatek/FMRadio/FMRadioService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2847
    .end local v2           #bundle:Landroid/os/Bundle;
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 2848
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v17, "switch_anntenna_value"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 2857
    .local v16, value:I
    if-nez v16, :cond_3

    .line 2858
    const-string v17, "FmRx/Service"

    const-string v18, "FmServiceHandler.switch anntenna:0"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    const-string v17, "callback_flag"

    const/16 v18, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2861
    const-string v17, "key_is_switch_anntenna"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$1400(Lcom/mediatek/FMRadio/FMRadioService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2865
    :cond_3
    const-string v17, "callback_flag"

    const/16 v18, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2866
    const-string v17, "key_is_switch_anntenna"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$1400(Lcom/mediatek/FMRadio/FMRadioService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2876
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v16           #value:I
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 2877
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v17, "frequency"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v15

    .line 2878
    .local v15, tuneStation:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/mediatek/FMRadio/FMRadioService;->tuneStation(F)Z

    move-result v10

    .line 2880
    .local v10, isTune:Z
    if-nez v10, :cond_4

    .line 2881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static/range {v17 .. v17}, Lcom/mediatek/FMRadio/FMRadioService;->access$600(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeFrequency(I)F

    move-result v15

    .line 2883
    :cond_4
    new-instance v2, Landroid/os/Bundle;

    .end local v2           #bundle:Landroid/os/Bundle;
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 2884
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v17, "callback_flag"

    const/16 v18, 0xf

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2885
    const-string v17, "key_is_tune"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2886
    const-string v17, "key_tune_to_station"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v15}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2887
    const-string v17, "key_is_power_up"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v18, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static/range {v18 .. v18}, Lcom/mediatek/FMRadio/FMRadioService;->access$1300(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$1400(Lcom/mediatek/FMRadio/FMRadioService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2893
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v10           #isTune:Z
    .end local v15           #tuneStation:F
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 2894
    .restart local v2       #bundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSeeking:Z
    invoke-static/range {v17 .. v18}, Lcom/mediatek/FMRadio/FMRadioService;->access$1202(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 2895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    const-string v18, "frequency"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v18

    const-string v19, "option"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-virtual/range {v17 .. v19}, Lcom/mediatek/FMRadio/FMRadioService;->seekStation(FZ)F

    move-result v13

    .line 2896
    .local v13, seekStation:F
    const/4 v7, 0x0

    .line 2897
    .local v7, isSeekTune:Z
    invoke-static {v13}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeStation(F)I

    move-result v14

    .line 2898
    .local v14, station:I
    invoke-static {v14}, Lcom/mediatek/FMRadio/FMRadioUtils;->isValidStation(I)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 2899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/mediatek/FMRadio/FMRadioService;->tuneStation(F)Z

    move-result v7

    .line 2902
    :cond_5
    if-nez v7, :cond_6

    .line 2903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static/range {v17 .. v17}, Lcom/mediatek/FMRadio/FMRadioService;->access$600(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeFrequency(I)F

    move-result v13

    .line 2905
    :cond_6
    new-instance v2, Landroid/os/Bundle;

    .end local v2           #bundle:Landroid/os/Bundle;
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 2906
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v17, "callback_flag"

    const/16 v18, 0xf

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2907
    const-string v17, "key_is_tune"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2908
    const-string v17, "key_tune_to_station"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v13}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$1400(Lcom/mediatek/FMRadio/FMRadioService;Landroid/os/Bundle;)V

    .line 2910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSeeking:Z
    invoke-static/range {v17 .. v18}, Lcom/mediatek/FMRadio/FMRadioService;->access$1202(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    goto/16 :goto_0

    .line 2915
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v7           #isSeekTune:Z
    .end local v13           #seekStation:F
    .end local v14           #station:I
    :pswitch_7
    const/4 v3, 0x0

    .line 2916
    .local v3, channels:[I
    const/4 v11, 0x0

    .line 2917
    .local v11, result:[I
    const/4 v12, 0x0

    .line 2918
    .local v12, scanTuneStation:I
    const/4 v6, 0x1

    .line 2919
    .local v6, isScan:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsScanning:Z
    invoke-static/range {v17 .. v18}, Lcom/mediatek/FMRadio/FMRadioService;->access$1102(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 2920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    sget v18, Lcom/mediatek/FMRadio/FMRadioUtils;->DEFAULT_STATION_FLOAT:F

    invoke-virtual/range {v17 .. v18}, Lcom/mediatek/FMRadio/FMRadioService;->powerUpFM(F)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 2921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->startScan()[I
    invoke-static/range {v17 .. v17}, Lcom/mediatek/FMRadio/FMRadioService;->access$2400(Lcom/mediatek/FMRadio/FMRadioService;)[I

    move-result-object v3

    .line 2925
    :cond_7
    if-eqz v3, :cond_8

    const/16 v17, 0x0

    aget v17, v3, v17

    const/16 v18, -0x64

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 2926
    const-string v17, "FmRx/Service"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "user canceled scan:channels[0]="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget v19, v3, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2927
    const/4 v6, 0x0

    .line 2928
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v11, v0, [I

    .end local v11           #result:[I
    fill-array-data v11, :array_0

    .line 2937
    .restart local v11       #result:[I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/mediatek/FMRadio/FMRadioService;->setMute(Z)I

    .line 2938
    new-instance v2, Landroid/os/Bundle;

    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 2939
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v17, "callback_flag"

    const/16 v18, 0xd

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2940
    const-string v17, "key_tune_to_station"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2941
    const-string v17, "key_station_num"

    const/16 v18, 0x1

    aget v18, v11, v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2942
    const-string v17, "key_is_scan"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$1400(Lcom/mediatek/FMRadio/FMRadioService;Landroid/os/Bundle;)V

    .line 2944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsScanning:Z
    invoke-static/range {v17 .. v18}, Lcom/mediatek/FMRadio/FMRadioService;->access$1102(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    goto/16 :goto_0

    .line 2930
    .end local v2           #bundle:Landroid/os/Bundle;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->insertSearchedStation([I)[I
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$2500(Lcom/mediatek/FMRadio/FMRadioService;[I)[I

    move-result-object v11

    .line 2931
    const/16 v17, 0x0

    aget v12, v11, v17

    .line 2932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    invoke-static {v12}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeFrequency(I)F

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/mediatek/FMRadio/FMRadioService;->tuneStation(F)Z

    move-result v10

    .line 2933
    .restart local v10       #isTune:Z
    if-eqz v10, :cond_9

    :goto_2
    goto :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static/range {v17 .. v17}, Lcom/mediatek/FMRadio/FMRadioService;->access$600(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v12

    goto :goto_2

    .line 2949
    .end local v3           #channels:[I
    .end local v6           #isScan:Z
    .end local v10           #isTune:Z
    .end local v11           #result:[I
    .end local v12           #scanTuneStation:I
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 2950
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v17, "key_audiofocus_changed"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2951
    .local v4, focusState:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->updateAudioFocus(I)V
    invoke-static {v0, v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$2600(Lcom/mediatek/FMRadio/FMRadioService;I)V

    goto/16 :goto_0

    .line 2955
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v4           #focusState:I
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 2956
    .restart local v2       #bundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    const-string v18, "option"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/mediatek/FMRadio/FMRadioService;->setRDS(Z)I

    goto/16 :goto_0

    .line 2960
    .end local v2           #bundle:Landroid/os/Bundle;
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 2961
    .restart local v2       #bundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    const-string v18, "option"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setAudioChannel(Z)Z
    invoke-static/range {v17 .. v18}, Lcom/mediatek/FMRadio/FMRadioService;->access$2700(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    goto/16 :goto_0

    .line 2965
    .end local v2           #bundle:Landroid/os/Bundle;
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 2966
    .restart local v2       #bundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    const-string v18, "option"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/mediatek/FMRadio/FMRadioService;->setMute(Z)I

    goto/16 :goto_0

    .line 2970
    .end local v2           #bundle:Landroid/os/Bundle;
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/FMRadio/FMRadioService;->activeAF()I

    goto/16 :goto_0

    .line 2975
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->startRecording()V
    invoke-static/range {v17 .. v17}, Lcom/mediatek/FMRadio/FMRadioService;->access$2800(Lcom/mediatek/FMRadio/FMRadioService;)V

    goto/16 :goto_0

    .line 2979
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->stopRecording()Z
    invoke-static/range {v17 .. v17}, Lcom/mediatek/FMRadio/FMRadioService;->access$2900(Lcom/mediatek/FMRadio/FMRadioService;)Z

    goto/16 :goto_0

    .line 2983
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->startPlayback()Z
    invoke-static/range {v17 .. v17}, Lcom/mediatek/FMRadio/FMRadioService;->access$3000(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v8

    .line 2985
    .local v8, isStart:Z
    if-nez v8, :cond_0

    .line 2986
    new-instance v2, Landroid/os/Bundle;

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 2987
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v17, "callback_flag"

    const v18, 0x100110

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2988
    const-string v17, "key_recording_error_type"

    const/16 v18, 0x21

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$1400(Lcom/mediatek/FMRadio/FMRadioService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2994
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v8           #isStart:Z
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->stopPlayback()V
    invoke-static/range {v17 .. v17}, Lcom/mediatek/FMRadio/FMRadioService;->access$3100(Lcom/mediatek/FMRadio/FMRadioService;)V

    goto/16 :goto_0

    .line 2998
    :pswitch_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 2999
    .restart local v2       #bundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    const-string v18, "option"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setRecordingMode(Z)V
    invoke-static/range {v17 .. v18}, Lcom/mediatek/FMRadio/FMRadioService;->access$3200(Lcom/mediatek/FMRadio/FMRadioService;Z)V

    goto/16 :goto_0

    .line 3003
    .end local v2           #bundle:Landroid/os/Bundle;
    :pswitch_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 3004
    .restart local v2       #bundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v17, v0

    const-string v18, "name"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->saveRecording(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/mediatek/FMRadio/FMRadioService;->access$3300(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2814
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch

    .line 2928
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
