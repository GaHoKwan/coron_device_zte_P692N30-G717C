.class public Lcom/zte/heartyservice/net/NetSettingListener;
.super Ljava/lang/Object;
.source "NetSettingListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "NetSettingListener"


# instance fields
.field private mContext:Lcom/zte/heartyservice/net/NetSettingActivity;

.field private netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/net/NetSettingActivity;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/zte/heartyservice/net/NetSettingListener;->mContext:Lcom/zte/heartyservice/net/NetSettingActivity;

    .line 101
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetSettingListener;->mContext:Lcom/zte/heartyservice/net/NetSettingActivity;

    invoke-static {v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetSettingListener;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/net/NetSettingListener;)Lcom/zte/heartyservice/net/NetSettingActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetSettingListener;->mContext:Lcom/zte/heartyservice/net/NetSettingActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/net/NetSettingListener;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetSettingListener;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    .line 107
    .local v4, viewId:I
    packed-switch v4, :pswitch_data_0

    .line 301
    :goto_0
    :pswitch_0
    return-void

    .line 110
    :pswitch_1
    new-instance v2, Lcom/zte/heartyservice/net/NetSettingListener$1;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/net/NetSettingListener$1;-><init>(Lcom/zte/heartyservice/net/NetSettingListener;)V

    .line 151
    .local v2, listener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v5, p0, Lcom/zte/heartyservice/net/NetSettingListener;->mContext:Lcom/zte/heartyservice/net/NetSettingActivity;

    iget-object v6, p0, Lcom/zte/heartyservice/net/NetSettingListener;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v6}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getMonthThreshold()I

    move-result v6

    invoke-static {v5, v8, v2, v6}, Lcom/zte/heartyservice/common/utils/AppUtils;->realShowNetSetDialog(Landroid/app/Activity;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;I)Landroid/app/Dialog;

    goto :goto_0

    .line 158
    .end local v2           #listener:Landroid/content/DialogInterface$OnClickListener;
    :pswitch_2
    new-instance v2, Lcom/zte/heartyservice/net/NetSettingListener$2;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/net/NetSettingListener$2;-><init>(Lcom/zte/heartyservice/net/NetSettingListener;)V

    .line 185
    .restart local v2       #listener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v5, p0, Lcom/zte/heartyservice/net/NetSettingListener;->mContext:Lcom/zte/heartyservice/net/NetSettingActivity;

    iget-object v6, p0, Lcom/zte/heartyservice/net/NetSettingListener;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v6}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getMonthFlowWarnPct()I

    move-result v6

    const/16 v7, 0x63

    invoke-static {v5, v8, v2, v6, v7}, Lcom/zte/heartyservice/common/utils/AppUtils;->realShowNetSetDialog2(Landroid/app/Activity;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;II)Landroid/app/Dialog;

    goto :goto_0

    .line 193
    .end local v2           #listener:Landroid/content/DialogInterface$OnClickListener;
    :pswitch_3
    new-instance v2, Lcom/zte/heartyservice/net/NetSettingListener$3;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/net/NetSettingListener$3;-><init>(Lcom/zte/heartyservice/net/NetSettingListener;)V

    .line 218
    .restart local v2       #listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 219
    .local v0, args:Landroid/os/Bundle;
    const-string v5, "title"

    const v6, 0x7f0a00f8

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    const-string v5, "msg"

    const v6, 0x7f0a00f9

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    iget-object v5, p0, Lcom/zte/heartyservice/net/NetSettingListener;->mContext:Lcom/zte/heartyservice/net/NetSettingActivity;

    iget-object v6, p0, Lcom/zte/heartyservice/net/NetSettingListener;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v6}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getCalcDay()I

    move-result v6

    const/16 v7, 0x1f

    invoke-static {v5, v0, v2, v6, v7}, Lcom/zte/heartyservice/common/utils/AppUtils;->realShowNetSetDialog2(Landroid/app/Activity;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;II)Landroid/app/Dialog;

    goto :goto_0

    .line 228
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #listener:Landroid/content/DialogInterface$OnClickListener;
    :pswitch_4
    new-instance v2, Lcom/zte/heartyservice/net/NetSettingListener$4;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/net/NetSettingListener$4;-><init>(Lcom/zte/heartyservice/net/NetSettingListener;)V

    .line 267
    .restart local v2       #listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 268
    .restart local v0       #args:Landroid/os/Bundle;
    const-string v5, "title"

    const v6, 0x7f0a00f3

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    const-string v5, "msg"

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 270
    iget-object v5, p0, Lcom/zte/heartyservice/net/NetSettingListener;->mContext:Lcom/zte/heartyservice/net/NetSettingActivity;

    iget-object v6, p0, Lcom/zte/heartyservice/net/NetSettingListener;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v6}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getDayThreshold()I

    move-result v6

    invoke-static {v5, v0, v2, v6}, Lcom/zte/heartyservice/common/utils/AppUtils;->realShowNetSetDialog(Landroid/app/Activity;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;I)Landroid/app/Dialog;

    goto :goto_0

    .line 277
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #listener:Landroid/content/DialogInterface$OnClickListener;
    :pswitch_5
    iget-object v5, p0, Lcom/zte/heartyservice/net/NetSettingListener;->mContext:Lcom/zte/heartyservice/net/NetSettingActivity;

    invoke-static {v5, v8}, Lcom/zte/heartyservice/common/utils/AppUtils;->showAdjDialog(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 281
    :pswitch_6
    iget-object v5, p0, Lcom/zte/heartyservice/net/NetSettingListener;->mContext:Lcom/zte/heartyservice/net/NetSettingActivity;

    const v6, 0x7f0e01e2

    invoke-virtual {v5, v6}, Lcom/zte/heartyservice/net/NetSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/common/datatype/ZTESwitch;

    .line 282
    .local v3, monthWarnSwitchIcon:Lcom/zte/heartyservice/common/datatype/ZTESwitch;
    invoke-virtual {v3}, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 283
    iget-object v5, p0, Lcom/zte/heartyservice/net/NetSettingListener;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v5, v9}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setMonWarnOpen(Z)V

    goto/16 :goto_0

    .line 285
    :cond_0
    iget-object v5, p0, Lcom/zte/heartyservice/net/NetSettingListener;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v5, v7}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setMonWarnOpen(Z)V

    goto/16 :goto_0

    .line 290
    .end local v3           #monthWarnSwitchIcon:Lcom/zte/heartyservice/common/datatype/ZTESwitch;
    :pswitch_7
    iget-object v5, p0, Lcom/zte/heartyservice/net/NetSettingListener;->mContext:Lcom/zte/heartyservice/net/NetSettingActivity;

    const v6, 0x7f0e01e9

    invoke-virtual {v5, v6}, Lcom/zte/heartyservice/net/NetSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/common/datatype/ZTESwitch;

    .line 291
    .local v1, dayWarnSwitchIcon:Lcom/zte/heartyservice/common/datatype/ZTESwitch;
    invoke-virtual {v1}, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 292
    iget-object v5, p0, Lcom/zte/heartyservice/net/NetSettingListener;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v5, v9}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setDayWarnOpen(Z)V

    goto/16 :goto_0

    .line 294
    :cond_1
    iget-object v5, p0, Lcom/zte/heartyservice/net/NetSettingListener;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v5, v7}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setDayWarnOpen(Z)V

    goto/16 :goto_0

    .line 298
    .end local v1           #dayWarnSwitchIcon:Lcom/zte/heartyservice/common/datatype/ZTESwitch;
    :pswitch_8
    iget-object v5, p0, Lcom/zte/heartyservice/net/NetSettingListener;->mContext:Lcom/zte/heartyservice/net/NetSettingActivity;

    invoke-static {v5, v7}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->startSelf(Landroid/app/Activity;Z)V

    goto/16 :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e01db
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
