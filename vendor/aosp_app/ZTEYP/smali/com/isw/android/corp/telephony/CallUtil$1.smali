.class Lcom/isw/android/corp/telephony/CallUtil$1;
.super Ljava/lang/Thread;
.source "CallUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isw/android/corp/telephony/CallUtil;->killRival()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 698
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 701
    const/16 v3, 0xbb8

    .line 702
    .local v3, peroid:I
    :try_start_0
    div-int/lit16 v2, v3, 0xc8

    .line 703
    .local v2, loop:I
    :goto_0
    if-gtz v2, :cond_0

    .line 714
    .end local v2           #loop:I
    :goto_1
    return-void

    .line 704
    .restart local v2       #loop:I
    :cond_0
    const-wide/16 v4, 0xc8

    invoke-static {v4, v5}, Lcom/isw/android/corp/telephony/CallUtil$1;->sleep(J)V

    .line 705
    add-int/lit8 v2, v2, -0x1

    .line 706
    invoke-static {}, Lcom/isw/android/corp/util/KillProcess;->restartApp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 709
    .end local v2           #loop:I
    :catch_0
    move-exception v1

    .line 710
    .local v1, ex:Ljava/lang/Exception;
    invoke-static {}, Lcom/isw/android/corp/telephony/CallUtil;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ex: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 711
    .end local v1           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 712
    .local v0, err:Ljava/lang/Error;
    invoke-static {}, Lcom/isw/android/corp/telephony/CallUtil;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "err: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
