.class Lcom/mediatek/connectivity/CdsPsControlActivity$1;
.super Ljava/lang/Object;
.source "CdsPsControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/connectivity/CdsPsControlActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/connectivity/CdsPsControlActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/connectivity/CdsPsControlActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsPsControlActivity$1;->this$0:Lcom/mediatek/connectivity/CdsPsControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsPsControlActivity$1;->this$0:Lcom/mediatek/connectivity/CdsPsControlActivity;

    const/4 v1, 0x1

    #calls: Lcom/mediatek/connectivity/CdsPsControlActivity;->setFirewallEnabled(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/connectivity/CdsPsControlActivity;->access$000(Lcom/mediatek/connectivity/CdsPsControlActivity;Z)V

    .line 126
    return-void
.end method
