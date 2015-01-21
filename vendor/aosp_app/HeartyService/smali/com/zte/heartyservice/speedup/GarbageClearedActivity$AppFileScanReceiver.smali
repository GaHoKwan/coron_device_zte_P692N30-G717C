.class Lcom/zte/heartyservice/speedup/GarbageClearedActivity$AppFileScanReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GarbageClearedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/GarbageClearedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppFileScanReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$AppFileScanReceiver;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;Lcom/zte/heartyservice/speedup/GarbageClearedActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1045
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$AppFileScanReceiver;-><init>(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$AppFileScanReceiver;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->listViewInit()V

    .line 1049
    return-void
.end method
