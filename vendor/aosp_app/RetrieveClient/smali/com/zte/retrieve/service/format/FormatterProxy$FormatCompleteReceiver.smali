.class Lcom/zte/retrieve/service/format/FormatterProxy$FormatCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FormatterProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/service/format/FormatterProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatCompleteReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/service/format/FormatterProxy;


# direct methods
.method private constructor <init>(Lcom/zte/retrieve/service/format/FormatterProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/zte/retrieve/service/format/FormatterProxy$FormatCompleteReceiver;->this$0:Lcom/zte/retrieve/service/format/FormatterProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/retrieve/service/format/FormatterProxy;Lcom/zte/retrieve/service/format/FormatterProxy$FormatCompleteReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/zte/retrieve/service/format/FormatterProxy$FormatCompleteReceiver;-><init>(Lcom/zte/retrieve/service/format/FormatterProxy;)V

    return-void
.end method

.method private clearMissedCallsStatus()V
    .locals 3

    .prologue
    .line 113
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 114
    .local v1, telService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 116
    :try_start_0
    const-string v2, "clear missed calls success"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 117
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "Failed to clear missed calls notification due to remote exception"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->e(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 123
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "Telephony service is null, can\'t call "

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendBroadcast(I)V
    .locals 3
    .parameter "result"

    .prologue
    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "formatting SD is "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v1, "success"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 146
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.retrieve.ALL_FORMAT_COMPLETE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    iget-object v1, p0, Lcom/zte/retrieve/service/format/FormatterProxy$FormatCompleteReceiver;->this$0:Lcom/zte/retrieve/service/format/FormatterProxy;

    #getter for: Lcom/zte/retrieve/service/format/FormatterProxy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/retrieve/service/format/FormatterProxy;->access$2(Lcom/zte/retrieve/service/format/FormatterProxy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 149
    return-void

    .line 145
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const-string v1, "fail"

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    const/4 v3, 0x1

    .line 81
    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 83
    :pswitch_0
    iget-object v1, p0, Lcom/zte/retrieve/service/format/FormatterProxy$FormatCompleteReceiver;->this$0:Lcom/zte/retrieve/service/format/FormatterProxy;

    #setter for: Lcom/zte/retrieve/service/format/FormatterProxy;->mIsAvailableVirtual:Z
    invoke-static {v1, v3}, Lcom/zte/retrieve/service/format/FormatterProxy;->access$0(Lcom/zte/retrieve/service/format/FormatterProxy;Z)V

    .line 84
    iget-object v1, p0, Lcom/zte/retrieve/service/format/FormatterProxy$FormatCompleteReceiver;->this$0:Lcom/zte/retrieve/service/format/FormatterProxy;

    const-string v2, "result"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/zte/retrieve/service/format/FormatterProxy;->mResultVirtual:I
    invoke-static {v1, v2}, Lcom/zte/retrieve/service/format/FormatterProxy;->access$1(Lcom/zte/retrieve/service/format/FormatterProxy;I)V

    .line 86
    new-instance v1, Lcom/zte/retrieve/service/format/Formatter;

    iget-object v2, p0, Lcom/zte/retrieve/service/format/FormatterProxy$FormatCompleteReceiver;->this$0:Lcom/zte/retrieve/service/format/FormatterProxy;

    #getter for: Lcom/zte/retrieve/service/format/FormatterProxy;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/zte/retrieve/service/format/FormatterProxy;->access$2(Lcom/zte/retrieve/service/format/FormatterProxy;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Lcom/zte/retrieve/service/format/Formatter;-><init>(Landroid/content/Context;I)V

    .line 87
    iget-object v1, p0, Lcom/zte/retrieve/service/format/FormatterProxy$FormatCompleteReceiver;->this$0:Lcom/zte/retrieve/service/format/FormatterProxy;

    #setter for: Lcom/zte/retrieve/service/format/FormatterProxy;->mIsAvailableExternal:Z
    invoke-static {v1, v5}, Lcom/zte/retrieve/service/format/FormatterProxy;->access$3(Lcom/zte/retrieve/service/format/FormatterProxy;Z)V

    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v1, p0, Lcom/zte/retrieve/service/format/FormatterProxy$FormatCompleteReceiver;->this$0:Lcom/zte/retrieve/service/format/FormatterProxy;

    #setter for: Lcom/zte/retrieve/service/format/FormatterProxy;->mIsAvailableExternal:Z
    invoke-static {v1, v3}, Lcom/zte/retrieve/service/format/FormatterProxy;->access$3(Lcom/zte/retrieve/service/format/FormatterProxy;Z)V

    .line 91
    iget-object v1, p0, Lcom/zte/retrieve/service/format/FormatterProxy$FormatCompleteReceiver;->this$0:Lcom/zte/retrieve/service/format/FormatterProxy;

    const-string v2, "result"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/zte/retrieve/service/format/FormatterProxy;->mResultExternal:I
    invoke-static {v1, v2}, Lcom/zte/retrieve/service/format/FormatterProxy;->access$4(Lcom/zte/retrieve/service/format/FormatterProxy;I)V

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, result:I
    iget-object v1, p0, Lcom/zte/retrieve/service/format/FormatterProxy$FormatCompleteReceiver;->this$0:Lcom/zte/retrieve/service/format/FormatterProxy;

    #getter for: Lcom/zte/retrieve/service/format/FormatterProxy;->mResultVirtual:I
    invoke-static {v1}, Lcom/zte/retrieve/service/format/FormatterProxy;->access$5(Lcom/zte/retrieve/service/format/FormatterProxy;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zte/retrieve/service/format/FormatterProxy$FormatCompleteReceiver;->this$0:Lcom/zte/retrieve/service/format/FormatterProxy;

    #getter for: Lcom/zte/retrieve/service/format/FormatterProxy;->mResultExternal:I
    invoke-static {v1}, Lcom/zte/retrieve/service/format/FormatterProxy;->access$6(Lcom/zte/retrieve/service/format/FormatterProxy;)I

    move-result v1

    if-nez v1, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Lcom/zte/retrieve/service/format/FormatterProxy$FormatCompleteReceiver;->clearMissedCallsStatus()V

    .line 105
    :goto_1
    invoke-direct {p0, v0}, Lcom/zte/retrieve/service/format/FormatterProxy$FormatCompleteReceiver;->sendBroadcast(I)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/zte/retrieve/service/format/FormatterProxy$FormatCompleteReceiver;->this$0:Lcom/zte/retrieve/service/format/FormatterProxy;

    #getter for: Lcom/zte/retrieve/service/format/FormatterProxy;->mResultVirtual:I
    invoke-static {v1}, Lcom/zte/retrieve/service/format/FormatterProxy;->access$5(Lcom/zte/retrieve/service/format/FormatterProxy;)I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 99
    iget-object v1, p0, Lcom/zte/retrieve/service/format/FormatterProxy$FormatCompleteReceiver;->this$0:Lcom/zte/retrieve/service/format/FormatterProxy;

    #getter for: Lcom/zte/retrieve/service/format/FormatterProxy;->mResultExternal:I
    invoke-static {v1}, Lcom/zte/retrieve/service/format/FormatterProxy;->access$6(Lcom/zte/retrieve/service/format/FormatterProxy;)I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 100
    :cond_1
    const-string v1, "Requires android.permission.MOUNT_UNMOUNT_FILESYSTEMS permission"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 101
    const/4 v0, -0x2

    goto :goto_1

    .line 103
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
