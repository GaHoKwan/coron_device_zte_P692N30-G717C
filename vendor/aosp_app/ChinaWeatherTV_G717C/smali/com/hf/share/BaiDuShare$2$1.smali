.class Lcom/hf/share/BaiDuShare$2$1;
.super Lcom/baidu/pcs/BaiduPCSStatusListener;
.source "BaiDuShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/share/BaiDuShare$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hf/share/BaiDuShare$2;


# direct methods
.method constructor <init>(Lcom/hf/share/BaiDuShare$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/share/BaiDuShare$2$1;->this$1:Lcom/hf/share/BaiDuShare$2;

    .line 96
    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSStatusListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(JJ)V
    .locals 0
    .parameter "bytes"
    .parameter "total"

    .prologue
    .line 100
    return-void
.end method
