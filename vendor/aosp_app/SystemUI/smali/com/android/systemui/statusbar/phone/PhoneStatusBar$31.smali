.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 2755
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2758
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2759
    .local v0, action:Ljava/lang/String;
    const-string v9, "PhoneStatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive, action="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2761
    const-string v9, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2762
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 2763
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v9

    const v10, 0x7f080075

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 2764
    .local v8, view:Landroid/view/View;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_0

    .line 2765
    const-string v9, "PhoneStatusBar"

    const-string v10, "receive android.intent.action.ACTION_BOOT_IPO to set mNavigationBarView visible"

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2867
    .end local v8           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 2769
    :cond_1
    const-string v9, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2770
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 2771
    const-string v9, "PhoneStatusBar"

    const-string v10, "receive android.intent.action.ACTION_SHUTDOWN_IPO to set mNavigationBarView invisible"

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->hideForIPOShutdown()V

    goto :goto_0

    .line 2775
    :cond_2
    const-string v9, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2776
    const/4 v3, 0x0

    .line 2777
    .local v3, flags:I
    const-string v9, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2778
    const-string v9, "reason"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2779
    .local v6, reason:Ljava/lang/String;
    if-eqz v6, :cond_3

    const-string v9, "recentapps"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2780
    or-int/lit8 v3, v3, 0x2

    .line 2783
    .end local v6           #reason:Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    goto :goto_0

    .line 2785
    .end local v3           #flags:I
    :cond_4
    const-string v9, "android.intent.action.SKIN_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2786
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->refreshApplicationGuide()V
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 2787
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->refreshExpandedView(Landroid/content/Context;)V
    invoke-static {v9, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Context;)V

    .line 2788
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 2789
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->upDateResources()V

    .line 2791
    :cond_5
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 2792
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateResources()V

    .line 2793
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v9, :cond_0

    .line 2794
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 2795
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    goto/16 :goto_0

    .line 2798
    :cond_6
    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2801
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dismissAppGuideInt()V
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 2803
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedInvisible()V

    .line 2804
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v10, 0x0

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V
    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    goto/16 :goto_0

    .line 2805
    :cond_7
    const-string v9, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2810
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->refreshApplicationGuide()V
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 2811
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 2813
    .local v2, currentConfig:Landroid/content/res/Configuration;
    iget v9, v2, Landroid/content/res/Configuration;->orientation:I

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPrevioutConfigOrientation:I
    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v10

    if-eq v9, v10, :cond_8

    .line 2814
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNeedRelayout:Z

    .line 2815
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v10, v2, Landroid/content/res/Configuration;->orientation:I

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPrevioutConfigOrientation:I
    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3502(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)I

    .line 2818
    :cond_8
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v9, v10}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2820
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateResources()V

    .line 2821
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 2822
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/16 v10, -0x2710

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 2823
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateShowSearchHoldoff()V
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto/16 :goto_0

    .line 2824
    .end local v2           #currentConfig:Landroid/content/res/Configuration;
    :cond_9
    const-string v9, "android.intent.action.SCREEN_ON"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2826
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 2827
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v10, 0x1

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V
    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    goto/16 :goto_0

    .line 2829
    :cond_a
    const-string v9, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2830
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2832
    const-string v9, "simId"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 2834
    .local v7, tempSimId:I
    const/4 v1, 0x0

    .local v1, childIdx:I
    :goto_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelGemini:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v1, v9, :cond_0

    .line 2835
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelGemini:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2836
    .local v5, mChildView:Landroid/view/View;
    instance-of v9, v5, Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;

    if-eqz v9, :cond_b

    move-object v4, v5

    .line 2837
    check-cast v4, Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;

    .line 2838
    .local v4, mChildCarrier:Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;->getSlotId()I

    move-result v9

    if-ne v7, v9, :cond_b

    .line 2839
    const-string v9, "showSpn"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    const-string v10, "spn"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "showPlmn"

    const/4 v12, 0x0

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    const-string v12, "plmn"

    invoke-virtual {p2, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v9, v10, v11, v12}, Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 2834
    .end local v4           #mChildCarrier:Lcom/android/systemui/statusbar/phone/CarrierLabelGemini;
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
