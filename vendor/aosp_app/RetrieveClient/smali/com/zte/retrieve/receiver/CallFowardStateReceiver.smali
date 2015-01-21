.class public Lcom/zte/retrieve/receiver/CallFowardStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CallFowardStateReceiver.java"


# static fields
.field public static final CCF:Ljava/lang/String; = "06"

.field public static final CF:Ljava/lang/String; = "05"


# instance fields
.field private context:Landroid/content/Context;

.field private hasSent:Z

.field private resultcode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/zte/retrieve/receiver/CallFowardStateReceiver;)I
    .locals 1
    .parameter

    .prologue
    .line 20
    iget v0, p0, Lcom/zte/retrieve/receiver/CallFowardStateReceiver;->resultcode:I

    return v0
.end method

.method static synthetic access$1(Lcom/zte/retrieve/receiver/CallFowardStateReceiver;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/retrieve/receiver/CallFowardStateReceiver;->sendStatusReport(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private sendStatusReport(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 10
    .parameter "IMEI"
    .parameter "actionType"
    .parameter "rescode"
    .parameter "phoneNum"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/zte/retrieve/receiver/CallFowardStateReceiver;->hasSent:Z

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hasSent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/zte/retrieve/receiver/CallFowardStateReceiver;->hasSent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 66
    :goto_0
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/retrieve/receiver/CallFowardStateReceiver;->hasSent:Z

    .line 55
    new-instance v7, Lcom/zte/retrieve/cloud/CommunicationModule;

    iget-object v0, p0, Lcom/zte/retrieve/receiver/CallFowardStateReceiver;->context:Landroid/content/Context;

    invoke-direct {v7, v0}, Lcom/zte/retrieve/cloud/CommunicationModule;-><init>(Landroid/content/Context;)V

    .line 56
    .local v7, mCommunicationModule:Lcom/zte/retrieve/cloud/CommunicationModule;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IMEI="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ActionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",rescode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getInstance()Lcom/zte/retrieve/cloud/PRConnectUrl;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/retrieve/receiver/CallFowardStateReceiver;->context:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getCallandSMSForwardUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 58
    .local v9, url:Ljava/lang/String;
    const/4 v8, -0x3

    .line 60
    .local v8, rc:I
    :try_start_0
    invoke-virtual {v7, v9}, Lcom/zte/retrieve/cloud/CommunicationModule;->communication(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v6

    .line 63
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    const/4 v8, -0x3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resultcode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "means:network error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 25
    iput-object p1, p0, Lcom/zte/retrieve/receiver/CallFowardStateReceiver;->context:Landroid/content/Context;

    .line 26
    new-instance v2, Lcom/zte/retrieve/utils/PhoneInfo;

    invoke-direct {v2, p1}, Lcom/zte/retrieve/utils/PhoneInfo;-><init>(Landroid/content/Context;)V

    .line 27
    .local v2, telephoneInfo:Lcom/zte/retrieve/utils/PhoneInfo;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->getCfOperInstr()Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, instr:Ljava/lang/String;
    const-string v4, "callForwardSetted"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "05"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 30
    iput v5, p0, Lcom/zte/retrieve/receiver/CallFowardStateReceiver;->resultcode:I

    .line 36
    :goto_0
    invoke-virtual {v2}, Lcom/zte/retrieve/utils/PhoneInfo;->unRegisterCFListener()V

    .line 37
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/zte/retrieve/receiver/CallFowardStateReceiver$1;

    invoke-direct {v4, p0, v1}, Lcom/zte/retrieve/receiver/CallFowardStateReceiver$1;-><init>(Lcom/zte/retrieve/receiver/CallFowardStateReceiver;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 45
    .local v3, thread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 47
    return-void

    .line 31
    .end local v3           #thread:Ljava/lang/Thread;
    :cond_0
    const-string v4, "callForwardOffset"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "06"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 32
    iput v5, p0, Lcom/zte/retrieve/receiver/CallFowardStateReceiver;->resultcode:I

    goto :goto_0

    .line 34
    :cond_1
    const/4 v4, 0x1

    iput v4, p0, Lcom/zte/retrieve/receiver/CallFowardStateReceiver;->resultcode:I

    goto :goto_0
.end method
