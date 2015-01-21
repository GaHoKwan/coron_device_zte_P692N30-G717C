.class Lcom/android/browser/Controller$5;
.super Landroid/os/Handler;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Controller;->startHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Controller;


# direct methods
.method constructor <init>(Lcom/android/browser/Controller;)V
    .locals 0
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/browser/Controller$5;->this$0:Lcom/android/browser/Controller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .parameter "msg"

    .prologue
    .line 522
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 524
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller$5;->this$0:Lcom/android/browser/Controller;

    sget-object v3, Lcom/android/browser/UI$ComboViews;->Bookmarks:Lcom/android/browser/UI$ComboViews;

    invoke-virtual {v1, v3}, Lcom/android/browser/Controller;->bookmarksOrHistoryPicker(Lcom/android/browser/UI$ComboViews;)V

    goto :goto_0

    .line 528
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "url"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 529
    .local v2, url:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "title"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 530
    .local v16, title:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "src"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 531
    .local v14, src:Ljava/lang/String;
    const-string v1, ""

    if-ne v2, v1, :cond_1

    move-object v2, v14

    .line 532
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 535
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/util/HashMap;

    .line 536
    .local v11, focusNodeMap:Ljava/util/HashMap;
    const-string v1, "webview"

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/webkit/WebView;

    .line 538
    .local v17, view:Landroid/webkit/WebView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller$5;->this$0:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v1

    move-object/from16 v0, v17

    if-ne v1, v0, :cond_0

    .line 541
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    sparse-switch v1, :sswitch_data_1

    goto :goto_0

    .line 544
    :sswitch_2
    if-eqz v2, :cond_2

    const-string v1, "rtsp://"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 545
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 546
    .local v12, i:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 547
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 548
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller$5;->this$0:Lcom/android/browser/Controller;

    #getter for: Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/browser/Controller;->access$200(Lcom/android/browser/Controller;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 552
    .end local v12           #i:Landroid/content/Intent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller$5;->this$0:Lcom/android/browser/Controller;

    invoke-virtual {v1, v2}, Lcom/android/browser/Controller;->loadUrlFromContext(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 555
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller$5;->this$0:Lcom/android/browser/Controller;

    invoke-virtual {v1, v14}, Lcom/android/browser/Controller;->loadUrlFromContext(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 558
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller$5;->this$0:Lcom/android/browser/Controller;

    #getter for: Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;
    invoke-static {v1}, Lcom/android/browser/Controller;->access$000(Lcom/android/browser/Controller;)Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v13

    .line 559
    .local v13, parent:Lcom/android/browser/Tab;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/Controller$5;->this$0:Lcom/android/browser/Controller;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller$5;->this$0:Lcom/android/browser/Controller;

    #getter for: Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;
    invoke-static {v1}, Lcom/android/browser/Controller;->access$300(Lcom/android/browser/Controller;)Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->openInBackground()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    const/4 v4, 0x1

    invoke-virtual {v3, v2, v13, v1, v4}, Lcom/android/browser/Controller;->openTab(Ljava/lang/String;Lcom/android/browser/Tab;ZZ)Lcom/android/browser/Tab;

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 563
    .end local v13           #parent:Lcom/android/browser/Tab;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller$5;->this$0:Lcom/android/browser/Controller;

    #calls: Lcom/android/browser/Controller;->copy(Ljava/lang/CharSequence;)V
    invoke-static {v1, v2}, Lcom/android/browser/Controller;->access$400(Lcom/android/browser/Controller;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 567
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller$5;->this$0:Lcom/android/browser/Controller;

    #getter for: Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/browser/Controller;->access$200(Lcom/android/browser/Controller;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v7

    const-wide/16 v8, 0x0

    invoke-static/range {v1 .. v9}, Lcom/android/browser/DownloadHandler;->onDownloadStartNoStream(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    goto/16 :goto_0

    .line 573
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller$5;->this$0:Lcom/android/browser/Controller;

    invoke-virtual {v1, v2}, Lcom/android/browser/Controller;->createBookmarkLinkIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 574
    .local v10, bookmarkIntent:Landroid/content/Intent;
    if-eqz v10, :cond_0

    .line 575
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller$5;->this$0:Lcom/android/browser/Controller;

    #getter for: Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/browser/Controller;->access$200(Lcom/android/browser/Controller;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 583
    .end local v2           #url:Ljava/lang/String;
    .end local v10           #bookmarkIntent:Landroid/content/Intent;
    .end local v11           #focusNodeMap:Ljava/util/HashMap;
    .end local v14           #src:Ljava/lang/String;
    .end local v16           #title:Ljava/lang/String;
    .end local v17           #view:Landroid/webkit/WebView;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/Controller$5;->this$0:Lcom/android/browser/Controller;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/android/browser/Controller;->loadUrlFromContext(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 587
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller$5;->this$0:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->stopLoading()V

    goto/16 :goto_0

    .line 591
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller$5;->this$0:Lcom/android/browser/Controller;

    #getter for: Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/browser/Controller;->access$500(Lcom/android/browser/Controller;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller$5;->this$0:Lcom/android/browser/Controller;

    #getter for: Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/browser/Controller;->access$500(Lcom/android/browser/Controller;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 592
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller$5;->this$0:Lcom/android/browser/Controller;

    #getter for: Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/browser/Controller;->access$500(Lcom/android/browser/Controller;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 596
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller$5;->this$0:Lcom/android/browser/Controller;

    #getter for: Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;
    invoke-static {v1}, Lcom/android/browser/Controller;->access$000(Lcom/android/browser/Controller;)Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->stopAllLoading()V

    goto/16 :goto_0

    .line 601
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/android/browser/Tab;

    .line 602
    .local v15, tab:Lcom/android/browser/Tab;
    if-eqz v15, :cond_0

    .line 603
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller$5;->this$0:Lcom/android/browser/Controller;

    #calls: Lcom/android/browser/Controller;->updateScreenshot(Lcom/android/browser/Tab;)V
    invoke-static {v1, v15}, Lcom/android/browser/Controller;->access$600(Lcom/android/browser/Controller;Lcom/android/browser/Tab;)V

    goto/16 :goto_0

    .line 522
    nop

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_1
        0x6b -> :sswitch_a
        0x6c -> :sswitch_b
        0xc9 -> :sswitch_0
        0x3e9 -> :sswitch_8
        0x3ea -> :sswitch_9
    .end sparse-switch

    .line 541
    :sswitch_data_1
    .sparse-switch
        0x7f0d0021 -> :sswitch_2
        0x7f0d00e3 -> :sswitch_4
        0x7f0d00e4 -> :sswitch_6
        0x7f0d00e5 -> :sswitch_5
        0x7f0d00e6 -> :sswitch_7
        0x7f0d00e8 -> :sswitch_6
        0x7f0d00e9 -> :sswitch_3
    .end sparse-switch
.end method
