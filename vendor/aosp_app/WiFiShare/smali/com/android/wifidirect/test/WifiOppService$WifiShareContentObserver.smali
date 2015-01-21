.class Lcom/android/wifidirect/test/WifiOppService$WifiShareContentObserver;
.super Landroid/database/ContentObserver;
.source "WifiOppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifidirect/test/WifiOppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiShareContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wifidirect/test/WifiOppService;


# direct methods
.method public constructor <init>(Lcom/android/wifidirect/test/WifiOppService;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppService$WifiShareContentObserver;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 50
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 54
    const-string v0, "wifiDirect_Service"

    const-string v1, "ContentObserver received notification"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$WifiShareContentObserver;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #calls: Lcom/android/wifidirect/test/WifiOppService;->updateFromProvider()V
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppService;->access$000(Lcom/android/wifidirect/test/WifiOppService;)V

    .line 56
    return-void
.end method
