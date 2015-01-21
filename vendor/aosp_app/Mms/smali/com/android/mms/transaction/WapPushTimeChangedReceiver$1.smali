.class Lcom/android/mms/transaction/WapPushTimeChangedReceiver$1;
.super Ljava/lang/Thread;
.source "WapPushTimeChangedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/WapPushTimeChangedReceiver;->onReceiveTimeChange(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/WapPushTimeChangedReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/WapPushTimeChangedReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/mms/transaction/WapPushTimeChangedReceiver$1;->this$0:Lcom/android/mms/transaction/WapPushTimeChangedReceiver;

    iput-object p2, p0, Lcom/android/mms/transaction/WapPushTimeChangedReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/WapPushTimeChangedReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/wappush/SiExpiredCheck;->onTimeChanged(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "Mms/WapPush"

    const-string v2, "SiExpiredCheck.onTimeChanged Error!"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
