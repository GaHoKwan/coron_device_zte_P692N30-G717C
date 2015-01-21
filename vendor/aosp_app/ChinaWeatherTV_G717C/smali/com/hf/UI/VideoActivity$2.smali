.class Lcom/hf/UI/VideoActivity$2;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/VideoActivity;->showNotifyDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/VideoActivity;

.field private final synthetic val$dialog:Lcom/hf/UI/HFDialog;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hf/UI/VideoActivity;Ljava/lang/String;Lcom/hf/UI/HFDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/VideoActivity$2;->this$0:Lcom/hf/UI/VideoActivity;

    iput-object p2, p0, Lcom/hf/UI/VideoActivity$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/hf/UI/VideoActivity$2;->val$dialog:Lcom/hf/UI/HFDialog;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 255
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/hf/UI/VideoActivity$2;->this$0:Lcom/hf/UI/VideoActivity;

    const-class v2, Lcom/hf/UI/VideoPlayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "video_url"

    iget-object v2, p0, Lcom/hf/UI/VideoActivity$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    iget-object v1, p0, Lcom/hf/UI/VideoActivity$2;->this$0:Lcom/hf/UI/VideoActivity;

    invoke-virtual {v1, v0}, Lcom/hf/UI/VideoActivity;->startActivity(Landroid/content/Intent;)V

    .line 258
    iget-object v1, p0, Lcom/hf/UI/VideoActivity$2;->val$dialog:Lcom/hf/UI/HFDialog;

    invoke-virtual {v1}, Lcom/hf/UI/HFDialog;->cancel()V

    .line 259
    return-void
.end method
