.class Lcom/mediatek/ygps/YgpsActivity$8;
.super Landroid/os/Handler;
.source "YgpsActivity.java"


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
    .line 2342
    iput-object p1, p0, Lcom/mediatek/ygps/YgpsActivity$8;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x3

    const/16 v4, 0x3e8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2344
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 2433
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2434
    return-void

    .line 2346
    :sswitch_0
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$8;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mFirstFix:Z
    invoke-static {v0}, Lcom/mediatek/ygps/YgpsActivity;->access$1900(Lcom/mediatek/ygps/YgpsActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2347
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$8;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Lcom/mediatek/ygps/YgpsActivity;->access$2512(Lcom/mediatek/ygps/YgpsActivity;I)I

    .line 2348
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$8;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    const v1, 0x7f07000f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 2351
    .local v10, tvTtff:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$8;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mTtffValue:I
    invoke-static {v0}, Lcom/mediatek/ygps/YgpsActivity;->access$2500(Lcom/mediatek/ygps/YgpsActivity;)I

    move-result v0

    rem-int/lit16 v0, v0, 0x3e8

    if-nez v0, :cond_1

    const-string v0, "Counting"

    :goto_1
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2352
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2351
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 2357
    .end local v10           #tvTtff:Landroid/widget/TextView;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2358
    .local v7, response:Ljava/lang/String;
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2360
    :pswitch_1
    const-string v0, "PMTK001,837"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2361
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$8;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    const v1, 0x7f050064

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2367
    :pswitch_2
    const-string v0, "$PMTK705"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2368
    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2369
    .local v8, strA:[Ljava/lang/String;
    array-length v0, v8

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 2370
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$8;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 2371
    .local v9, tMnlVersion:Landroid/widget/TextView;
    if-eqz v9, :cond_2

    .line 2372
    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MNL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2374
    aget-object v0, v8, v5

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2376
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$8;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #setter for: Lcom/mediatek/ygps/YgpsActivity;->mIsShowVersion:Z
    invoke-static {v0, v2}, Lcom/mediatek/ygps/YgpsActivity;->access$1302(Lcom/mediatek/ygps/YgpsActivity;Z)Z

    goto/16 :goto_0

    .line 2379
    :cond_2
    const-string v0, "YGPS/Activity"

    const-string v1, "txt_mnl_version is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2391
    .end local v7           #response:Ljava/lang/String;
    .end local v8           #strA:[Ljava/lang/String;
    .end local v9           #tMnlVersion:Landroid/widget/TextView;
    :sswitch_2
    const-string v0, "YGPS/Activity"

    const-string v1, "handleClear-msg"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$8;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    invoke-virtual {v0, v11}, Lcom/mediatek/ygps/YgpsActivity;->setSatelliteStatus(Ljava/lang/Iterable;)V

    .line 2393
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$8;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->clearLayout()V
    invoke-static {v0}, Lcom/mediatek/ygps/YgpsActivity;->access$3400(Lcom/mediatek/ygps/YgpsActivity;)V

    goto/16 :goto_0

    .line 2396
    :sswitch_3
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$8;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    invoke-static {v0}, Lcom/mediatek/ygps/YgpsActivity;->access$3308(Lcom/mediatek/ygps/YgpsActivity;)I

    .line 2397
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$8;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mSateReportTimeOut:I
    invoke-static {v0}, Lcom/mediatek/ygps/YgpsActivity;->access$3300(Lcom/mediatek/ygps/YgpsActivity;)I

    move-result v0

    if-ge v5, v0, :cond_3

    .line 2398
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$8;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #setter for: Lcom/mediatek/ygps/YgpsActivity;->mSateReportTimeOut:I
    invoke-static {v0, v3}, Lcom/mediatek/ygps/YgpsActivity;->access$3302(Lcom/mediatek/ygps/YgpsActivity;I)I

    .line 2399
    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2401
    :cond_3
    const/16 v0, 0x3eb

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2404
    :sswitch_4
    const-string v0, "YGPS/Activity"

    const-string v1, "handleEnableButton-msg"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$8;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->enableBtns(Z)V
    invoke-static {v0, v2}, Lcom/mediatek/ygps/YgpsActivity;->access$600(Lcom/mediatek/ygps/YgpsActivity;Z)V

    goto/16 :goto_0

    .line 2408
    :sswitch_5
    const-string v0, "YGPS/Activity"

    const-string v1, "removeUpdates-msg"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$8;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #setter for: Lcom/mediatek/ygps/YgpsActivity;->mFirstFix:Z
    invoke-static {v0, v3}, Lcom/mediatek/ygps/YgpsActivity;->access$1902(Lcom/mediatek/ygps/YgpsActivity;Z)Z

    .line 2411
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$8;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #setter for: Lcom/mediatek/ygps/YgpsActivity;->mTtffValue:I
    invoke-static {v0, v3}, Lcom/mediatek/ygps/YgpsActivity;->access$2502(Lcom/mediatek/ygps/YgpsActivity;I)I

    .line 2412
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$8;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #setter for: Lcom/mediatek/ygps/YgpsActivity;->mShowFirstFixLocate:Z
    invoke-static {v0, v2}, Lcom/mediatek/ygps/YgpsActivity;->access$2202(Lcom/mediatek/ygps/YgpsActivity;Z)Z

    .line 2413
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$8;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    invoke-virtual {v0, v11}, Lcom/mediatek/ygps/YgpsActivity;->setSatelliteStatus(Ljava/lang/Iterable;)V

    .line 2414
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$8;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->clearLayout()V
    invoke-static {v0}, Lcom/mediatek/ygps/YgpsActivity;->access$3400(Lcom/mediatek/ygps/YgpsActivity;)V

    .line 2415
    invoke-virtual {p0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2416
    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2420
    :sswitch_6
    const-string v0, "YGPS/Activity"

    const-string v1, "delete_aiding_data-msg"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 2422
    .local v6, b:Landroid/os/Bundle;
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$8;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/mediatek/ygps/YgpsActivity;->access$3200(Lcom/mediatek/ygps/YgpsActivity;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    const-string v2, "delete_aiding_data"

    invoke-virtual {v0, v1, v2, v6}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 2426
    .end local v6           #b:Landroid/os/Bundle;
    :sswitch_7
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$8;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/mediatek/ygps/YgpsActivity;->access$3200(Lcom/mediatek/ygps/YgpsActivity;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity$8;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    iget-object v5, v5, Lcom/mediatek/ygps/YgpsActivity;->mLocListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 2428
    const-string v0, "YGPS/Activity"

    const-string v1, "requestLocationUpdates-msg"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2344
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_3
        0x4b1 -> :sswitch_5
        0x4b2 -> :sswitch_7
        0x4b3 -> :sswitch_6
        0x4b4 -> :sswitch_4
    .end sparse-switch

    .line 2358
    :pswitch_data_0
    .packed-switch 0x44d
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
