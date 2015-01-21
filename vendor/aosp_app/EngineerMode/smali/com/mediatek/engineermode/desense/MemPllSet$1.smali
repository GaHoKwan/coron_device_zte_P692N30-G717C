.class Lcom/mediatek/engineermode/desense/MemPllSet$1;
.super Ljava/lang/Object;
.source "MemPllSet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/desense/MemPllSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/desense/MemPllSet;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/desense/MemPllSet;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mediatek/engineermode/desense/MemPllSet$1;->this$0:Lcom/mediatek/engineermode/desense/MemPllSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/MemPllSet$1;->this$0:Lcom/mediatek/engineermode/desense/MemPllSet;

    #getter for: Lcom/mediatek/engineermode/desense/MemPllSet;->mBtn200to266:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mediatek/engineermode/desense/MemPllSet;->access$000(Lcom/mediatek/engineermode/desense/MemPllSet;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/MemPllSet$1;->this$0:Lcom/mediatek/engineermode/desense/MemPllSet;

    const/4 v1, 0x0

    #calls: Lcom/mediatek/engineermode/desense/MemPllSet;->doConvert(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/desense/MemPllSet;->access$100(Lcom/mediatek/engineermode/desense/MemPllSet;Z)V

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/MemPllSet$1;->this$0:Lcom/mediatek/engineermode/desense/MemPllSet;

    #getter for: Lcom/mediatek/engineermode/desense/MemPllSet;->mBtn266to200:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mediatek/engineermode/desense/MemPllSet;->access$200(Lcom/mediatek/engineermode/desense/MemPllSet;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/MemPllSet$1;->this$0:Lcom/mediatek/engineermode/desense/MemPllSet;

    const/4 v1, 0x1

    #calls: Lcom/mediatek/engineermode/desense/MemPllSet;->doConvert(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/desense/MemPllSet;->access$100(Lcom/mediatek/engineermode/desense/MemPllSet;Z)V

    goto :goto_0
.end method
