.class Lcom/zte/engineer/EmActivity$1;
.super Ljava/util/TimerTask;
.source "EmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/EmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/EmActivity;


# direct methods
.method constructor <init>(Lcom/zte/engineer/EmActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/zte/engineer/EmActivity$1;->this$0:Lcom/zte/engineer/EmActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zte/engineer/EmActivity$1;->this$0:Lcom/zte/engineer/EmActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 24
    return-void
.end method
