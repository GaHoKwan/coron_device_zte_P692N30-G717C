.class public Lcom/zte/engineer/TouchScreenFwloadForResearch;
.super Lcom/zte/engineer/EmActivity;
.source "TouchScreenFwloadForResearch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MESSAGE_CHECK_UPDATE_RESULT:I = 0x1

.field private static final MESSAGE_UPDATE_VIEW:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Emode.TouchScreenFwloadForResearch"


# instance fields
.field private btnCommonDownload:Landroid/widget/Button;

.field private btnForceDownload:Landroid/widget/Button;

.field private btnOK:Landroid/widget/Button;

.field private btnTPCalibration:Landroid/widget/Button;

.field private btnTPInfo:Landroid/widget/Button;

.field private calibrationInfo:Ljava/lang/String;

.field private commonLoadThread:Ljava/lang/Thread;

.field private commonLoadThreadStart:Z

.field private common_load:Landroid/widget/TextView;

.field private common_result:Ljava/lang/String;

.field private forceLoadThread:Ljava/lang/Thread;

.field private forceLoadThreadStart:Z

.field private force_load:Landroid/widget/TextView;

.field private force_result:Ljava/lang/String;

.field private isNewVersion:Ljava/lang/String;

.field private isUpdateSuccess:Ljava/lang/String;

.field private lastTime:J

.field mHandler:Landroid/os/Handler;

.field private totalTime:I

.field private tpCalibration:Landroid/widget/TextView;

.field private tpInfo:Landroid/widget/TextView;

.field private tpInformation:Ljava/lang/String;

.field private update_or_not:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 49
    :try_start_0
    const-string v1, "Emode.TouchScreenFwloadForResearch"

    const-string v2, "JNI Trying to load libtsfwloader.so"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v1, "/system/lib/libtsfwloadernew.so"

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 51
    const-string v1, "Emode.TouchScreenFwloadForResearch"

    const-string v2, "JNI fwloader: loaded fwloader\n"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .local v0, localUnsatisfiedLinkError:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 52
    .end local v0           #localUnsatisfiedLinkError:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 53
    .restart local v0       #localUnsatisfiedLinkError:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "Emode.TouchScreenFwloadForResearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JNI WARNING: Could not load libtsfwloader.so :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Lcom/zte/engineer/EmActivity;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->btnTPInfo:Landroid/widget/Button;

    .line 24
    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->btnTPCalibration:Landroid/widget/Button;

    .line 25
    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->btnCommonDownload:Landroid/widget/Button;

    .line 26
    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->btnForceDownload:Landroid/widget/Button;

    .line 27
    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->btnOK:Landroid/widget/Button;

    .line 28
    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->tpInfo:Landroid/widget/TextView;

    .line 29
    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->tpCalibration:Landroid/widget/TextView;

    .line 30
    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->update_or_not:Landroid/widget/TextView;

    .line 31
    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->common_load:Landroid/widget/TextView;

    .line 32
    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->force_load:Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->tpInformation:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->calibrationInfo:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->isNewVersion:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->isUpdateSuccess:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->common_result:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->force_result:Ljava/lang/String;

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->lastTime:J

    .line 42
    iput v2, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->totalTime:I

    .line 43
    iput-boolean v2, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->commonLoadThreadStart:Z

    .line 44
    iput-boolean v2, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->forceLoadThreadStart:Z

    .line 61
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zte/engineer/TouchScreenFwloadForResearch$1;

    invoke-direct {v1, p0}, Lcom/zte/engineer/TouchScreenFwloadForResearch$1;-><init>(Lcom/zte/engineer/TouchScreenFwloadForResearch;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->commonLoadThread:Ljava/lang/Thread;

    .line 73
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zte/engineer/TouchScreenFwloadForResearch$2;

    invoke-direct {v1, p0}, Lcom/zte/engineer/TouchScreenFwloadForResearch$2;-><init>(Lcom/zte/engineer/TouchScreenFwloadForResearch;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->forceLoadThread:Ljava/lang/Thread;

    .line 85
    new-instance v0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;

    invoke-direct {v0, p0}, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;-><init>(Lcom/zte/engineer/TouchScreenFwloadForResearch;)V

    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/engineer/TouchScreenFwloadForResearch;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->common_result:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zte/engineer/TouchScreenFwloadForResearch;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->common_result:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/zte/engineer/TouchScreenFwloadForResearch;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->isNewVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/zte/engineer/TouchScreenFwloadForResearch;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->isNewVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/zte/engineer/TouchScreenFwloadForResearch;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->commonLoadThreadStart:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/zte/engineer/TouchScreenFwloadForResearch;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->update_or_not:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/zte/engineer/TouchScreenFwloadForResearch;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->common_load:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/zte/engineer/TouchScreenFwloadForResearch;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->force_load:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/engineer/TouchScreenFwloadForResearch;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->force_result:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/zte/engineer/TouchScreenFwloadForResearch;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->force_result:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/zte/engineer/TouchScreenFwloadForResearch;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->forceLoadThreadStart:Z

    return p1
.end method

.method static synthetic access$400(Lcom/zte/engineer/TouchScreenFwloadForResearch;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->lastTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/zte/engineer/TouchScreenFwloadForResearch;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->lastTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/zte/engineer/TouchScreenFwloadForResearch;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->totalTime:I

    return v0
.end method

.method static synthetic access$502(Lcom/zte/engineer/TouchScreenFwloadForResearch;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->totalTime:I

    return p1
.end method

.method static synthetic access$600(Lcom/zte/engineer/TouchScreenFwloadForResearch;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->isUpdateSuccess:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/zte/engineer/TouchScreenFwloadForResearch;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->isUpdateSuccess:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/zte/engineer/TouchScreenFwloadForResearch;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->setAirplaneModeOn(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/zte/engineer/TouchScreenFwloadForResearch;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->tpInformation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/zte/engineer/TouchScreenFwloadForResearch;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->tpInformation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/zte/engineer/TouchScreenFwloadForResearch;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->tpInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method private setAirplaneModeOn(Z)V
    .locals 4
    .parameter "enabling"

    .prologue
    .line 301
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 304
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 306
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 307
    return-void

    .line 301
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private touchscreenfwload_en(I)V
    .locals 4
    .parameter "type"

    .prologue
    const/4 v2, 0x1

    .line 265
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    const-string v1, ">>>>>>>>>>touchscreenfwload_en()>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-direct {p0, v2}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->setAirplaneModeOn(Z)V

    .line 267
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->lastTime:J

    .line 268
    if-nez p1, :cond_1

    .line 269
    iget-boolean v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->commonLoadThreadStart:Z

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->commonLoadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    .line 281
    :goto_0
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 282
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    const-string v1, "<<<<<<<<<<touchscreenfwload_en()<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->commonLoadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 275
    :cond_1
    iget-boolean v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->forceLoadThreadStart:Z

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->forceLoadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    goto :goto_0

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->forceLoadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static native touchscreenfwloader(I)Ljava/lang/String;
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "paramView"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 232
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    const-string v1, ">>>>>>>>>>onClick()>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------v.getId()--------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 261
    :goto_0
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    const-string v1, "<<<<<<<<<<onClick()<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void

    .line 236
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0600ed

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->touchscreenfwloader(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->tpInformation:Ljava/lang/String;

    .line 237
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----tpInformation = touchscreenfwloader(1)====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->tpInformation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->tpInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->tpInformation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 242
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0600ee

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->touchscreenfwloader(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->calibrationInfo:Ljava/lang/String;

    .line 243
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----calibrationInfo = touchscreenfwloader(2)====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->calibrationInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->tpCalibration:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->calibrationInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 248
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->touchscreenfwload_en(I)V

    goto/16 :goto_0

    .line 252
    :pswitch_3
    invoke-direct {p0, v4}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->touchscreenfwload_en(I)V

    goto/16 :goto_0

    .line 256
    :pswitch_4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emode_status"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 257
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    const-string v1, "---------emode_status = 0---------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x7f080085
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "paramBundle"

    .prologue
    .line 179
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    const-string v1, ">>>>>>>>>>onCreate()>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-super {p0, p1}, Lcom/zte/engineer/EmActivity;->onCreate(Landroid/os/Bundle;)V

    .line 181
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 183
    const v0, 0x7f080086

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->btnTPInfo:Landroid/widget/Button;

    .line 184
    const v0, 0x7f080087

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->btnTPCalibration:Landroid/widget/Button;

    .line 185
    const v0, 0x7f080088

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->btnCommonDownload:Landroid/widget/Button;

    .line 186
    const v0, 0x7f080089

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->btnForceDownload:Landroid/widget/Button;

    .line 187
    const v0, 0x7f080085

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->btnOK:Landroid/widget/Button;

    .line 188
    const v0, 0x7f08008a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->tpInfo:Landroid/widget/TextView;

    .line 189
    const v0, 0x7f08008b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->tpCalibration:Landroid/widget/TextView;

    .line 190
    const v0, 0x7f080084

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->update_or_not:Landroid/widget/TextView;

    .line 191
    const v0, 0x7f08008c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->common_load:Landroid/widget/TextView;

    .line 192
    const v0, 0x7f08008d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->force_load:Landroid/widget/TextView;

    .line 194
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->btnTPInfo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->btnTPCalibration:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->btnCommonDownload:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->btnForceDownload:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->btnOK:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    const-string v1, "<<<<<<<<<<onCreate()<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 294
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    const-string v1, ">>>>>>>>>>onDestroy()>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-super {p0}, Lcom/zte/engineer/EmActivity;->onDestroy()V

    .line 296
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    const-string v1, "<<<<<<<<<<onDestroy()<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 298
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 286
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    const-string v1, ">>>>>>>>>>onPause()>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 288
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emode_status"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 289
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    const-string v1, "---------emode_status = 0---------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    const-string v1, "<<<<<<<<<<onPause()<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 204
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    const-string v1, ">>>>>>>>>>onResume()>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-super {p0}, Lcom/zte/engineer/EmActivity;->onResume()V

    .line 206
    iput-boolean v2, p0, Lcom/zte/engineer/EmActivity;->Ishield:Z

    .line 207
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emode_status"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 208
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    const-string v1, "---------emode_status = 1---------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0600ed

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->touchscreenfwloader(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->tpInformation:Ljava/lang/String;

    .line 211
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----tpInformation = touchscreenfwloader(1)====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->tpInformation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->tpInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->tpInformation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->touchscreenfwloader(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->isNewVersion:Ljava/lang/String;

    .line 221
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----isNewVersion = touchscreenfwloader(3)====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->isNewVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->isNewVersion:Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->update_or_not:Landroid/widget/TextView;

    const v1, 0x7f0600dd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    :goto_0
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    const-string v1, "<<<<<<<<<<onResume()<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->update_or_not:Landroid/widget/TextView;

    const v1, 0x7f0600de

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
