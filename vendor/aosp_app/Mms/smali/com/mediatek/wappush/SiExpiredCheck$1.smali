.class Lcom/mediatek/wappush/SiExpiredCheck$1;
.super Ljava/lang/Thread;
.source "SiExpiredCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wappush/SiExpiredCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wappush/SiExpiredCheck;


# direct methods
.method constructor <init>(Lcom/mediatek/wappush/SiExpiredCheck;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/mediatek/wappush/SiExpiredCheck$1;->this$0:Lcom/mediatek/wappush/SiExpiredCheck;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 146
    :goto_0
    iget-object v1, p0, Lcom/mediatek/wappush/SiExpiredCheck$1;->this$0:Lcom/mediatek/wappush/SiExpiredCheck;

    #getter for: Lcom/mediatek/wappush/SiExpiredCheck;->mIsStarted:Z
    invoke-static {v1}, Lcom/mediatek/wappush/SiExpiredCheck;->access$000(Lcom/mediatek/wappush/SiExpiredCheck;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/mediatek/wappush/SiExpiredCheck$1;->this$0:Lcom/mediatek/wappush/SiExpiredCheck;

    #getter for: Lcom/mediatek/wappush/SiExpiredCheck;->mIsPaused:Z
    invoke-static {v1}, Lcom/mediatek/wappush/SiExpiredCheck;->access$100(Lcom/mediatek/wappush/SiExpiredCheck;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/mediatek/wappush/SiExpiredCheck$1;->this$0:Lcom/mediatek/wappush/SiExpiredCheck;

    #getter for: Lcom/mediatek/wappush/SiExpiredCheck;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/wappush/SiExpiredCheck;->access$200(Lcom/mediatek/wappush/SiExpiredCheck;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/wappush/SiExpiredCheck;->siExpiredCheck(Landroid/content/Context;)V

    .line 151
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mediatek/wappush/SiExpiredCheck;->access$300()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/mediatek/wappush/SiExpiredCheck$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 156
    :cond_1
    return-void
.end method
