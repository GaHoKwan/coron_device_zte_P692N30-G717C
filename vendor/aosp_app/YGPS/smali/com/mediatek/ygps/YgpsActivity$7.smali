.class Lcom/mediatek/ygps/YgpsActivity$7;
.super Ljava/lang/Object;
.source "YgpsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ygps/YgpsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ygps/YgpsActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/ygps/YgpsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2013
    iput-object p1, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2017
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mStatusPrompt:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$3500(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Toast;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2018
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mStatusPrompt:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$3500(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 2020
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2021
    .local v0, extras:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsTestStart:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$200(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_2

    .line 2022
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsTestStart:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$200(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->refreshDrawableState()V

    .line 2023
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsTestStart:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$200(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2024
    const-string v2, "YGPS/Activity"

    const-string v3, "GPSTest Start button is pressed"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$2900(Lcom/mediatek/ygps/YgpsActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3ea

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2026
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->startGPSAutoTest()V
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$3600(Lcom/mediatek/ygps/YgpsActivity;)V

    .line 2225
    :cond_1
    :goto_0
    return-void

    .line 2027
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsTestStop:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$300(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_4

    .line 2029
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsTestStop:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$300(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2030
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsTestStop:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$300(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->refreshDrawableState()V

    .line 2039
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mStopPressedHandling:Z
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$1000(Lcom/mediatek/ygps/YgpsActivity;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2040
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #setter for: Lcom/mediatek/ygps/YgpsActivity;->mStopPressedHandling:Z
    invoke-static {v2, v4}, Lcom/mediatek/ygps/YgpsActivity;->access$1002(Lcom/mediatek/ygps/YgpsActivity;Z)Z

    .line 2041
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    invoke-virtual {v2, v5}, Landroid/app/Activity;->showDialog(I)V

    .line 2042
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #setter for: Lcom/mediatek/ygps/YgpsActivity;->mIsTestRunning:Z
    invoke-static {v2, v5}, Lcom/mediatek/ygps/YgpsActivity;->access$3002(Lcom/mediatek/ygps/YgpsActivity;Z)Z

    goto :goto_0

    .line 2044
    :cond_3
    const-string v2, "YGPS/Activity"

    const-string v3, "stop has been clicked."

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2046
    :cond_4
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnHotStart:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$3700(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_5

    .line 2047
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->gpsTestRunning()Z
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$3800(Lcom/mediatek/ygps/YgpsActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2050
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->enableBtns(Z)V
    invoke-static {v2, v5}, Lcom/mediatek/ygps/YgpsActivity;->access$600(Lcom/mediatek/ygps/YgpsActivity;Z)V

    .line 2052
    const-string v2, "YGPS/Activity"

    const-string v3, "Hot Start button is pressed"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    const-string v2, "rti"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2054
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->resetParamForRestart(Landroid/os/Bundle;)V
    invoke-static {v2, v0}, Lcom/mediatek/ygps/YgpsActivity;->access$800(Lcom/mediatek/ygps/YgpsActivity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 2055
    :cond_5
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnWarmStart:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$3900(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_6

    .line 2056
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->gpsTestRunning()Z
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$3800(Lcom/mediatek/ygps/YgpsActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2059
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->enableBtns(Z)V
    invoke-static {v2, v5}, Lcom/mediatek/ygps/YgpsActivity;->access$600(Lcom/mediatek/ygps/YgpsActivity;Z)V

    .line 2060
    const-string v2, "YGPS/Activity"

    const-string v3, "Warm Start button is pressed"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    const-string v2, "ephemeris"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2062
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->resetParamForRestart(Landroid/os/Bundle;)V
    invoke-static {v2, v0}, Lcom/mediatek/ygps/YgpsActivity;->access$800(Lcom/mediatek/ygps/YgpsActivity;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2063
    :cond_6
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnColdStart:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$4000(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_7

    .line 2064
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->gpsTestRunning()Z
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$3800(Lcom/mediatek/ygps/YgpsActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2067
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->enableBtns(Z)V
    invoke-static {v2, v5}, Lcom/mediatek/ygps/YgpsActivity;->access$600(Lcom/mediatek/ygps/YgpsActivity;Z)V

    .line 2068
    const-string v2, "YGPS/Activity"

    const-string v3, "Cold Start button is pressed"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    const-string v2, "ephemeris"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2070
    const-string v2, "position"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2071
    const-string v2, "time"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2072
    const-string v2, "iono"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2073
    const-string v2, "utc"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2074
    const-string v2, "health"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2075
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->resetParamForRestart(Landroid/os/Bundle;)V
    invoke-static {v2, v0}, Lcom/mediatek/ygps/YgpsActivity;->access$800(Lcom/mediatek/ygps/YgpsActivity;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2076
    :cond_7
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnFullStart:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$4100(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_8

    .line 2077
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->gpsTestRunning()Z
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$3800(Lcom/mediatek/ygps/YgpsActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2080
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->enableBtns(Z)V
    invoke-static {v2, v5}, Lcom/mediatek/ygps/YgpsActivity;->access$600(Lcom/mediatek/ygps/YgpsActivity;Z)V

    .line 2081
    const-string v2, "YGPS/Activity"

    const-string v3, "Full Start button is pressed"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    const-string v2, "all"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2083
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->resetParamForRestart(Landroid/os/Bundle;)V
    invoke-static {v2, v0}, Lcom/mediatek/ygps/YgpsActivity;->access$800(Lcom/mediatek/ygps/YgpsActivity;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2084
    :cond_8
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnReStart:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$4200(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_9

    .line 2085
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->gpsTestRunning()Z
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$3800(Lcom/mediatek/ygps/YgpsActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2088
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->enableBtns(Z)V
    invoke-static {v2, v5}, Lcom/mediatek/ygps/YgpsActivity;->access$600(Lcom/mediatek/ygps/YgpsActivity;Z)V

    .line 2089
    const-string v2, "YGPS/Activity"

    const-string v3, "Restart button is pressed"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    const-string v2, "ephemeris"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2091
    const-string v2, "almanac"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2092
    const-string v2, "position"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2093
    const-string v2, "time"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2094
    const-string v2, "iono"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2095
    const-string v2, "utc"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2096
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->resetParamForRestart(Landroid/os/Bundle;)V
    invoke-static {v2, v0}, Lcom/mediatek/ygps/YgpsActivity;->access$800(Lcom/mediatek/ygps/YgpsActivity;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2097
    :cond_9
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaStart:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$4300(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_b

    .line 2098
    const-string v2, "YGPS/Activity"

    const-string v3, "NMEA Start button is pressed"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->createFileForSavingNMEALog()Z
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$4400(Lcom/mediatek/ygps/YgpsActivity;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 2100
    const-string v2, "YGPS/Activity"

    const-string v3, "createFileForSavingNMEALog return false"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2103
    :cond_a
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #setter for: Lcom/mediatek/ygps/YgpsActivity;->mStartNmeaRecord:Z
    invoke-static {v2, v4}, Lcom/mediatek/ygps/YgpsActivity;->access$1602(Lcom/mediatek/ygps/YgpsActivity;Z)Z

    .line 2104
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaStart:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$4300(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2105
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnNMEAStop:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$4500(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2106
    :cond_b
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnNMEAStop:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$4500(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_c

    .line 2107
    const-string v2, "YGPS/Activity"

    const-string v3, "NMEA Stop button is pressed"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #setter for: Lcom/mediatek/ygps/YgpsActivity;->mStartNmeaRecord:Z
    invoke-static {v2, v5}, Lcom/mediatek/ygps/YgpsActivity;->access$1602(Lcom/mediatek/ygps/YgpsActivity;Z)Z

    .line 2109
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->finishSavingNMEALog()V
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$4600(Lcom/mediatek/ygps/YgpsActivity;)V

    goto/16 :goto_0

    .line 2111
    :cond_c
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnNMEADbgDbg:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$4700(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_e

    .line 2112
    const-string v2, "YGPS/Activity"

    const-string v3, "NMEA DbgDbg is pressed"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    const-string v2, "debug.dbg2socket"

    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/mediatek/ygps/GpsMnlSetting;->getMnlProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2116
    .local v1, ss:Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2117
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnNMEADbgDbg:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$4700(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f050051

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2119
    const-string v2, "debug.dbg2socket"

    const-string v3, "1"

    invoke-static {v2, v3}, Lcom/mediatek/ygps/GpsMnlSetting;->setMnlProp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2123
    :cond_d
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnNMEADbgDbg:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$4700(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f050050

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2124
    const-string v2, "debug.dbg2socket"

    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/mediatek/ygps/GpsMnlSetting;->setMnlProp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2129
    .end local v1           #ss:Ljava/lang/String;
    :cond_e
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaDbgNmea:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$4800(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_10

    .line 2130
    const-string v2, "YGPS/Activity"

    const-string v3, "NMEA DbgNmea button is pressed"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    const-string v2, "debug.nmea2socket"

    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/mediatek/ygps/GpsMnlSetting;->getMnlProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2134
    .restart local v1       #ss:Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2135
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaDbgNmea:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$4800(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f050053

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2137
    const-string v2, "debug.nmea2socket"

    const-string v3, "1"

    invoke-static {v2, v3}, Lcom/mediatek/ygps/GpsMnlSetting;->setMnlProp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2141
    :cond_f
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaDbgNmea:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$4800(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f050052

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2143
    const-string v2, "debug.nmea2socket"

    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/mediatek/ygps/GpsMnlSetting;->setMnlProp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2147
    .end local v1           #ss:Ljava/lang/String;
    :cond_10
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaDbgDbgFile:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$4900(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_12

    .line 2148
    const-string v2, "YGPS/Activity"

    const-string v3, "NMEA DbgDbgFile is pressed"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    const-string v2, "debug.dbg2file"

    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/mediatek/ygps/GpsMnlSetting;->getMnlProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2152
    .restart local v1       #ss:Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2153
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaDbgDbgFile:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$4900(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f050055

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2155
    const-string v2, "debug.dbg2file"

    const-string v3, "1"

    invoke-static {v2, v3}, Lcom/mediatek/ygps/GpsMnlSetting;->setMnlProp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2158
    :cond_11
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaDbgDbgFile:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$4900(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f050054

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2160
    const-string v2, "debug.dbg2file"

    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/mediatek/ygps/GpsMnlSetting;->setMnlProp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2164
    .end local v1           #ss:Ljava/lang/String;
    :cond_12
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaDbgNmeaDdms:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$5000(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_14

    .line 2165
    const-string v2, "YGPS/Activity"

    const-string v3, "NMEA debug2ddms button is pressed"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    const-string v2, "debug.debug_nmea"

    const-string v3, "1"

    invoke-static {v2, v3}, Lcom/mediatek/ygps/GpsMnlSetting;->getMnlProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2169
    .restart local v1       #ss:Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2170
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaDbgNmeaDdms:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$5000(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f050057

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2172
    const-string v2, "debug.debug_nmea"

    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/mediatek/ygps/GpsMnlSetting;->setMnlProp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2176
    :cond_13
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaDbgNmeaDdms:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$5000(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f050056

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2178
    const-string v2, "debug.debug_nmea"

    const-string v3, "1"

    invoke-static {v2, v3}, Lcom/mediatek/ygps/GpsMnlSetting;->setMnlProp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2182
    .end local v1           #ss:Ljava/lang/String;
    :cond_14
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnHotStill:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$5100(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_16

    .line 2183
    const-string v2, "YGPS/Activity"

    const-string v3, "Hot still button is pressed"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    const-string v2, "BEE_enabled"

    const-string v3, "1"

    invoke-static {v2, v3}, Lcom/mediatek/ygps/GpsMnlSetting;->getMnlProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2187
    .restart local v1       #ss:Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2188
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnHotStill:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$5100(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f050059

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2189
    const-string v2, "BEE_enabled"

    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/mediatek/ygps/GpsMnlSetting;->setMnlProp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2192
    :cond_15
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnHotStill:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$5100(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f050058

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2193
    const-string v2, "BEE_enabled"

    const-string v3, "1"

    invoke-static {v2, v3}, Lcom/mediatek/ygps/GpsMnlSetting;->setMnlProp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2196
    .end local v1           #ss:Ljava/lang/String;
    :cond_16
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnSuplLog:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$5200(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_18

    .line 2197
    const-string v2, "YGPS/Activity"

    const-string v3, "supllog button is pressed"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    const-string v2, "SUPPLOG_enabled"

    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/mediatek/ygps/GpsMnlSetting;->getMnlProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2201
    .restart local v1       #ss:Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2202
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnSuplLog:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$5200(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f05007a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2203
    const-string v2, "SUPPLOG_enabled"

    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/mediatek/ygps/GpsMnlSetting;->setMnlProp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2206
    :cond_17
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnSuplLog:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$5200(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f050079

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2207
    const-string v2, "SUPPLOG_enabled"

    const-string v3, "1"

    invoke-static {v2, v3}, Lcom/mediatek/ygps/GpsMnlSetting;->setMnlProp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2210
    .end local v1           #ss:Ljava/lang/String;
    :cond_18
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaClear:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$5300(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_19

    .line 2211
    const-string v2, "YGPS/Activity"

    const-string v3, "NMEA Clear button is pressed"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mTvNmeaLog:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$1800(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f050002

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 2213
    :cond_19
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaSave:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$5400(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_1a

    .line 2214
    const-string v2, "YGPS/Activity"

    const-string v3, "NMEA Save button is pressed"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->saveNMEALog()V
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$5500(Lcom/mediatek/ygps/YgpsActivity;)V

    goto/16 :goto_0

    .line 2216
    :cond_1a
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsHwTest:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$5600(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_1b

    .line 2217
    const-string v2, "YGPS/Activity"

    const-string v3, "mBtnGPSHwTest Button is pressed"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->onGpsHwTestClicked()V
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$5700(Lcom/mediatek/ygps/YgpsActivity;)V

    goto/16 :goto_0

    .line 2219
    :cond_1b
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsJamming:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$5800(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 2220
    const-string v2, "YGPS/Activity"

    const-string v3, "mBtnGPSJamming Button is pressed"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$7;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->onGpsJammingScanClicked()V
    invoke-static {v2}, Lcom/mediatek/ygps/YgpsActivity;->access$5900(Lcom/mediatek/ygps/YgpsActivity;)V

    goto/16 :goto_0
.end method
