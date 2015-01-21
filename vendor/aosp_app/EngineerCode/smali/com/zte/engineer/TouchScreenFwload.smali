.class public Lcom/zte/engineer/TouchScreenFwload;
.super Lcom/zte/engineer/EmActivity;
.source "TouchScreenFwload.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MESSAGE_CHECK_UPDATE_RESULT:I = 0x1

.field private static final MESSAGE_SHOW_WAIT_WINDOW:I = 0x0

.field private static final MESSAGE_UPDATE_FAILED_REBOOT:I = 0x3

.field private static final MESSAGE_UPDATE_SUCCESS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TouchScreenFwload"


# instance fields
.field private btn1:Landroid/widget/Button;

.field private btn2:Landroid/widget/Button;

.field private explainInfo:Landroid/widget/TextView;

.field private isNewVersion:Ljava/lang/String;

.field private isUpdateSuccess:Ljava/lang/String;

.field private lastTime:J

.field private loadThread:Ljava/lang/Thread;

.field private mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

.field mHandler:Landroid/os/Handler;

.field private mRbootForTPUpdate:Z

.field private mTPUpdateRebootCount:I

.field private mWaitWindowDialog:Landroid/app/ProgressDialog;

.field private rebootForTPUpdateThread:Ljava/lang/Thread;

.field private totalTime:I

.field private update_or_not:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 43
    :try_start_0
    const-string v1, "TouchScreenFwload"

    const-string v2, "JNI Trying to load libtsfwloader.so"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v1, "/system/lib/libtsfwloader.so"

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 45
    const-string v1, "TouchScreenFwload"

    const-string v2, "JNI fwloader: loaded fwloader\n"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .local v0, localUnsatisfiedLinkError:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 46
    .end local v0           #localUnsatisfiedLinkError:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 47
    .restart local v0       #localUnsatisfiedLinkError:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "TouchScreenFwload"

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

    .line 19
    invoke-direct {p0}, Lcom/zte/engineer/EmActivity;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->explainInfo:Landroid/widget/TextView;

    .line 26
    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->update_or_not:Landroid/widget/TextView;

    .line 27
    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->btn1:Landroid/widget/Button;

    .line 28
    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->btn2:Landroid/widget/Button;

    .line 29
    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->isNewVersion:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->isUpdateSuccess:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 32
    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->mWaitWindowDialog:Landroid/app/ProgressDialog;

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zte/engineer/TouchScreenFwload;->lastTime:J

    .line 34
    iput v2, p0, Lcom/zte/engineer/TouchScreenFwload;->mTPUpdateRebootCount:I

    .line 35
    iput v2, p0, Lcom/zte/engineer/TouchScreenFwload;->totalTime:I

    .line 36
    iput-boolean v2, p0, Lcom/zte/engineer/TouchScreenFwload;->mRbootForTPUpdate:Z

    .line 51
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zte/engineer/TouchScreenFwload$1;

    invoke-direct {v1, p0}, Lcom/zte/engineer/TouchScreenFwload$1;-><init>(Lcom/zte/engineer/TouchScreenFwload;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->loadThread:Ljava/lang/Thread;

    .line 62
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zte/engineer/TouchScreenFwload$2;

    invoke-direct {v1, p0}, Lcom/zte/engineer/TouchScreenFwload$2;-><init>(Lcom/zte/engineer/TouchScreenFwload;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->rebootForTPUpdateThread:Ljava/lang/Thread;

    .line 74
    new-instance v0, Lcom/zte/engineer/TouchScreenFwload$3;

    invoke-direct {v0, p0}, Lcom/zte/engineer/TouchScreenFwload$3;-><init>(Lcom/zte/engineer/TouchScreenFwload;)V

    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/engineer/TouchScreenFwload;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/zte/engineer/TouchScreenFwload;->lastTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/zte/engineer/TouchScreenFwload;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/zte/engineer/TouchScreenFwload;->lastTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/zte/engineer/TouchScreenFwload;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->mWaitWindowDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/zte/engineer/TouchScreenFwload;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/zte/engineer/TouchScreenFwload;->mWaitWindowDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/zte/engineer/TouchScreenFwload;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/zte/engineer/TouchScreenFwload;->totalTime:I

    return v0
.end method

.method static synthetic access$202(Lcom/zte/engineer/TouchScreenFwload;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/zte/engineer/TouchScreenFwload;->totalTime:I

    return p1
.end method

.method static synthetic access$300(Lcom/zte/engineer/TouchScreenFwload;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->isUpdateSuccess:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/zte/engineer/TouchScreenFwload;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/zte/engineer/TouchScreenFwload;->isUpdateSuccess:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/zte/engineer/TouchScreenFwload;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/zte/engineer/TouchScreenFwload;->setAirplaneModeOn(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/zte/engineer/TouchScreenFwload;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->isNewVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/zte/engineer/TouchScreenFwload;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/zte/engineer/TouchScreenFwload;->isNewVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/zte/engineer/TouchScreenFwload;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->update_or_not:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zte/engineer/TouchScreenFwload;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->btn1:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/zte/engineer/TouchScreenFwload;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/zte/engineer/TouchScreenFwload;->mTPUpdateRebootCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/zte/engineer/TouchScreenFwload;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->loadThread:Ljava/lang/Thread;

    return-object v0
.end method

.method private setAirplaneModeOn(Z)V
    .locals 4
    .parameter "enabling"

    .prologue
    .line 287
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 290
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 292
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 293
    return-void

    .line 287
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private touchscreenfwload_en()V
    .locals 3

    .prologue
    .line 244
    const-string v0, "TouchScreenFwload"

    const-string v1, ">>>>>>>>>>touchscreenfwload_en()>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 249
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0600df

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 250
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0600e0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 251
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0600e1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zte/engineer/TouchScreenFwload$4;

    invoke-direct {v2, p0}, Lcom/zte/engineer/TouchScreenFwload$4;-><init>(Lcom/zte/engineer/TouchScreenFwload;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 259
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0600e2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zte/engineer/TouchScreenFwload$5;

    invoke-direct {v2, p0}, Lcom/zte/engineer/TouchScreenFwload$5;-><init>(Lcom/zte/engineer/TouchScreenFwload;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 265
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 266
    const-string v0, "TouchScreenFwload"

    const-string v1, "<<<<<<<<<<touchscreenfwload_en()<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void
.end method

.method public static native touchscreenfwloader(I)Ljava/lang/String;
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "paramView"

    .prologue
    .line 270
    const-string v0, "TouchScreenFwload"

    const-string v1, ">>>>>>>>>>onClick()>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string v0, "TouchScreenFwload"

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

    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 283
    :goto_0
    :pswitch_0
    const-string v0, "TouchScreenFwload"

    const-string v1, "<<<<<<<<<<onClick()<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void

    .line 274
    :pswitch_1
    invoke-direct {p0}, Lcom/zte/engineer/TouchScreenFwload;->touchscreenfwload_en()V

    goto :goto_0

    .line 278
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emode_status"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 279
    const-string v0, "TouchScreenFwload"

    const-string v1, "---------emode_status = 0---------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x7f080083
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "paramBundle"

    .prologue
    .line 179
    const-string v0, "TouchScreenFwload"

    const-string v1, ">>>>>>>>>>onCreate()>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-super {p0, p1}, Lcom/zte/engineer/EmActivity;->onCreate(Landroid/os/Bundle;)V

    .line 181
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 182
    const v0, 0x7f080082

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->explainInfo:Landroid/widget/TextView;

    .line 183
    const v0, 0x7f080084

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->update_or_not:Landroid/widget/TextView;

    .line 184
    const v0, 0x7f080083

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->btn1:Landroid/widget/Button;

    .line 185
    const v0, 0x7f080085

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->btn2:Landroid/widget/Button;

    .line 186
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->btn1:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->btn2:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const-string v0, "TouchScreenFwload"

    const-string v1, "<<<<<<<<<<onCreate()<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 237
    const-string v0, "TouchScreenFwload"

    const-string v1, ">>>>>>>>>>onDestroy()>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-super {p0}, Lcom/zte/engineer/EmActivity;->onDestroy()V

    .line 239
    const-string v0, "TouchScreenFwload"

    const-string v1, "<<<<<<<<<<onDestroy()<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 241
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 229
    const-string v0, "TouchScreenFwload"

    const-string v1, ">>>>>>>>>>onPause()>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 231
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emode_status"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 232
    const-string v0, "TouchScreenFwload"

    const-string v1, "---------emode_status = 0---------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v0, "TouchScreenFwload"

    const-string v1, "<<<<<<<<<<onPause()<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 192
    const-string v0, "TouchScreenFwload"

    const-string v1, ">>>>>>>>>>onResume()>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-super {p0}, Lcom/zte/engineer/EmActivity;->onResume()V

    .line 194
    iput-boolean v5, p0, Lcom/zte/engineer/EmActivity;->Ishield:Z

    .line 195
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emode_status"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 196
    const-string v0, "TouchScreenFwload"

    const-string v1, "---------emode_status = 1---------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->explainInfo:Landroid/widget/TextView;

    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 199
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->explainInfo:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0600d7

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0600d8

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0600d9

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0600da

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0600db

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0600dc

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    const-string v0, "TouchScreenFwload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---------Settings.System.getInt(TPUpdateRebootCount)---------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "TPUpdateRebootCount"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "RbootForTPUpdate"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/engineer/TouchScreenFwload;->mRbootForTPUpdate:Z

    .line 204
    const-string v0, "TouchScreenFwload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----mRbootForTPUpdate ============----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/zte/engineer/TouchScreenFwload;->mRbootForTPUpdate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-boolean v0, p0, Lcom/zte/engineer/TouchScreenFwload;->mRbootForTPUpdate:Z

    if-eqz v0, :cond_0

    .line 206
    invoke-direct {p0, v5}, Lcom/zte/engineer/TouchScreenFwload;->setAirplaneModeOn(Z)V

    .line 207
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "TPUpdateRebootCount"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zte/engineer/TouchScreenFwload;->mTPUpdateRebootCount:I

    .line 208
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "TPUpdateRebootCount"

    iget v2, p0, Lcom/zte/engineer/TouchScreenFwload;->mTPUpdateRebootCount:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 209
    const-string v0, "TouchScreenFwload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----mTPUpdateRebootCount ============----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/engineer/TouchScreenFwload;->mTPUpdateRebootCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 211
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->rebootForTPUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 225
    :goto_0
    return-void

    .line 214
    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/zte/engineer/TouchScreenFwload;->touchscreenfwloader(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->isNewVersion:Ljava/lang/String;

    .line 215
    const-string v0, "TouchScreenFwload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----isNewVersion = touchscreenfwloader(3)----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/engineer/TouchScreenFwload;->isNewVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->isNewVersion:Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->update_or_not:Landroid/widget/TextView;

    const v1, 0x7f0600dd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->btn1:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 224
    :goto_1
    const-string v0, "TouchScreenFwload"

    const-string v1, "<<<<<<<<<<onResume()<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->update_or_not:Landroid/widget/TextView;

    const v1, 0x7f0600de

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwload;->btn1:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1
.end method
