.class public Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;
.super Landroid/app/Activity;
.source "CdsNatvieNetworkSrvActivity.java"


# static fields
.field private static final ERROR_STRING:Ljava/lang/String; = "Command Error"

.field private static final IF_CONFIG_CMD:Ljava/lang/String; = "ip link"

.field private static final IP_ROUTE_CMD:Ljava/lang/String; = "ip -4 route show"

.field private static final MSG_UPDATE_UI:I = 0x3001

.field private static final NET_CFG_CMD:Ljava/lang/String; = "netcfg"

.field private static final NET_STAT_CMD:Ljava/lang/String; = "netstat"

.field private static final TAG:Ljava/lang/String; = "CdsNatvieNetworkSrvActivity"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIpRoute:Landroid/widget/TextView;

.field private mNetStat:Landroid/widget/TextView;

.field private mNetworkConfig:Landroid/widget/TextView;

.field private mNetworkList:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 163
    new-instance v0, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity$2;

    invoke-direct {v0, p0}, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity$2;-><init>(Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;)V

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;->updateInfo(ILjava/lang/String;)V

    return-void
.end method

.method private executeShellCmd(Ljava/lang/String;I)V
    .locals 1
    .parameter "cmdStr"
    .parameter "id"

    .prologue
    .line 140
    new-instance v0, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity$1;-><init>(Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 159
    return-void
.end method

.method private updateFrameworkSrvInfo()V
    .locals 3

    .prologue
    .line 110
    :try_start_0
    const-string v1, "netcfg"

    const v2, 0x7f07001e

    invoke-direct {p0, v1, v2}, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;->executeShellCmd(Ljava/lang/String;I)V

    .line 111
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;->mNetworkList:Landroid/widget/TextView;

    const v2, 0x7f050046

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 113
    const-string v1, "ip link"

    const v2, 0x7f07001f

    invoke-direct {p0, v1, v2}, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;->executeShellCmd(Ljava/lang/String;I)V

    .line 114
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;->mNetworkConfig:Landroid/widget/TextView;

    const v2, 0x7f050046

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 116
    const-string v1, "ip -4 route show"

    const v2, 0x7f070020

    invoke-direct {p0, v1, v2}, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;->executeShellCmd(Ljava/lang/String;I)V

    .line 117
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;->mIpRoute:Landroid/widget/TextView;

    const v2, 0x7f050046

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 122
    const-string v1, "netstat"

    const v2, 0x7f070021

    invoke-direct {p0, v1, v2}, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;->executeShellCmd(Ljava/lang/String;I)V

    .line 123
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;->mNetStat:Landroid/widget/TextView;

    const v2, 0x7f050046

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 125
    const-string v1, "CdsNatvieNetworkSrvActivity"

    const-string v2, "updateFrameworkSrvInfo Done"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private updateInfo(ILjava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "output"

    .prologue
    .line 182
    packed-switch p1, :pswitch_data_0

    .line 202
    :goto_0
    return-void

    .line 184
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;->mNetworkList:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 188
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;->mNetworkConfig:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 192
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;->mIpRoute:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 196
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;->mNetStat:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x7f07001e
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 91
    const v0, 0x7f07001e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;->mNetworkList:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;->mNetworkConfig:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f070020

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;->mIpRoute:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;->mNetStat:Landroid/widget/TextView;

    .line 96
    const-string v0, "CdsNatvieNetworkSrvActivity"

    const-string v1, "CdsFrameworkSrvActivity is started"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 134
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 136
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 102
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;->updateFrameworkSrvInfo()V

    .line 103
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 104
    return-void
.end method
