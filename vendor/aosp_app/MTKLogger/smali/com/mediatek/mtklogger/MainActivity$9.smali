.class Lcom/mediatek/mtklogger/MainActivity$9;
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
    .line 570
    iput-object p1, p0, Lcom/mediatek/mtklogger/MainActivity$9;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 573
    const-string v0, "MTKLogger/MainActivity"

    const-string v1, "Taglog button is clicked!"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity$9;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #calls: Lcom/mediatek/mtklogger/MainActivity;->tagLogs()V
    invoke-static {v0}, Lcom/mediatek/mtklogger/MainActivity;->access$1500(Lcom/mediatek/mtklogger/MainActivity;)V

    .line 575
    return-void
.end method
