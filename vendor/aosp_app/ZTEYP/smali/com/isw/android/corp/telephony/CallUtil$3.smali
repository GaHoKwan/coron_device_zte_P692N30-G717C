.class Lcom/isw/android/corp/telephony/CallUtil$3;
.super Ljava/lang/Thread;
.source "CallUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isw/android/corp/telephony/CallUtil;->displayPush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$displayUrl:Ljava/lang/String;

.field private final synthetic val$pushText:Ljava/lang/String;

.field private final synthetic val$pushUrl:Ljava/lang/String;

.field private final synthetic val$pushdelay:I


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput p1, p0, Lcom/isw/android/corp/telephony/CallUtil$3;->val$pushdelay:I

    iput-object p2, p0, Lcom/isw/android/corp/telephony/CallUtil$3;->val$pushText:Ljava/lang/String;

    iput-object p3, p0, Lcom/isw/android/corp/telephony/CallUtil$3;->val$pushUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/isw/android/corp/telephony/CallUtil$3;->val$displayUrl:Ljava/lang/String;

    .line 1116
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1119
    :try_start_0
    iget v3, p0, Lcom/isw/android/corp/telephony/CallUtil$3;->val$pushdelay:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 1120
    const-wide/16 v3, 0x7d0

    invoke-static {v3, v4}, Lcom/isw/android/corp/telephony/CallUtil$3;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    .line 1125
    :goto_0
    const/4 v2, 0x0

    .line 1128
    .local v2, id:I
    :try_start_1
    invoke-static {}, Lcom/isw/android/corp/util/WinksTools;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object v3

    .line 1127
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    .line 1133
    :goto_1
    :try_start_2
    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    .line 1134
    new-instance v4, Lcom/isw/android/corp/bean/CompanyPushBean;

    iget-object v5, p0, Lcom/isw/android/corp/telephony/CallUtil$3;->val$pushText:Ljava/lang/String;

    iget-object v6, p0, Lcom/isw/android/corp/telephony/CallUtil$3;->val$pushUrl:Ljava/lang/String;

    .line 1135
    iget-object v7, p0, Lcom/isw/android/corp/telephony/CallUtil$3;->val$displayUrl:Ljava/lang/String;

    .line 1134
    invoke-direct {v4, v5, v6, v7}, Lcom/isw/android/corp/bean/CompanyPushBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    #calls: Lcom/isw/android/corp/telephony/CallUtil;->setSWUpdateNotification(Landroid/content/Context;Lcom/isw/android/corp/bean/CompanyPushBean;I)V
    invoke-static {v3, v4, v2}, Lcom/isw/android/corp/telephony/CallUtil;->access$4(Landroid/content/Context;Lcom/isw/android/corp/bean/CompanyPushBean;I)V

    .line 1142
    .end local v2           #id:I
    :goto_2
    return-void

    .line 1122
    :cond_0
    iget v3, p0, Lcom/isw/android/corp/telephony/CallUtil$3;->val$pushdelay:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/isw/android/corp/telephony/CallUtil$3;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1137
    :catch_0
    move-exception v1

    .line 1138
    .local v1, ex:Ljava/lang/Exception;
    invoke-static {}, Lcom/isw/android/corp/telephony/CallUtil;->access$0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[displayPush] ex: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1129
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v2       #id:I
    :catch_1
    move-exception v1

    .line 1130
    .restart local v1       #ex:Ljava/lang/Exception;
    const v2, 0xbc238

    goto :goto_1

    .line 1139
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #id:I
    :catch_2
    move-exception v0

    .line 1140
    .local v0, err:Ljava/lang/Error;
    invoke-static {}, Lcom/isw/android/corp/telephony/CallUtil;->access$0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[displayPush] err: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
