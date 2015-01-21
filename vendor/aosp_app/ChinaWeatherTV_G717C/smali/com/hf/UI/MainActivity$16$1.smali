.class Lcom/hf/UI/MainActivity$16$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/MainActivity$16;->onPostExecute(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hf/UI/MainActivity$16;


# direct methods
.method constructor <init>(Lcom/hf/UI/MainActivity$16;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/MainActivity$16$1;->this$1:Lcom/hf/UI/MainActivity$16;

    .line 859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 862
    iget-object v2, p0, Lcom/hf/UI/MainActivity$16$1;->this$1:Lcom/hf/UI/MainActivity$16;

    #getter for: Lcom/hf/UI/MainActivity$16;->linkUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/hf/UI/MainActivity$16;->access$0(Lcom/hf/UI/MainActivity$16;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 863
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 864
    .local v0, it:Landroid/content/Intent;
    iget-object v2, p0, Lcom/hf/UI/MainActivity$16$1;->this$1:Lcom/hf/UI/MainActivity$16;

    #getter for: Lcom/hf/UI/MainActivity$16;->this$0:Lcom/hf/UI/MainActivity;
    invoke-static {v2}, Lcom/hf/UI/MainActivity$16;->access$1(Lcom/hf/UI/MainActivity$16;)Lcom/hf/UI/MainActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/hf/UI/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 865
    return-void
.end method
