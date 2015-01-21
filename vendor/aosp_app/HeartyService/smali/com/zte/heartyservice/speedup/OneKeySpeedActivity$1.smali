.class Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$1;
.super Ljava/lang/Object;
.source "OneKeySpeedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->eventInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$1;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$1;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->onBackPressed()V

    .line 267
    return-void
.end method
