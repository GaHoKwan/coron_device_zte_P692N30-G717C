.class Lcom/hf/share/BaiDuShare$2$2;
.super Ljava/lang/Object;
.source "BaiDuShare.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field private final synthetic val$result:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Lcom/hf/share/BaiDuShare$2;Ljava/lang/StringBuffer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/share/BaiDuShare$2$2;->this$1:Lcom/hf/share/BaiDuShare$2;

    iput-object p2, p0, Lcom/hf/share/BaiDuShare$2$2;->val$result:Ljava/lang/StringBuffer;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/hf/share/BaiDuShare$2$2;->this$1:Lcom/hf/share/BaiDuShare$2;

    #getter for: Lcom/hf/share/BaiDuShare$2;->this$0:Lcom/hf/share/BaiDuShare;
    invoke-static {v0}, Lcom/hf/share/BaiDuShare$2;->access$0(Lcom/hf/share/BaiDuShare$2;)Lcom/hf/share/BaiDuShare;

    move-result-object v0

    iget-object v0, v0, Lcom/hf/share/BaiDuShare;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/hf/share/BaiDuShare$2$2;->val$result:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hf/utils/ToastUtil;->getToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 119
    return-void
.end method
