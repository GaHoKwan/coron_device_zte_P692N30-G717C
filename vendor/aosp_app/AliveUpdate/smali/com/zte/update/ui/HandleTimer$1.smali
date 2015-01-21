.class Lcom/zte/update/ui/HandleTimer$1;
.super Ljava/lang/Object;
.source "HandleTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/update/ui/HandleTimer;->start(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/update/ui/HandleTimer;

.field final synthetic val$period:J


# direct methods
.method constructor <init>(Lcom/zte/update/ui/HandleTimer;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/zte/update/ui/HandleTimer$1;->this$0:Lcom/zte/update/ui/HandleTimer;

    iput-wide p2, p0, Lcom/zte/update/ui/HandleTimer$1;->val$period:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zte/update/ui/HandleTimer$1;->this$0:Lcom/zte/update/ui/HandleTimer;

    #getter for: Lcom/zte/update/ui/HandleTimer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/zte/update/ui/HandleTimer;->access$000(Lcom/zte/update/ui/HandleTimer;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v1, p0, Lcom/zte/update/ui/HandleTimer$1;->val$period:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 67
    iget-object v0, p0, Lcom/zte/update/ui/HandleTimer$1;->this$0:Lcom/zte/update/ui/HandleTimer;

    invoke-virtual {v0}, Lcom/zte/update/ui/HandleTimer;->onTimeHandle()V

    .line 68
    return-void
.end method
