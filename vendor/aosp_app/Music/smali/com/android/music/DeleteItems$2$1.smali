.class Lcom/android/music/DeleteItems$2$1;
.super Ljava/lang/Object;
.source "DeleteItems.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/DeleteItems$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/music/DeleteItems$2;


# direct methods
.method constructor <init>(Lcom/android/music/DeleteItems$2;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/music/DeleteItems$2$1;->this$1:Lcom/android/music/DeleteItems$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/music/DeleteItems$2$1;->this$1:Lcom/android/music/DeleteItems$2;

    iget-object v0, v0, Lcom/android/music/DeleteItems$2;->this$0:Lcom/android/music/DeleteItems;

    #calls: Lcom/android/music/DeleteItems;->doDeleteItems()V
    invoke-static {v0}, Lcom/android/music/DeleteItems;->access$100(Lcom/android/music/DeleteItems;)V

    .line 141
    return-void
.end method
