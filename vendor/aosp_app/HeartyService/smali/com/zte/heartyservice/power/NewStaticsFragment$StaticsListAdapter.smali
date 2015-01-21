.class public Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "NewStaticsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/power/NewStaticsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StaticsListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/power/NewStaticsFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 952
    iput-object p1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 945
    const-string v0, "StaticsListAdapter"

    iput-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->tag:Ljava/lang/String;

    .line 955
    invoke-direct {p0}, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->handleAndSortUsageList()V

    .line 956
    return-void
.end method

.method private getAppState(Lcom/zte/heartyservice/power/BatterySipper;)I
    .locals 6
    .parameter "sipper"

    .prologue
    const v2, 0x7f0a0397

    .line 1045
    const-string v3, "StaticsListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "liuji debug getAppState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/zte/heartyservice/power/BatterySipper;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    iget-object v3, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->mRunningAppList:Ljava/util/List;
    invoke-static {v3}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$1600(Lcom/zte/heartyservice/power/NewStaticsFragment;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/zte/heartyservice/power/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-nez v3, :cond_1

    .line 1055
    :cond_0
    :goto_0
    return v2

    .line 1050
    :cond_1
    iget-object v3, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->mRunningAppList:Ljava/util/List;
    invoke-static {v3}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$1600(Lcom/zte/heartyservice/power/NewStaticsFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1051
    .local v1, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v3, p1, Lcom/zte/heartyservice/power/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    iget v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v3, v4, :cond_2

    .line 1052
    const v2, 0x7f0a0398

    goto :goto_0
.end method

.method private handleAndSortUsageList()V
    .locals 11

    .prologue
    .line 1059
    const-string v6, "StaticsListAdapter"

    const-string v7, "handleAndSortUsageList Enter"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const-string v6, "StaticsListAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mUsageList.size() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->mUsageList:Ljava/util/List;
    invoke-static {v8}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$1700(Lcom/zte/heartyservice/power/NewStaticsFragment;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v6, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->mUsageList:Ljava/util/List;
    invoke-static {v6}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$1700(Lcom/zte/heartyservice/power/NewStaticsFragment;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 1068
    const-string v6, "StaticsListAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sort UsageList Loop = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    iget-object v6, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->mUsageList:Ljava/util/List;
    invoke-static {v6}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$1700(Lcom/zte/heartyservice/power/NewStaticsFragment;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zte/heartyservice/power/BatterySipper;

    .line 1070
    .local v5, sipper:Lcom/zte/heartyservice/power/BatterySipper;
    invoke-virtual {v5}, Lcom/zte/heartyservice/power/BatterySipper;->getSortValue()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_1

    .line 1071
    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/zte/heartyservice/power/BatterySipper;->percent:D

    .line 1067
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1080
    :cond_1
    invoke-virtual {v5}, Lcom/zte/heartyservice/power/BatterySipper;->getSortValue()D

    move-result-wide v6

    iget-object v8, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->mTotalPower:D
    invoke-static {v8}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$1800(Lcom/zte/heartyservice/power/NewStaticsFragment;)D

    move-result-wide v8

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x4059

    mul-double v3, v6, v8

    .line 1081
    .local v3, percentOfTotal:D
    const-string v6, "StaticsListAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "percentage of total = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/zte/heartyservice/power/BatterySipper;->getSortValue()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; total power = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->mTotalPower:D
    invoke-static {v8}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$1800(Lcom/zte/heartyservice/power/NewStaticsFragment;)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    const-string v6, "StaticsListAdapter"

    const-string v7, "before add"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    invoke-virtual {v5}, Lcom/zte/heartyservice/power/BatterySipper;->getSortValue()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059

    mul-double/2addr v6, v8

    iget-object v8, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->mMaxPower:D
    invoke-static {v8}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$1900(Lcom/zte/heartyservice/power/NewStaticsFragment;)D

    move-result-wide v8

    div-double v1, v6, v8

    .line 1090
    .local v1, percentOfMax:D
    iput-wide v3, v5, Lcom/zte/heartyservice/power/BatterySipper;->percent:D

    .line 1099
    iget-wide v6, v5, Lcom/zte/heartyservice/power/BatterySipper;->percent:D

    const-wide v8, 0x3fc99999a0000000L

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_0

    .line 1100
    iget-object v6, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->mListToBeDisplay:Ljava/util/List;
    invoke-static {v6}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$800(Lcom/zte/heartyservice/power/NewStaticsFragment;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1106
    .end local v1           #percentOfMax:D
    .end local v3           #percentOfTotal:D
    .end local v5           #sipper:Lcom/zte/heartyservice/power/BatterySipper;
    :cond_2
    iget-object v6, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->mListToBeDisplay:Ljava/util/List;
    invoke-static {v6}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$800(Lcom/zte/heartyservice/power/NewStaticsFragment;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1107
    iget-object v6, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->mListToBeDisplay:Ljava/util/List;
    invoke-static {v6}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$800(Lcom/zte/heartyservice/power/NewStaticsFragment;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$1;

    invoke-direct {v7, p0}, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$1;-><init>(Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1124
    :cond_3
    iget-object v6, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->mListToBeDisplay:Ljava/util/List;
    invoke-static {v6}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$800(Lcom/zte/heartyservice/power/NewStaticsFragment;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    :goto_2
    const/16 v6, 0xa

    if-lt v0, v6, :cond_4

    .line 1125
    iget-object v6, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->mListToBeDisplay:Ljava/util/List;
    invoke-static {v6}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$800(Lcom/zte/heartyservice/power/NewStaticsFragment;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1124
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1181
    :cond_4
    iget-object v6, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->SelectedPosition:I
    invoke-static {v6}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$000(Lcom/zte/heartyservice/power/NewStaticsFragment;)I

    move-result v6

    if-nez v6, :cond_8

    .line 1182
    iget-object v6, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->mListTitle:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$2000(Lcom/zte/heartyservice/power/NewStaticsFragment;)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f0a0521

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1183
    invoke-static {}, Lcom/zte/heartyservice/power/SmartPowerManager;->isEnable()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1184
    iget-object v6, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->mAbnormalApps:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$2100(Lcom/zte/heartyservice/power/NewStaticsFragment;)Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1185
    invoke-static {}, Lcom/zte/heartyservice/power/SmartPowerManager;->getNewAbnormalPkgNum()I

    move-result v6

    if-lez v6, :cond_6

    .line 1186
    iget-object v6, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->mAbnormalApps:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$2100(Lcom/zte/heartyservice/power/NewStaticsFragment;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    invoke-virtual {v7}, Lcom/zte/heartyservice/power/NewStaticsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08006a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1187
    iget-object v6, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->mAbnormalApps:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$2100(Lcom/zte/heartyservice/power/NewStaticsFragment;)Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7f0202d3

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1200
    :cond_5
    :goto_3
    return-void

    .line 1189
    :cond_6
    iget-object v6, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->mAbnormalApps:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$2100(Lcom/zte/heartyservice/power/NewStaticsFragment;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    invoke-virtual {v7}, Lcom/zte/heartyservice/power/NewStaticsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080079

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1190
    iget-object v6, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->mAbnormalApps:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$2100(Lcom/zte/heartyservice/power/NewStaticsFragment;)Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7f0202cf

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_3

    .line 1193
    :cond_7
    iget-object v6, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->mAbnormalApps:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$2100(Lcom/zte/heartyservice/power/NewStaticsFragment;)Landroid/widget/TextView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1195
    :cond_8
    iget-object v6, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->SelectedPosition:I
    invoke-static {v6}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$000(Lcom/zte/heartyservice/power/NewStaticsFragment;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 1196
    iget-object v6, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->mListTitle:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$2000(Lcom/zte/heartyservice/power/NewStaticsFragment;)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f0a0522

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1197
    iget-object v6, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->mAbnormalApps:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$2100(Lcom/zte/heartyservice/power/NewStaticsFragment;)Landroid/widget/TextView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 962
    const-string v0, "StaticsListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCount return size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->mListToBeDisplay:Ljava/util/List;
    invoke-static {v2}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$800(Lcom/zte/heartyservice/power/NewStaticsFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->mListToBeDisplay:Ljava/util/List;
    invoke-static {v0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$800(Lcom/zte/heartyservice/power/NewStaticsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 969
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->mListToBeDisplay:Ljava/util/List;
    invoke-static {v0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$800(Lcom/zte/heartyservice/power/NewStaticsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 975
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter "position"
    .parameter "convertView"
    .parameter "arg2"

    .prologue
    .line 981
    const/4 v2, 0x0

    .line 982
    .local v2, result:Landroid/view/View;
    const/4 v4, 0x0

    .line 983
    .local v4, staticsHolder:Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;
    if-nez p2, :cond_0

    .line 984
    iget-object v5, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v5}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$900(Lcom/zte/heartyservice/power/NewStaticsFragment;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0300a1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 985
    new-instance v4, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;

    .end local v4           #staticsHolder:Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;
    invoke-direct {v4, p0, v2}, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;-><init>(Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;Landroid/view/View;)V

    .line 986
    .restart local v4       #staticsHolder:Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;
    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 992
    :goto_0
    iget-object v5, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->mListToBeDisplay:Ljava/util/List;
    invoke-static {v5}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$800(Lcom/zte/heartyservice/power/NewStaticsFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/power/BatterySipper;

    .line 995
    .local v3, sipper:Lcom/zte/heartyservice/power/BatterySipper;
    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;->icon:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;->access$1000(Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;)Landroid/widget/ImageView;

    move-result-object v5

    iget-object v6, v3, Lcom/zte/heartyservice/power/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1005
    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;->title:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;->access$1100(Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, v3, Lcom/zte/heartyservice/power/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1009
    iget-wide v5, v3, Lcom/zte/heartyservice/power/BatterySipper;->percent:D

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v0, v5

    .line 1010
    .local v0, mProgress:I
    const-string v5, "StaticsListAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "percentof MAX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; percentof TOTAL = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v3, Lcom/zte/heartyservice/power/BatterySipper;->percent:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    const-string v5, "StaticsListAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mProgress = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget-object v5, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    invoke-virtual {v5}, Lcom/zte/heartyservice/power/NewStaticsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0177

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    iget-wide v10, v3, Lcom/zte/heartyservice/power/BatterySipper;->percent:D

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Lcom/zte/heartyservice/power/NewStaticsFragment;->MathNoRound(DI)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1018
    .local v1, mProgressText:Ljava/lang/String;
    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;->progressbar:Landroid/widget/ProgressBar;
    invoke-static {v4}, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;->access$1200(Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1019
    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;->percent:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;->access$1300(Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1021
    iget-object v5, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->mListType:I
    invoke-static {v5}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$1400(Lcom/zte/heartyservice/power/NewStaticsFragment;)I

    move-result v5

    if-nez v5, :cond_1

    .line 1022
    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;->state:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;->access$1500(Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1023
    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;->state:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;->access$1500(Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-direct {p0, v3}, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->getAppState(Lcom/zte/heartyservice/power/BatterySipper;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1041
    :goto_1
    return-object v2

    .line 988
    .end local v0           #mProgress:I
    .end local v1           #mProgressText:Ljava/lang/String;
    .end local v3           #sipper:Lcom/zte/heartyservice/power/BatterySipper;
    :cond_0
    move-object v2, p2

    .line 989
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #staticsHolder:Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;
    check-cast v4, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;

    .restart local v4       #staticsHolder:Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;
    goto/16 :goto_0

    .line 1025
    .restart local v0       #mProgress:I
    .restart local v1       #mProgressText:Ljava/lang/String;
    .restart local v3       #sipper:Lcom/zte/heartyservice/power/BatterySipper;
    :cond_1
    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;->state:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;->access$1500(Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;)Landroid/widget/TextView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
