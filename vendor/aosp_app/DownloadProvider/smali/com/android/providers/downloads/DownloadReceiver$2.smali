.class Lcom/android/providers/downloads/DownloadReceiver$2;
.super Ljava/lang/Thread;
.source "DownloadReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/DownloadReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/DownloadReceiver;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/DownloadReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadReceiver$2;->this$0:Lcom/android/providers/downloads/DownloadReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 118
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/net/NetworkUtils;->resetConnectionByUid(I)I

    .line 119
    return-void
.end method
