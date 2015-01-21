.class Lcom/mediatek/connectivity/CdsSocketActivity$1;
.super Ljava/lang/Object;
.source "CdsSocketActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/connectivity/CdsSocketActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/connectivity/CdsSocketActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/connectivity/CdsSocketActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsSocketActivity$1;->this$0:Lcom/mediatek/connectivity/CdsSocketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsSocketActivity$1;->this$0:Lcom/mediatek/connectivity/CdsSocketActivity;

    #calls: Lcom/mediatek/connectivity/CdsSocketActivity;->listSocketPort()V
    invoke-static {v0}, Lcom/mediatek/connectivity/CdsSocketActivity;->access$000(Lcom/mediatek/connectivity/CdsSocketActivity;)V

    .line 106
    return-void
.end method
