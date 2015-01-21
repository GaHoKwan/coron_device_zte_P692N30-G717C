.class Lcom/zte/update/ui/pop/AboutPop$1;
.super Ljava/lang/Object;
.source "AboutPop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/update/ui/pop/AboutPop;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/update/ui/pop/AboutPop;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/zte/update/ui/pop/AboutPop;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/zte/update/ui/pop/AboutPop$1;->this$0:Lcom/zte/update/ui/pop/AboutPop;

    iput-object p2, p0, Lcom/zte/update/ui/pop/AboutPop$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zte/update/ui/pop/AboutPop$1;->this$0:Lcom/zte/update/ui/pop/AboutPop;

    iget-object v1, p0, Lcom/zte/update/ui/pop/AboutPop$1;->val$context:Landroid/content/Context;

    #calls: Lcom/zte/update/ui/pop/AboutPop;->startCheck(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/zte/update/ui/pop/AboutPop;->access$000(Lcom/zte/update/ui/pop/AboutPop;Landroid/content/Context;)V

    .line 32
    return-void
.end method
