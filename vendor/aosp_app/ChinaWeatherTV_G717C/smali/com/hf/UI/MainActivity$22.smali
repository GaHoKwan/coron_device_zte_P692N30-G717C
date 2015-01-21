.class Lcom/hf/UI/MainActivity$22;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/MainActivity;->addTabs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/MainActivity;


# direct methods
.method constructor <init>(Lcom/hf/UI/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/MainActivity$22;->this$0:Lcom/hf/UI/MainActivity;

    .line 1239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "tabId"

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/hf/UI/MainActivity$22;->this$0:Lcom/hf/UI/MainActivity;

    const v1, 0x7f080128

    invoke-virtual {v0, v1}, Lcom/hf/UI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/hf/UI/MainActivity$22;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->mRefreshButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/hf/UI/MainActivity;->access$2(Lcom/hf/UI/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1249
    :goto_0
    return-void

    .line 1247
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/MainActivity$22;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->mRefreshButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/hf/UI/MainActivity;->access$2(Lcom/hf/UI/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method
