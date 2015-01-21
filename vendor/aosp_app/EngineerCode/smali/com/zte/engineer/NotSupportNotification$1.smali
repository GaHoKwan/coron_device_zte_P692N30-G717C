.class Lcom/zte/engineer/NotSupportNotification$1;
.super Ljava/lang/Object;
.source "NotSupportNotification.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/engineer/NotSupportNotification;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/NotSupportNotification;


# direct methods
.method constructor <init>(Lcom/zte/engineer/NotSupportNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/zte/engineer/NotSupportNotification$1;->this$0:Lcom/zte/engineer/NotSupportNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/engineer/NotSupportNotification$1;->this$0:Lcom/zte/engineer/NotSupportNotification;

    #calls: Lcom/zte/engineer/NotSupportNotification;->finishActivity()V
    invoke-static {v0}, Lcom/zte/engineer/NotSupportNotification;->access$000(Lcom/zte/engineer/NotSupportNotification;)V

    .line 42
    return-void
.end method
