.class public Lcom/zte/heartyservice/power/BatteryInfoFragment;
.super Landroid/app/Fragment;
.source "BatteryInfoFragment.java"

# interfaces
.implements Lcom/zte/heartyservice/common/datatype/CommonListAdapter$ListViewCallBacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/power/BatteryInfoFragment$levelReceiver;,
        Lcom/zte/heartyservice/power/BatteryInfoFragment$ModeAdapter;
    }
.end annotation


# static fields
.field private static final BATTERY_LEVEL:I = 0x0

.field private static final tag:Ljava/lang/String; = "BatteryInfoFragment"


# instance fields
.field private BatteryLevel:I

.field private OptimizeButton:Landroid/widget/Button;

.field private adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

.field private baseMode:[Ljava/lang/Integer;

.field private batyListItem:Lcom/zte/heartyservice/power/BatyListItem;

.field private callTime:Landroid/widget/TextView;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private listInflator:Landroid/view/LayoutInflater;

.field private listItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Landroid/app/Activity;

.field private mBatteryIcon:Landroid/widget/ImageView;

.field private mBatteryValue:Landroid/widget/TextView;

.field private mChargingIcon:Landroid/widget/ImageView;

.field private mCurMode:Landroid/widget/TextView;

.field private mLeftChargingTime:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;

.field private mReceiver:Lcom/zte/heartyservice/power/BatteryInfoFragment$levelReceiver;

.field private mRootView:Landroid/view/View;

.field private mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;

.field private musicTime:Landroid/widget/TextView;

.field private netTime:Landroid/widget/TextView;

.field private sp:Landroid/content/SharedPreferences;

.field private standbyTime:Landroid/widget/TextView;

.field private tempLevel:I

.field private videoTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->tempLevel:I

    .line 82
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const v2, 0x7f0a0511

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0a0512

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f0a0513

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x7f0a0514

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->baseMode:[Ljava/lang/Integer;

    .line 452
    return-void
.end method

.method private UpdateBatteryIcon(I)V
    .locals 2
    .parameter "level"

    .prologue
    .line 514
    if-gez p1, :cond_1

    .line 515
    const/4 p1, 0x0

    .line 520
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mBatteryIcon:Landroid/widget/ImageView;

    mul-int/lit8 v1, p1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 521
    return-void

    .line 516
    :cond_1
    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    .line 517
    const/16 p1, 0x64

    goto :goto_0
.end method

.method private UpdateBatteryValue(I)V
    .locals 4
    .parameter "level"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mBatteryValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    return-void
.end method

.method private UpdateRemainingTime(I)V
    .locals 35
    .parameter "level"

    .prologue
    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mActivity:Landroid/app/Activity;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/power/RemainingTimeCalculate;

    move-result-object v3

    .line 531
    .local v3, calculator:Lcom/zte/heartyservice/power/RemainingTimeCalculate;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v29, v0

    const-string v30, "current_mode_id"

    const/16 v31, 0x4

    invoke-interface/range {v29 .. v31}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 533
    .local v15, mode:I
    invoke-virtual {v3, v15}, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->setPowerMode(I)V

    .line 545
    sget v29, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->OPERATION_CALL:I

    move/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->getOperationTime(II)D

    move-result-wide v19

    .line 546
    .local v19, time1:D
    move-wide/from16 v0, v19

    double-to-int v5, v0

    .line 547
    .local v5, hour1:I
    int-to-double v0, v5

    move-wide/from16 v29, v0

    sub-double v29, v19, v29

    const-wide/high16 v31, 0x404e

    mul-double v29, v29, v31

    move-wide/from16 v0, v29

    double-to-int v10, v0

    .line 548
    .local v10, minute1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->listItems:Ljava/util/List;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/zte/heartyservice/power/BatyListItem;

    const v30, 0x7f0a0154

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/zte/heartyservice/power/BatyListItem;->setComment(Ljava/lang/String;)V

    .line 553
    sget v29, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->OPERATION_MUSIC:I

    move/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->getOperationTime(II)D

    move-result-wide v21

    .line 554
    .local v21, time2:D
    move-wide/from16 v0, v21

    double-to-int v6, v0

    .line 556
    .local v6, hour2:I
    int-to-double v0, v6

    move-wide/from16 v29, v0

    sub-double v29, v21, v29

    const-wide/high16 v31, 0x404e

    mul-double v29, v29, v31

    move-wide/from16 v0, v29

    double-to-int v11, v0

    .line 557
    .local v11, minute2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->listItems:Ljava/util/List;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/zte/heartyservice/power/BatyListItem;

    const v30, 0x7f0a0154

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/zte/heartyservice/power/BatyListItem;->setComment(Ljava/lang/String;)V

    .line 563
    sget v29, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->OPERATION_VIDEO:I

    move/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->getOperationTime(II)D

    move-result-wide v23

    .line 564
    .local v23, time3:D
    move-wide/from16 v0, v23

    double-to-int v7, v0

    .line 566
    .local v7, hour3:I
    int-to-double v0, v7

    move-wide/from16 v29, v0

    sub-double v29, v23, v29

    const-wide/high16 v31, 0x404e

    mul-double v29, v29, v31

    move-wide/from16 v0, v29

    double-to-int v12, v0

    .line 567
    .local v12, minute3:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->listItems:Ljava/util/List;

    move-object/from16 v29, v0

    const/16 v30, 0x3

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/zte/heartyservice/power/BatyListItem;

    const v30, 0x7f0a0154

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/zte/heartyservice/power/BatyListItem;->setComment(Ljava/lang/String;)V

    .line 573
    sget v29, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->OPERATION_INTERNET:I

    move/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->getOperationTime(II)D

    move-result-wide v25

    .line 574
    .local v25, time4:D
    move-wide/from16 v0, v25

    double-to-int v8, v0

    .line 576
    .local v8, hour4:I
    int-to-double v0, v8

    move-wide/from16 v29, v0

    sub-double v29, v25, v29

    const-wide/high16 v31, 0x404e

    mul-double v29, v29, v31

    move-wide/from16 v0, v29

    double-to-int v13, v0

    .line 577
    .local v13, minute4:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->listItems:Ljava/util/List;

    move-object/from16 v29, v0

    const/16 v30, 0x2

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/zte/heartyservice/power/BatyListItem;

    const v30, 0x7f0a0154

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/zte/heartyservice/power/BatyListItem;->setComment(Ljava/lang/String;)V

    .line 583
    sget v29, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->OPERATION_IDLE:I

    move/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->getOperationTime(II)D

    move-result-wide v27

    .line 584
    .local v27, time5:D
    move-wide/from16 v0, v27

    double-to-int v9, v0

    .line 586
    .local v9, hour5:I
    int-to-double v0, v9

    move-wide/from16 v29, v0

    sub-double v29, v27, v29

    const-wide/high16 v31, 0x404e

    mul-double v29, v29, v31

    move-wide/from16 v0, v29

    double-to-int v14, v0

    .line 587
    .local v14, minute5:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->listItems:Ljava/util/List;

    move-object/from16 v29, v0

    const/16 v30, 0x4

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/zte/heartyservice/power/BatyListItem;

    const v30, 0x7f0a0154

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/zte/heartyservice/power/BatyListItem;->setComment(Ljava/lang/String;)V

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->listItems:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->setItems(Ljava/util/List;)V

    .line 598
    invoke-static {}, Lcom/zte/heartyservice/power/SmartPowerManager;->isEnable()Z

    move-result v29

    if-eqz v29, :cond_1

    .line 599
    invoke-static {}, Lcom/zte/heartyservice/power/SmartPowerManager;->getSavingPercent()I

    move-result v16

    .line 600
    .local v16, percent:I
    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->getRemainingTime(I)D

    move-result-wide v29

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v31, v0

    mul-double v29, v29, v31

    const-wide/high16 v31, 0x4059

    div-double v17, v29, v31

    .line 601
    .local v17, time:D
    const/4 v4, 0x0

    .line 602
    .local v4, extendTime:Ljava/lang/String;
    const-wide/16 v29, 0x0

    cmpg-double v29, v17, v29

    if-gez v29, :cond_0

    .line 603
    const-wide/16 v17, 0x0

    .line 605
    :cond_0
    const-wide/high16 v29, 0x3ff0

    cmpl-double v29, v17, v29

    if-ltz v29, :cond_2

    .line 606
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const v30, 0x7f0a051b

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 610
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mRootView:Landroid/view/View;

    move-object/from16 v29, v0

    const/16 v30, -0x1

    const v31, 0x7f0a0529

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x1

    aput-object v4, v32, v33

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v29 .. v31}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->setModeDetail(Landroid/view/View;ILjava/lang/String;)V

    .line 616
    .end local v4           #extendTime:Ljava/lang/String;
    .end local v16           #percent:I
    .end local v17           #time:D
    :cond_1
    return-void

    .line 608
    .restart local v4       #extendTime:Ljava/lang/String;
    .restart local v16       #percent:I
    .restart local v17       #time:D
    :cond_2
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/high16 v30, 0x404e

    mul-double v30, v30, v17

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const v30, 0x7f0a051c

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/power/BatteryInfoFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->showSmartBatteryDialog()V

    return-void
.end method

.method static synthetic access$1000(Lcom/zte/heartyservice/power/BatteryInfoFragment;)[Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->baseMode:[Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/zte/heartyservice/power/BatteryInfoFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mChargingIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/zte/heartyservice/power/BatteryInfoFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mLeftChargingTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/zte/heartyservice/power/BatteryInfoFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mBatteryValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/zte/heartyservice/power/BatteryInfoFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->UpdateBatteryIcon(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/zte/heartyservice/power/BatteryInfoFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->UpdateBatteryValue(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/power/BatteryInfoFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->showModeChooseDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/power/BatteryInfoFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mCurMode:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/power/BatteryInfoFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->tempLevel:I

    return v0
.end method

.method static synthetic access$402(Lcom/zte/heartyservice/power/BatteryInfoFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->tempLevel:I

    return p1
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/power/BatteryInfoFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->UpdateRemainingTime(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/power/BatteryInfoFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/power/BatteryInfoFragment;)Lcom/zte/heartyservice/power/SwitchTools;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;

    return-object v0
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/power/BatteryInfoFragment;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zte/heartyservice/power/BatteryInfoFragment;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method private initBatyListItem()V
    .locals 5

    .prologue
    .line 435
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->listItems:Ljava/util/List;

    new-instance v1, Lcom/zte/heartyservice/power/BatyListItem;

    const v2, 0x7f0a014f

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020273

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/zte/heartyservice/power/BatyListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->listItems:Ljava/util/List;

    new-instance v1, Lcom/zte/heartyservice/power/BatyListItem;

    const v2, 0x7f0a0150

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02011a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/zte/heartyservice/power/BatyListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->listItems:Ljava/util/List;

    new-instance v1, Lcom/zte/heartyservice/power/BatyListItem;

    const v2, 0x7f0a0151

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200df

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/zte/heartyservice/power/BatyListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->listItems:Ljava/util/List;

    new-instance v1, Lcom/zte/heartyservice/power/BatyListItem;

    const v2, 0x7f0a0152

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020141

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/zte/heartyservice/power/BatyListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->listItems:Ljava/util/List;

    new-instance v1, Lcom/zte/heartyservice/power/BatyListItem;

    const v2, 0x7f0a0153

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020137

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/zte/heartyservice/power/BatyListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    return-void
.end method

.method public static setModeDetail(Landroid/view/View;ILjava/lang/String;)V
    .locals 11
    .parameter "view"
    .parameter "position"
    .parameter "custom"

    .prologue
    const v10, 0x7f0a050b

    const v6, 0x7f0a0510

    const v9, 0x7f0a050f

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 146
    const v5, 0x7f0e02da

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 148
    .local v4, enableTextView:Landroid/widget/TextView;
    const v5, 0x7f0e02db

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 150
    .local v3, enableDetailTextView:Landroid/widget/TextView;
    const v5, 0x7f0e02dc

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 152
    .local v2, disableTextView:Landroid/widget/TextView;
    const v5, 0x7f0e02dd

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 155
    .local v1, disableDetailTextView:Landroid/widget/TextView;
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    .line 161
    .local v0, context:Landroid/content/Context;
    packed-switch p1, :pswitch_data_0

    .line 202
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 163
    :pswitch_0
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(I)V

    .line 165
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    const v5, 0x7f0a050c

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 170
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    const v5, 0x7f0a050e

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 175
    :pswitch_1
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(I)V

    .line 177
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 184
    :pswitch_2
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    const v5, 0x7f0a050d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 186
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    const v5, 0x7f0a050c

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 189
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0a050e

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 195
    :pswitch_3
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    const v5, 0x7f0a01bb

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 198
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showModeChooseDialog()V
    .locals 8

    .prologue
    .line 371
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a04de

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0174

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v0, Lcom/zte/heartyservice/power/BatteryInfoFragment$ModeAdapter;

    invoke-virtual {p0}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f030035

    const v4, 0x7f0e00ae

    invoke-virtual {p0}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f070048

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/zte/heartyservice/power/BatteryInfoFragment$ModeAdapter;-><init>(Lcom/zte/heartyservice/power/BatteryInfoFragment;Landroid/content/Context;II[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->sp:Landroid/content/SharedPreferences;

    const-string v2, "radio_position"

    const/4 v3, 0x3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Lcom/zte/heartyservice/power/BatteryInfoFragment$3;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/power/BatteryInfoFragment$3;-><init>(Lcom/zte/heartyservice/power/BatteryInfoFragment;)V

    invoke-virtual {v7, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    .line 431
    .local v6, dialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 432
    return-void
.end method

.method private showSmartBatteryDialog()V
    .locals 5

    .prologue
    .line 338
    invoke-static {}, Lcom/zte/heartyservice/power/SmartPowerManager;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    const v1, 0x7f0a052b

    .line 344
    .local v1, positiveRes:I
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0525

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0526

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0174

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/zte/heartyservice/power/BatteryInfoFragment$2;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/power/BatteryInfoFragment$2;-><init>(Lcom/zte/heartyservice/power/BatteryInfoFragment;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 367
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 368
    return-void

    .line 341
    .end local v0           #dialog:Landroid/app/AlertDialog;
    .end local v1           #positiveRes:I
    :cond_0
    const v1, 0x7f0a052a

    .restart local v1       #positiveRes:I
    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 92
    iput-object p1, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mActivity:Landroid/app/Activity;

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, localIntentFilter:Landroid/content/IntentFilter;
    new-instance v1, Lcom/zte/heartyservice/power/BatteryInfoFragment$levelReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zte/heartyservice/power/BatteryInfoFragment$levelReceiver;-><init>(Lcom/zte/heartyservice/power/BatteryInfoFragment;Lcom/zte/heartyservice/power/BatteryInfoFragment$1;)V

    iput-object v1, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mReceiver:Lcom/zte/heartyservice/power/BatteryInfoFragment$levelReceiver;

    .line 95
    iget-object v1, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mReceiver:Lcom/zte/heartyservice/power/BatteryInfoFragment$levelReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    new-instance v1, Lcom/zte/heartyservice/power/SwitchTools;

    invoke-direct {v1, p1}, Lcom/zte/heartyservice/power/SwitchTools;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;

    .line 99
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 217
    const-string v0, "BatteryInfoFragment"

    const-string v1, "onCreateView Enter..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "powermanager"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->sp:Landroid/content/SharedPreferences;

    .line 219
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->editor:Landroid/content/SharedPreferences$Editor;

    .line 220
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->sp:Landroid/content/SharedPreferences;

    const-string v1, "battery_level"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->BatteryLevel:I

    .line 221
    const-string v0, "BatteryInfoFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateView Enter: Battery Level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->BatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const v0, 0x7f03001b

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mRootView:Landroid/view/View;

    .line 224
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0e0061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mBatteryIcon:Landroid/widget/ImageView;

    .line 225
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0e0062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mChargingIcon:Landroid/widget/ImageView;

    .line 226
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0e0063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mBatteryValue:Landroid/widget/TextView;

    .line 227
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0e0065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mLeftChargingTime:Landroid/widget/TextView;

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->listItems:Ljava/util/List;

    .line 231
    iput-object p1, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->listInflator:Landroid/view/LayoutInflater;

    .line 232
    invoke-direct {p0}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->initBatyListItem()V

    .line 233
    new-instance v0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-direct {v0, v3}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    .line 234
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v0, p0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->setListViewCallBacks(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$ListViewCallBacks;)V

    .line 235
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0e0067

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mListView:Landroid/widget/ListView;

    .line 236
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 253
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0e0066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mCurMode:Landroid/widget/TextView;

    .line 254
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mCurMode:Landroid/widget/TextView;

    new-instance v1, Lcom/zte/heartyservice/power/BatteryInfoFragment$1;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/power/BatteryInfoFragment$1;-><init>(Lcom/zte/heartyservice/power/BatteryInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 620
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 621
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mReceiver:Lcom/zte/heartyservice/power/BatteryInfoFragment$levelReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 622
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 104
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 105
    const-string v1, "BatteryInfoFragment"

    const-string v2, "onResume Enter..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v1, "BatteryInfoFragment"

    const-string v2, "bp1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {}, Lcom/zte/heartyservice/power/SmartPowerManager;->getSmartBatteryManagerVersion()I

    move-result v1

    if-lez v1, :cond_2

    .line 128
    invoke-static {}, Lcom/zte/heartyservice/power/SmartPowerManager;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mCurMode:Landroid/widget/TextView;

    const v2, 0x7f0a0527

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 140
    :goto_0
    iget v1, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->tempLevel:I

    if-ltz v1, :cond_0

    .line 141
    iget v1, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->tempLevel:I

    invoke-direct {p0, v1}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->UpdateRemainingTime(I)V

    .line 143
    :cond_0
    return-void

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mCurMode:Landroid/widget/TextView;

    const v2, 0x7f0a0528

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 132
    iget-object v1, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mRootView:Landroid/view/View;

    const/4 v2, -0x1

    invoke-static {v1, v2, v4}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->setModeDetail(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_2
    iget-object v1, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->sp:Landroid/content/SharedPreferences;

    const-string v2, "radio_position"

    const/4 v3, 0x3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 136
    .local v0, spinnerPosition:I
    iget-object v1, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mCurMode:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->baseMode:[Ljava/lang/Integer;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 137
    iget-object v1, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->mRootView:Landroid/view/View;

    invoke-static {v1, v0, v4}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->setModeDetail(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setDivider(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3
    .parameter "inflater"

    .prologue
    .line 448
    const v1, 0x7f0300e9

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 449
    .local v0, ScrollItemView:Landroid/view/View;
    return-object v0
.end method

.method public updateViewInfo(Lcom/zte/heartyservice/common/datatype/CommonListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "listItem"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 626
    check-cast p1, Lcom/zte/heartyservice/power/BatyListItem;

    .end local p1
    iput-object p1, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->batyListItem:Lcom/zte/heartyservice/power/BatyListItem;

    .line 627
    if-nez p3, :cond_0

    .line 628
    iget-object v3, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->listInflator:Landroid/view/LayoutInflater;

    const v4, 0x7f03001a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 630
    :cond_0
    const v3, 0x7f0e005e

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 631
    .local v2, itemName:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->batyListItem:Lcom/zte/heartyservice/power/BatyListItem;

    invoke-virtual {v3}, Lcom/zte/heartyservice/power/BatyListItem;->getRefName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    const v3, 0x7f0e005f

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 633
    .local v1, itemComment:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->batyListItem:Lcom/zte/heartyservice/power/BatyListItem;

    invoke-virtual {v3}, Lcom/zte/heartyservice/power/BatyListItem;->getComment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    const v3, 0x7f0e005d

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 635
    .local v0, imageView:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment;->batyListItem:Lcom/zte/heartyservice/power/BatyListItem;

    invoke-virtual {v3}, Lcom/zte/heartyservice/power/BatyListItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 636
    return-object p3
.end method
