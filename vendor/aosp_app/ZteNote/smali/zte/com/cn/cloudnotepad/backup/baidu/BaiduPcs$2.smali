.class Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$2;
.super Lcom/baidu/pcs/BaiduPCSStatusListener;
.source "BaiduPcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->doDownloadFile(Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$2;->this$0:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    .line 192
    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSStatusListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(JJ)V
    .locals 1
    .parameter "bytes"
    .parameter "total"

    .prologue
    .line 197
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$2;->this$0:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    #getter for: Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->mListener:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnProgressBaiduStatusListener;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->access$1(Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;)Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnProgressBaiduStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$2;->this$0:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    #getter for: Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->mListener:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnProgressBaiduStatusListener;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->access$1(Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;)Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnProgressBaiduStatusListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnProgressBaiduStatusListener;->onProgress(JJ)V

    .line 200
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$2;->this$0:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    iput-wide p1, v0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->mBytes:J

    .line 201
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$2;->this$0:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    iput-wide p3, v0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->mTotal:J

    .line 202
    return-void
.end method

.method public progressInterval()J
    .locals 4

    .prologue
    .line 206
    const-string v0, "wangna"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "progressInterval"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/baidu/pcs/BaiduPCSStatusListener;->progressInterval()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-wide/16 v0, 0x64

    return-wide v0
.end method