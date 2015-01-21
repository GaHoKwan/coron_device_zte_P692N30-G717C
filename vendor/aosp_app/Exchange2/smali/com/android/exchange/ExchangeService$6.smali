.class Lcom/android/exchange/ExchangeService$6;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService;->stopServiceThreads()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/ExchangeService;

.field final synthetic val$svc:Lcom/android/exchange/AbstractSyncService;


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService;Lcom/android/exchange/AbstractSyncService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2163
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$6;->this$0:Lcom/android/exchange/ExchangeService;

    iput-object p2, p0, Lcom/android/exchange/ExchangeService$6;->val$svc:Lcom/android/exchange/AbstractSyncService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2166
    iget-object v0, p0, Lcom/android/exchange/ExchangeService$6;->val$svc:Lcom/android/exchange/AbstractSyncService;

    invoke-virtual {v0}, Lcom/android/exchange/AbstractSyncService;->stop()V

    .line 2167
    return-void
.end method
