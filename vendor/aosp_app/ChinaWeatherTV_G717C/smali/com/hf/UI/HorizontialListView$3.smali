.class Lcom/hf/UI/HorizontialListView$3;
.super Ljava/lang/Object;
.source "HorizontialListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/HorizontialListView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/HorizontialListView;


# direct methods
.method constructor <init>(Lcom/hf/UI/HorizontialListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/HorizontialListView$3;->this$0:Lcom/hf/UI/HorizontialListView;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/hf/UI/HorizontialListView$3;->this$0:Lcom/hf/UI/HorizontialListView;

    invoke-virtual {v0}, Lcom/hf/UI/HorizontialListView;->requestLayout()V

    .line 194
    return-void
.end method
