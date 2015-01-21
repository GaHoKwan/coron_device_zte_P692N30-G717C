.class Lcom/mediatek/mtklogger/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mtklogger/MainActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/MainActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 562
    iput-object p1, p0, Lcom/mediatek/mtklogger/MainActivity$8;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 565
    const-string v0, "MTKLogger/MainActivity"

    const-string v1, "ClearLogs button is clicked!"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity$8;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #calls: Lcom/mediatek/mtklogger/MainActivity;->clearLogs()V
    invoke-static {v0}, Lcom/mediatek/mtklogger/MainActivity;->access$1400(Lcom/mediatek/mtklogger/MainActivity;)V

    .line 567
    return-void
.end method
