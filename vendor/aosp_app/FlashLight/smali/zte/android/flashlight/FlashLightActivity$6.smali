.class Lzte/android/flashlight/FlashLightActivity$6;
.super Landroid/os/Handler;
.source "FlashLightActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/android/flashlight/FlashLightActivity;->initFristTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/android/flashlight/FlashLightActivity;


# direct methods
.method constructor <init>(Lzte/android/flashlight/FlashLightActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lzte/android/flashlight/FlashLightActivity$6;->this$0:Lzte/android/flashlight/FlashLightActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/16 v13, 0x100

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-wide/16 v2, 0x0

    const/16 v10, 0x11

    .line 230
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 231
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v10, :cond_1

    .line 232
    sget v4, Lzte/android/flashlight/FlashState;->mState:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 233
    const-wide/32 v4, 0x1b7740

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lzte/android/flashlight/FlashLightActivity$6;->this$0:Lzte/android/flashlight/FlashLightActivity;

    #getter for: Lzte/android/flashlight/FlashLightActivity;->mStartTime:J
    invoke-static {v8}, Lzte/android/flashlight/FlashLightActivity;->access$300(Lzte/android/flashlight/FlashLightActivity;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    sub-long v0, v4, v6

    .line 234
    .local v0, timeLeft:J
    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 235
    :goto_0
    const-string v4, "FlashLight"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    long-to-double v6, v0

    const-wide v8, 0x408f400000000000L

    div-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 237
    iget-object v2, p0, Lzte/android/flashlight/FlashLightActivity$6;->this$0:Lzte/android/flashlight/FlashLightActivity;

    #getter for: Lzte/android/flashlight/FlashLightActivity;->flash_layout:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lzte/android/flashlight/FlashLightActivity;->access$400(Lzte/android/flashlight/FlashLightActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout;->setActivated(Z)V

    .line 238
    iget-object v2, p0, Lzte/android/flashlight/FlashLightActivity$6;->this$0:Lzte/android/flashlight/FlashLightActivity;

    #getter for: Lzte/android/flashlight/FlashLightActivity;->mScreenImg:Landroid/widget/ImageView;
    invoke-static {v2}, Lzte/android/flashlight/FlashLightActivity;->access$500(Lzte/android/flashlight/FlashLightActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 239
    iget-object v2, p0, Lzte/android/flashlight/FlashLightActivity$6;->this$0:Lzte/android/flashlight/FlashLightActivity;

    #calls: Lzte/android/flashlight/FlashLightActivity;->closeLight()V
    invoke-static {v2}, Lzte/android/flashlight/FlashLightActivity;->access$100(Lzte/android/flashlight/FlashLightActivity;)V

    .line 241
    :cond_0
    const-wide/16 v2, 0xbb8

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    .line 242
    iget-object v2, p0, Lzte/android/flashlight/FlashLightActivity$6;->this$0:Lzte/android/flashlight/FlashLightActivity;

    #getter for: Lzte/android/flashlight/FlashLightActivity;->mHandle:Landroid/os/Handler;
    invoke-static {v2}, Lzte/android/flashlight/FlashLightActivity;->access$600(Lzte/android/flashlight/FlashLightActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    sub-long v3, v0, v3

    invoke-virtual {v2, v10, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 249
    .end local v0           #timeLeft:J
    :cond_1
    :goto_1
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v13, :cond_6

    .line 250
    iget-object v2, p0, Lzte/android/flashlight/FlashLightActivity$6;->this$0:Lzte/android/flashlight/FlashLightActivity;

    #getter for: Lzte/android/flashlight/FlashLightActivity;->mBoundService:Lzte/android/flashlight/FlashService;
    invoke-static {v2}, Lzte/android/flashlight/FlashLightActivity;->access$000(Lzte/android/flashlight/FlashLightActivity;)Lzte/android/flashlight/FlashService;

    move-result-object v2

    if-nez v2, :cond_5

    .line 251
    iget-object v2, p0, Lzte/android/flashlight/FlashLightActivity$6;->this$0:Lzte/android/flashlight/FlashLightActivity;

    #getter for: Lzte/android/flashlight/FlashLightActivity;->mHandle:Landroid/os/Handler;
    invoke-static {v2}, Lzte/android/flashlight/FlashLightActivity;->access$600(Lzte/android/flashlight/FlashLightActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v13, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 267
    :cond_2
    :goto_2
    return-void

    .restart local v0       #timeLeft:J
    :cond_3
    move-wide v0, v2

    .line 234
    goto :goto_0

    .line 245
    :cond_4
    iget-object v2, p0, Lzte/android/flashlight/FlashLightActivity$6;->this$0:Lzte/android/flashlight/FlashLightActivity;

    #getter for: Lzte/android/flashlight/FlashLightActivity;->mHandle:Landroid/os/Handler;
    invoke-static {v2}, Lzte/android/flashlight/FlashLightActivity;->access$600(Lzte/android/flashlight/FlashLightActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v10, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 254
    .end local v0           #timeLeft:J
    :cond_5
    iget-object v2, p0, Lzte/android/flashlight/FlashLightActivity$6;->this$0:Lzte/android/flashlight/FlashLightActivity;

    #calls: Lzte/android/flashlight/FlashLightActivity;->openLight()V
    invoke-static {v2}, Lzte/android/flashlight/FlashLightActivity;->access$200(Lzte/android/flashlight/FlashLightActivity;)V

    .line 260
    :cond_6
    const/16 v2, 0x1000

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_7

    .line 261
    iget-object v2, p0, Lzte/android/flashlight/FlashLightActivity$6;->this$0:Lzte/android/flashlight/FlashLightActivity;

    #getter for: Lzte/android/flashlight/FlashLightActivity;->flash_layout:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lzte/android/flashlight/FlashLightActivity;->access$400(Lzte/android/flashlight/FlashLightActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/widget/RelativeLayout;->setActivated(Z)V

    .line 262
    iget-object v2, p0, Lzte/android/flashlight/FlashLightActivity$6;->this$0:Lzte/android/flashlight/FlashLightActivity;

    #getter for: Lzte/android/flashlight/FlashLightActivity;->mScreenImg:Landroid/widget/ImageView;
    invoke-static {v2}, Lzte/android/flashlight/FlashLightActivity;->access$500(Lzte/android/flashlight/FlashLightActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 264
    :cond_7
    const/16 v2, 0x1100

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_2

    .line 265
    iget-object v2, p0, Lzte/android/flashlight/FlashLightActivity$6;->this$0:Lzte/android/flashlight/FlashLightActivity;

    invoke-virtual {v2}, Lzte/android/flashlight/FlashLightActivity;->finish()V

    goto :goto_2
.end method
