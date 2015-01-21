.class Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler$1;
.super Ljava/lang/Object;
.source "MultiModemLog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler$1;->this$1:Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 540
    return-void
.end method
