.class Lcom/hf/share/BaiDuShare$2;
.super Ljava/lang/Object;
.source "BaiDuShare.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/share/BaiDuShare;->uploadFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/share/BaiDuShare;


# direct methods
.method constructor <init>(Lcom/hf/share/BaiDuShare;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/share/BaiDuShare$2;->this$0:Lcom/hf/share/BaiDuShare;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/hf/share/BaiDuShare$2;)Lcom/hf/share/BaiDuShare;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/hf/share/BaiDuShare$2;->this$0:Lcom/hf/share/BaiDuShare;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 87
    iget-object v6, p0, Lcom/hf/share/BaiDuShare$2;->this$0:Lcom/hf/share/BaiDuShare;

    iget-object v6, v6, Lcom/hf/share/BaiDuShare;->mContext:Landroid/content/Context;

    const v7, 0x7f08014b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, servicePath:Ljava/lang/String;
    new-instance v2, Lcom/baidu/pcs/BaiduPCSClient;

    iget-object v6, p0, Lcom/hf/share/BaiDuShare$2;->this$0:Lcom/hf/share/BaiDuShare;

    #getter for: Lcom/hf/share/BaiDuShare;->mToken:Ljava/lang/String;
    invoke-static {v6}, Lcom/hf/share/BaiDuShare;->access$2(Lcom/hf/share/BaiDuShare;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/baidu/pcs/BaiduPCSClient;-><init>(Ljava/lang/String;)V

    .line 90
    .local v2, mClient:Lcom/baidu/pcs/BaiduPCSClient;
    invoke-virtual {v2, v4}, Lcom/baidu/pcs/BaiduPCSClient;->makeDir(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v1

    .line 94
    .local v1, infoResponse:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd_HH-mm-ss"

    sget-object v8, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v7, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, time:Ljava/lang/String;
    const-string v6, "%s.jpg"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, imageName:Ljava/lang/String;
    iget-object v6, p0, Lcom/hf/share/BaiDuShare$2;->this$0:Lcom/hf/share/BaiDuShare;

    #getter for: Lcom/hf/share/BaiDuShare;->mPath:Ljava/lang/String;
    invoke-static {v6}, Lcom/hf/share/BaiDuShare;->access$3(Lcom/hf/share/BaiDuShare;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/hf/share/BaiDuShare$2$1;

    invoke-direct {v8, p0}, Lcom/hf/share/BaiDuShare$2$1;-><init>(Lcom/hf/share/BaiDuShare$2;)V

    invoke-virtual {v2, v6, v7, v8}, Lcom/baidu/pcs/BaiduPCSClient;->uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v1

    .line 102
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 103
    .local v3, result:Ljava/lang/StringBuffer;
    iget-object v6, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v6, v6, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v6, :cond_1

    .line 104
    iget-object v6, p0, Lcom/hf/share/BaiDuShare$2;->this$0:Lcom/hf/share/BaiDuShare;

    iget-object v6, v6, Lcom/hf/share/BaiDuShare;->mContext:Landroid/content/Context;

    const v7, 0x7f08010f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 114
    iget-object v6, p0, Lcom/hf/share/BaiDuShare$2;->this$0:Lcom/hf/share/BaiDuShare;

    #getter for: Lcom/hf/share/BaiDuShare;->mbUiThreadHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/hf/share/BaiDuShare;->access$4(Lcom/hf/share/BaiDuShare;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/hf/share/BaiDuShare$2$2;

    invoke-direct {v7, p0, v3}, Lcom/hf/share/BaiDuShare$2$2;-><init>(Lcom/hf/share/BaiDuShare$2;Ljava/lang/StringBuffer;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    :cond_0
    return-void

    .line 106
    :cond_1
    iget-object v6, p0, Lcom/hf/share/BaiDuShare$2;->this$0:Lcom/hf/share/BaiDuShare;

    iget-object v6, v6, Lcom/hf/share/BaiDuShare;->mContext:Landroid/content/Context;

    const v7, 0x7f080110

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 108
    iget-object v7, p0, Lcom/hf/share/BaiDuShare$2;->this$0:Lcom/hf/share/BaiDuShare;

    iget-object v7, v7, Lcom/hf/share/BaiDuShare;->mContext:Landroid/content/Context;

    const v8, 0x7f080111

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 109
    iget-object v7, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v7, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 110
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 111
    iget-object v7, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v7, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
